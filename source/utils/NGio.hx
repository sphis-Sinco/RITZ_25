package utils;

import flixel.util.FlxSignal;
import io.newgrounds.NG;
import io.newgrounds.objects.Medal;
import io.newgrounds.objects.Score;
import io.newgrounds.objects.ScoreBoard;
import io.newgrounds.components.ScoreBoardComponent.Period;
import openfl.display.Stage;

import flixel.FlxG;

/**
 * MADE BY GEOKURELI THE LEGENED GOD HERO MVP
 */
class NGio
{
	
	public static var isLoggedIn:Bool = false;
	public static var scoreboardsLoaded:Bool = false;
	
	public static var boardsByName:Map<String, ScoreBoard> = [];

	public static var ngDataLoaded(default, null):FlxSignal = new FlxSignal();
	public static var ngScoresLoaded(default, null):FlxSignal = new FlxSignal();
	
	public function new(api:String, encKey:String, ?sessionId:String) {
		
		trace('NG new(api: $api, encKey: $encKey, sessionId: $sessionId)');
	}
	
	function onNGLogin():Void
	{
		trace('NG onNGLogin');
	}
	
	// --- MEDALS
	function onNGMedalFetch():Void
	{
		trace('NG onNGMedalFetch');
	}
	
	// --- SCOREBOARDS
	function onNGBoardsFetch():Void
	{
		trace('NG onNGBoardsFetch');
	}
	
	inline static public function unlockMedal(id:Int)
	{
		trace('NG unlockMedal(id: $id)');
	}
}