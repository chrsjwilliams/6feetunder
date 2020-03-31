using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Word : MonoBehaviour
{
    private const float UNSELECETED_SCALE = 0.75f;
    private const float SELECTED_SCALE = 1f;
    private const string LETTER_MODEL_PATH = "Models/Letters/";
    public List<GameObject> letters;

    private Vector3 unselectedScale = new Vector3(UNSELECETED_SCALE, UNSELECETED_SCALE, UNSELECETED_SCALE);
    private Vector3 selectedScale = new Vector3(SELECTED_SCALE, SELECTED_SCALE, SELECTED_SCALE);


    public void Init(char[] charArray)
    {
        //  Spawn letter task
        //  if possible have each letter appear one by one
        //  maybe have a cool effect idk
        
        for(int i = 0; i < charArray.Length; i++)
        {
            GameObject letter = Instantiate(Resources.Load<GameObject>(LETTER_MODEL_PATH + charArray[i]));
            letter.transform.parent = transform;
            letter.transform.localRotation = Quaternion.Euler(new Vector3(0, 180, 0));
            letter.name = charArray[i] + "";
            letter.transform.localPosition = new Vector3(-65 + (50 * i), 0, 0);
            //letter.transform.localScale = new Vector3(UNSELECETED_SCALE, UNSELECETED_SCALE, UNSELECETED_SCALE);
            letter.GetComponent<MeshCollider>().convex = true;
            letter.AddComponent<Rigidbody>();

            letters.Add(letter);
        }
        transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);


    }

    // Setup touch input for words
}
