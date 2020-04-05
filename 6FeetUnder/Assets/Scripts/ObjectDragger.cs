using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectDragger : MonoBehaviour
{
    private Vector3 mOffset;
    private float mZCoord;

    [SerializeField]
    private Word word;

    private void OnMouseDown()
    {
        mZCoord = Camera.main.WorldToScreenPoint(transform.transform.position).z;
        mOffset = transform.transform.position - GetMouseWorldPos();

        foreach(GameObject ltr in word.letters)
        {
            ltr.transform.parent = transform;
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
    }

    private void OnMouseUp()
    {
        foreach(GameObject ltr in word.letters)
        {
            //ltr.transform.localScale = new Vector3( ltr.transform.localScale.x, 
            //                                        ltr.transform.localScale.y,
            //                                        1);
            ltr.transform.parent = word.transform;
            ltr.GetComponent<Rigidbody>().useGravity = true;

        }
    }
}
