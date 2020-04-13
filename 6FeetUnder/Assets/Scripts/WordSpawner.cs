using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WordSpawner : MonoBehaviour
{

   /*
    *   TODO:   Spawn sentences that stay inside the screen.
    *           Title screen transition to game scene
    * 
    */ 

    [SerializeField] private string sentenceToSpawn;

    public List<string> parsedWords { get; private set; }

    public List<Word> spawnedWords { get; private set; }

    [SerializeField]
    private Transform spawnPosition;


    public void Init()
    {
        spawnedWords = new List<Word>();
    }

    public void ParseString(string str)
    {
        parsedWords = new List<string>(str.Split(' '));
    }

    public void SpawnWords()
    {
        // Have an object that stores all the words and each word's letter
        for(int i = 0; i < parsedWords.Count; i++)
        {
            Word newWord = Instantiate(Services.Prefabs.Word);
            newWord.name = parsedWords[i];
            // create a word object for each word
            char[] charList = parsedWords[i].ToCharArray();

            Vector3 wordPos = new Vector3(spawnPosition.localPosition.x, spawnPosition.localPosition.y - (45 * i), spawnPosition.localPosition.z);

            newWord.Init(charList, wordPos,75);
                // add each letter to its word
                

                //  if possible have each letter appear one by one
                //  maybe have a cool effect idk
            
        }
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            ParseString("cannot do anything right");
            SpawnWords();
        }
    }

}
