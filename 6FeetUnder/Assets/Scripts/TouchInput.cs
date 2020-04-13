using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TouchInput : MonoBehaviour
{
    public LayerMask touchInputMask;

    public const string ON_TOUCH_DOWN       = "OnTouchDown";
    public const string ON_TOUCH_STAY       = "OnTouchStay";
    public const string ON_TOUCH_MOVE       = "OnTouchMove";
    public const string ON_TOUCH_UP         = "OnTouchUp";
    public const string ON_TOUCH_CANCELED   = "OnTouchCanceled";

    private List<GameObject> touchList = new List<GameObject>();
    private GameObject[] touchesOld;
    private RaycastHit hit;

    public bool mouseInputHeld { get; protected set; }

    void Update()
    {


#if UNITY_EDITOR
        /*
        if (Input.GetMouseButton(0) || Input.GetMouseButtonDown(0) || Input.GetMouseButtonUp(0))
        {
            
            touchesOld = new GameObject[touchList.Count];
            touchList.CopyTo(touchesOld);
            touchList.Clear();

            Ray ray = Services.GameManager.MainCamera.ScreenPointToRay(Input.mousePosition);

            
            if (Physics.Raycast(ray, out hit, touchInputMask))
            {
                GameObject recipient = hit.transform.gameObject;

                touchList.Add(recipient);

                if (Input.GetMouseButtonDown(0))
                {
                    if (mouseInputHeld)
                    {
                        Debug.Log("Dood");

                        recipient.SendMessage(ON_TOUCH_MOVE, hit.point, SendMessageOptions.DontRequireReceiver);
                    }
                    else
                    {
                        recipient.SendMessage(ON_TOUCH_DOWN, hit.point, SendMessageOptions.DontRequireReceiver);
                    }

                    mouseInputHeld = true;

                }
                if (Input.GetMouseButton(0))
                {

                    Debug.Log("Loui");

                    //recipient.SendMessage(ON_TOUCH_STAY, hit.point, SendMessageOptions.DontRequireReceiver);
                    if (mouseInputHeld)
                    {
                        recipient.SendMessage(ON_TOUCH_MOVE, hit.point, SendMessageOptions.DontRequireReceiver);
                    }

                } 
                if (Input.GetMouseButtonUp(0))
                {
                    Debug.Log("Nices");
                    mouseInputHeld = false;
                    recipient.SendMessage(ON_TOUCH_UP, hit.point, SendMessageOptions.DontRequireReceiver);

                }

            }

            
            foreach (GameObject gObject in touchesOld)
            {
                if (!touchList.Contains(gObject))
                {
                    gObject.SendMessage(ON_TOUCH_UP, hit.point, SendMessageOptions.DontRequireReceiver);
                }
            }
        }
        */
#else
        if (Input.touchCount > 0)
        {
            touchesOld = new GameObject[touchList.Count];
            touchList.CopyTo(touchesOld);
            touchList.Clear();

            foreach (Touch touch in Input.touches)
            {
                Ray ray = Services.GameManager.MainCamera.ScreenPointToRay(touch.position);
                

                if (Physics.Raycast(ray, out hit, touchInputMask))
                {
                    GameObject recipient = hit.transform.gameObject;

                    touchList.Add(recipient);

                    switch (touch.phase)
                    {
                        case TouchPhase.Began:
                            recipient.SendMessage(ON_TOUCH_DOWN, hit.point, SendMessageOptions.DontRequireReceiver);
                            break;
                        case TouchPhase.Stationary:
                            recipient.SendMessage(ON_TOUCH_STAY, hit.point, SendMessageOptions.DontRequireReceiver);
                            break;
                        case TouchPhase.Moved:
                            recipient.SendMessage(ON_TOUCH_MOVE, hit.point, SendMessageOptions.DontRequireReceiver);
                            break;
                        case TouchPhase.Ended:
                            recipient.SendMessage(ON_TOUCH_UP, hit.point, SendMessageOptions.DontRequireReceiver);
                            break;
                        case TouchPhase.Canceled:
                            recipient.SendMessage(ON_TOUCH_CANCELED, hit.point, SendMessageOptions.DontRequireReceiver);
                            break;
                        default:
                            break;
                    }

                }
                
            }
            foreach (GameObject gObject in touchesOld)
            {
                if (!touchList.Contains(gObject))
                {
                    gObject.SendMessage(ON_TOUCH_UP, hit.point, SendMessageOptions.DontRequireReceiver);
                }
            }
        }
#endif
    }
}
