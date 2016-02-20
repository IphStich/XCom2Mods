class SWMT_XComGameReplicationInfo extends XComGameReplicationInfo;

simulated function DoRemoteEvent(name evt, optional bool bRunOnClient)
{
	// Prevent the cinematic transition to the armory main menu from the pre-mission screen
	if (evt == 'PreM_GoToSoldier') return;

	super.DoRemoteEvent (evt, bRunOnClient);
}