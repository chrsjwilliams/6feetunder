using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WordSpawner : MonoBehaviour
{

   

    [SerializeField] private string sentenceToSpawn;

    public List<string> pasredWords { get; private set; }

    public List<Word> spawnedWords { get; private set; }

    public void Init()
    {
        spawnedWords = new List<Word>();
    }

    public void ParseString(string str)
    {
        pasredWords = new List<string>(str.Split(' '));
    }

    public void SpawnWords()
    {
        // Have an object that stores all the words and each word's letter
        foreach(string word in pasredWords)
        {
            Word newWord = Instantiate(Services.Prefabs.Word);
            newWord.name = word;
            // create a word object for each word
            char[] charList = word.ToCharArray();
            newWord.Init(charList);
                // add each letter to its word
                

                //  if possible have each letter appear one by one
                //  maybe have a cool effect idk
            
        }
    }
   
}
