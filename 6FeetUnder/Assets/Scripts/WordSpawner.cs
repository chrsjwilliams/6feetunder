using System.Collections;
using System.IO;
using System.Collections.Generic;
using UnityEngine;

public class WordSpawner : MonoBehaviour
{

   /*
    *   TODO:   Spawn sentences after title screen
    *           Have sentenes appear after one falls
    * 
    */ 

    [SerializeField]
    public float spawnTimer {get; private set; }

    [SerializeField] private string sentenceToSpawn;

    public List<string> sentenceCollection;
    public List<string> parsedWords { get; private set; }

    public List<Word> spawnedWords { get; private set; }

    [SerializeField]
    private Transform spawnPosition;


    public void Init()
    {
        spawnedWords = new List<Word>();
        spawnTimer = 1.0f;
        PopulateSentenceCollection();
    }

    private void PopulateSentenceCollection()
    {
        string text = Resources.Load<TextAsset>("SentenceCollection").text;
 
     char[] separators = { ',', ';', '|','\n' };
     sentenceCollection = new List<string>(text.Split(separators));
    }

    public void ParseString(string str)
    {
        parsedWords = new List<string>(str.Split(' '));
    }

    public void SpawnWords(float ftSize ,Vector3 offset,bool titleWords = false)
    {
        // Have an object that stores all the words and each word's letter
        for(int i = 0; i < parsedWords.Count; i++)
        {
            Word newWord = Instantiate(Services.Prefabs.Word);
            spawnedWords.Add(newWord);
            newWord.name = parsedWords[i];
            // create a word object for each word
            char[] charList = parsedWords[i].ToCharArray();

            Vector3 wordPos = new Vector3(spawnPosition.localPosition.x, spawnPosition.localPosition.y - (45 * i), spawnPosition.localPosition.z) + offset;

            newWord.Init(charList, wordPos,ftSize, titleWords);
                // add each letter to its word
                

                //  if possible have each letter appear one by one
                //  maybe have a cool effect idk
            
        }
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            ParseString(sentenceCollection[1]);
            SpawnWords(75, Vector3.zero);
        }
        if(Input.GetKeyDown(KeyCode.S))
        {
            ParseString("6feet");
            Vector3 titleOffset1 = new Vector3(30, 0, 0);
            SpawnWords(200, titleOffset1, true);

            ParseString("under");
            Vector3 titleOffset2 = new Vector3(30, -75, 0);
            SpawnWords(200, titleOffset2, true);

            ParseString("start");
            Vector3 offset = new Vector3(55, -320, 0);
            SpawnWords(150, offset,true);
        }
    }

}
