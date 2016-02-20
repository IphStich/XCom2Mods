class SWMT_XComHQPresentationLayer extends XComHQPresentationLayer;

// Instantly transition into the armory main menu
function UIArmory_MainMenu(StateObjectReference UnitRef, optional name DispEvent, optional name SoldSpawnEvent, optional name NavBackEvent, optional name HideEvent, optional name RemoveEvent, optional bool bInstant = false)
{
	if(ScreenStack.IsNotInStack(class'UIArmory_MainMenu'))
		UIArmory_MainMenu(ScreenStack.Push(Spawn(class'UIArmory_MainMenu', self), Get3DMovie())).InitArmory(UnitRef, , SoldSpawnEvent, , HideEvent, RemoveEvent, true);
}

// Instantly transition to any named location
reliable client function CAMLookAtNamedLocation( string strLocation, optional float fInterpTime = 2, optional bool bSkipBaseViewTransition )
{
	super.CAMLookAtNamedLocation (strLocation, fInterpTime * 0.001f, bSkipBaseViewTransition);
}

// Instantly transition to any of the tiles
reliable client function CAMLookAtHQTile( int x, int y, optional float fInterpTime = 2 )
{
	super.CAMLookAtHQTile (x, y, fInterpTime * 0.001f);
}