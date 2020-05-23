using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Word : MonoBehaviour
{

    private int _touchID = -1;
    private const float UNSELECETED_SCALE = 0.75f;
    private const float SELECTED_SCALE = 1f;
    private const string LETTER_MODEL_PATH = "Models/Letters/";

    public string text { get; private set; }
    public List<GameObject> letters;
    public float fontSize;

    private Vector3 unselectedScale = new Vector3(UNSELECETED_SCALE, UNSELECETED_SCALE, UNSELECETED_SCALE);
    private Vector3 selectedScale = new Vector3(SELECTED_SCALE, SELECTED_SCALE, SELECTED_SCALE);

    [SerializeField]
    public GameObject wordTouchBox;

    public BoxCollider wordCollider;

    public bool isTitleWord { get; private set; }

    private void Start()
    {
        gameObject.layer = LayerMask.NameToLayer("TouchLayer");

    }

    public void Init(char[] charArray, Vector3 pos ,float ftSize, bool titleWord)
    {

        text = new string(charArray);
        isTitleWord = titleWord;
        transform.parent = Services.GameManager.WordHolder.transform;
        transform.localPosition = pos;
        //  Spawn letter task
        //  if possible have each letter appear one by one
        //  maybe have a cool effect idk

        //ListenforInput();
        fontSize = ftSize;

        float xSize = (fontSize * charArray.Length) / 2;
        float ySize = fontSize;

        //wordCollider.size = new Vector3(xSize, 1, 1);
        //wordCollider.center = new Vector3(xSize / 2, -25, 1);

        wordTouchBox.transform.localScale = new Vector3(xSize, ySize, 1);
        wordTouchBox.transform.localPosition = new Vector3(0, fontSize / 2, 0);

        for(int i = 0; i < charArray.Length; i++)
        {
            GameObject letter = Instantiate(Resources.Load<GameObject>(LETTER_MODEL_PATH + charArray[i]));
            letter.transform.parent = transform;
            letter.transform.localRotation = Quaternion.Euler(new Vector3(0, 180, 0));
            letter.name = charArray[i] + "";
            letter.transform.localPosition = new Vector3(fontSize * i * 0.5f , 0, 0);
            letter.transform.localScale = new Vector3(ftSize, ftSize, ftSize);
            letter.GetComponent<MeshCollider>().convex = true;
            letter.AddComponent<Rigidbody>();
            letter.GetComponent<Rigidbody>().useGravity = false;
            letter.AddComponent<Skew>();
            letter.GetComponent<MeshRenderer>().material = Resources.Load<Material>("Materials/Dissolve");
            letters.Add(letter);
        }
        transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);

    }

    public void UseGravity(bool b)
    {

        foreach(GameObject ltr in letters)
        {
            ltr.GetComponent<Rigidbody>().useGravity = b;
        }
    }




    /*
    public void ListenforInput()
    {
        Services.EventManager.Register<TouchDown>(OnTouchDown);
        Services.EventManager.Register<MouseDown>(OnMouseDownEvent);
        _touchID = -1;
    }

    public void HideFromInput()
    {
        Services.EventManager.Unregister<TouchDown>(OnTouchDown);
        Services.EventManager.Unregister<MouseDown>(OnMouseDownEvent);
    }

    public void RemoveAllInputEvents()
    {
        Services.EventManager.Unregister<MouseDown>(OnMouseDownEvent);
        Services.EventManager.Unregister<TouchDown>(OnTouchDown);

        Services.EventManager.Unregister<MouseMove>(OnMouseMoveEvent);
        Services.EventManager.Unregister<TouchMove>(OnTouchMove);

        Services.EventManager.Unregister<MouseUp>(OnMouseUpEvent);
        Services.EventManager.Unregister<TouchUp>(OnTouchUp);

    }

    protected virtual bool IsPointContaintedWithinModel(Vector2 point)
    {
        MeshRenderer mesh = wordTouchBox.GetComponentInChildren<MeshRenderer>();
        Vector3 extents = mesh.bounds.extents;
        Vector2 centerPoint = transform.position;
        //Debug.Log("Extents: " + extents.x);
        //Debug.Log(extents);
        //Debug.Log("Center: " + centerPoint.x);
        Debug.Log("Mas: " + (centerPoint.x - extents.x));
        Debug.Log("Point: " + point.x);
        Debug.Log("Menos: " + (centerPoint.x + extents.x ));
        return point.x >= centerPoint.x - extents.x &&
                point.x <= centerPoint.x + extents.x * 2&&
                point.y >= centerPoint.y - extents.y &&
                point.y <= centerPoint.y + extents.y * 5;
    }

    protected void OnTouchDown(TouchDown e)
    {
        Vector2 touchWorldPos = Services.GameManager.MainCamera.ScreenToWorldPoint(e.touch.position);
        if (IsPointContaintedWithinModel(touchWorldPos) && _touchID == -1)
        {
            _touchID = e.touch.fingerId;
            OnInputDown(touchWorldPos);
        }
    }
   

    protected void OnMouseDownEvent(MouseDown e)
    {
        //Vector3 mouseWorldPos = Services.GameManager.MainCamera.ScreenToWorldPoint(new Vector3(e.mousePos.x,
        //                                                                                       e.mousePos.y,
        //                                                                                       700));
        //if (IsPointContaintedWithinModel(mouseWorldPos))
        //{
        //    OnInputDown(mouseWorldPos);
        //}
    }

    protected void OnInputDown(Vector2 inputPos)
    {
        Debug.Log("Testing");


        Services.EventManager.Unregister<TouchDown>(OnTouchDown);
        Services.EventManager.Unregister<MouseDown>(OnMouseDownEvent);

        Services.EventManager.Register<TouchMove>(OnTouchMove);
        Services.EventManager.Register<TouchUp>(OnTouchUp);
        Services.EventManager.Register<MouseMove>(OnMouseMoveEvent);
        Services.EventManager.Register<MouseUp>(OnMouseUpEvent);
    }

    protected void OnTouchMove(TouchMove e)
    {
        if (e.touch.fingerId == _touchID)
        {
            OnInputDrag(Services.GameManager.MainCamera.ScreenToWorldPoint(e.touch.position));
        }
    }

    protected void OnMouseMoveEvent(MouseMove e)
    {
        OnInputDrag(Services.GameManager.MainCamera.ScreenToWorldPoint(e.mousePos));

    }

    protected void OnInputDrag(Vector2 inputPos)
    {

    }

    protected void OnTouchUp(TouchUp e)
    {
        if (e.touch.fingerId == _touchID)
        {
            OnInputUp();
            _touchID = -1;
        }
    }

    protected void OnMouseUpEvent(MouseUp e)
    {
        OnInputUp();
    }

    protected void OnInputUp()
    {




        Services.EventManager.Unregister<TouchMove>(OnTouchMove);
        Services.EventManager.Unregister<TouchUp>(OnTouchUp);
        Services.EventManager.Unregister<MouseMove>(OnMouseMoveEvent);
        Services.EventManager.Unregister<MouseUp>(OnMouseUpEvent);

        Services.EventManager.Register<TouchDown>(OnTouchDown);
        Services.EventManager.Register<MouseDown>(OnMouseDownEvent);
    }
    */
}
