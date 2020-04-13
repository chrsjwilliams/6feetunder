using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectDragger : MonoBehaviour
{
    private Vector3 mOffset;
    private float mZCoord;

    [SerializeField]
    private Word word;

    void OnTouchDown(Vector3 point)
    {
        mZCoord = Camera.main.WorldToScreenPoint(transform.transform.position).z;
        Vector3 mousePoint = Input.mousePosition;
        mousePoint.z = mZCoord;



        mOffset = transform.transform.position - point;

        foreach (GameObject ltr in word.letters)
        {
            ltr.transform.parent = transform;
        }
    }

    void OnTouchMove(Vector3 point)
    {
        transform.position = new Vector2(point.x, point.y);
    }

    void OnTouchUp()
    {

        Debug.Log("UP");
        foreach (GameObject ltr in word.letters)
        {
            //ltr.transform.localScale = new Vector3( ltr.transform.localScale.x, 
            //                                        ltr.transform.localScale.y,
            //                                        1);
            ltr.transform.parent = word.transform;
            ltr.GetComponent<Rigidbody>().useGravity = true;

        }
    }

    
    private void OnMouseDown()
    {
        mZCoord = Camera.main.WorldToScreenPoint(transform.transform.position).z;
        mOffset = transform.position - GetMouseWorldPos();
        word.transform.parent = transform;
        foreach(GameObject ltr in word.letters)
        {
            //ltr.transform.parent = transform;
            //ltr.transform.localScale = new Vector3(0.2f, 1f, 0.5f);
        }
    }

    private Vector3 GetMouseWorldPos()
    {
        Vector3 mousePoint = Input.mousePosition;
        mousePoint.z = mZCoord;

        return Camera.main.ScreenToWorldPoint(mousePoint);
    }

    private void OnMouseDrag()
    {
        transform.position = GetMouseWorldPos() + mOffset;
        Vector3 offset = new Vector3((-word.wordTouchBox.transform.localScale.x * 1)/ 4f, 0, 0);
        word.transform.position = transform.position + offset;

    }

    private void OnMouseUp()
    {
        foreach(GameObject ltr in word.letters)
        {
            //ltr.transform.localScale = new Vector3( ltr.transform.localScale.x, 
            //                                        ltr.transform.localScale.y,
            //                                        1);
            ltr.transform.parent = word.transform;
            ltr.transform.localScale = new Vector3(100, 100, 100);
            ltr.GetComponent<Rigidbody>().useGravity = true;

        }
    }
    
}
