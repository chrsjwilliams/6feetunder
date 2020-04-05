using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstructionSceneScript : Scene<TransitionData>
{
    [SerializeField] private float SECONDS_TO_WAIT = 0.5f;
    TaskManager _tm = new TaskManager();



    internal override void OnEnter(TransitionData data)
    {
        //instructions = GameObject.Find("Instructions").GetComponent<Text>();

        //Color instructColor = instructions.color;
        //Color clickColor = new Color(106f/256f, 171f/256f, 173f/256f);


        
        Services.GameManager.SetDuration(0);
    }

    internal override void OnExit()
    {

    }

    private void StartGame()
    {

    }

    private void TitleTransition()
    {

    }

    private void ChangeScene()
    {
        Services.Scenes.Swap<GameSceneScript>();
    }

    // Update is called once per frame
    void Update ()
    {
        _tm.Update();
        if (Input.GetMouseButtonDown(0) || Input.GetMouseButtonDown(1))
        {
            Services.AudioManager.PlayClip(Clips.CLICK);
            StartGame();
        }
    }
}
