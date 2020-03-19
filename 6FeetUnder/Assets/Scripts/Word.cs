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


    public void Init(char[] c)
    {
        //  Spawn letter task
        //  if possible have each letter appear one by one
        //  maybe have a cool effect idk

        
    }

    // Setup touch input for words
}
