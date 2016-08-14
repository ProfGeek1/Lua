local CATEGORY_NAME = "ProfGeek1's Custom ULX Commands V1.1"

--------------SendToSky--------------------
function ulx.sky( calling_ply, target_plys )
	for i=1, #target_plys do
		target_plys[ i ]:SetHealth( 1 )
		target_plys[ i ]:SetVelocity( Vector(0,0,10000) )
	end
	
	ulx.fancyLogAdmin( calling_ply, "#A has sent player(s)to the sky: #T", target_plys )
end
local sky = ulx.command( CATEGORY_NAME, "ulx skysend", ulx.sky, "!skysend" )
sky:addParam{ type=ULib.cmds.PlayersArg }
sky:defaultAccess( ULib.ACCESS_SUPERADMIN )
sky:help( "Sends target(s) high in the air. - Made by ProfGeek1" )

-------------FBring----------------------
function ulx.fbring( calling_ply, target_plys )
	for i=1, #target_plys do
		target_plys[ i ]:Lock()
		RunConsoleCommand( "ulx", "send", target_plys[i]:Name(), calling_ply:Name() )
	end
	
	ulx.fancyLogAdmin( calling_ply, "#A has brought and frozen player(s): #T", target_plys )
end
local fbring = ulx.command( CATEGORY_NAME, "ulx fbring", ulx.fbring, "!fbring" )
fbring:addParam{ type=ULib.cmds.PlayersArg }
fbring:defaultAccess( ULib.ACCESS_ADMIN )
fbring:help( "Brings and freezes targets. - Made by ProfGeek1" )

-----------SetRunSpeed------------------
function ulx.runspeed( calling_ply, target_plys, amount )
	for i=1, #target_plys do
		target_plys[ i ]:SetRunSpeed( amount )
	end
	ulx.fancyLogAdmin( calling_ply, "#A set the speed of #T to #i", target_plys, amount )
end
local runspeed = ulx.command( CATEGORY_NAME, "ulx runspeed", ulx.runspeed, "!runspeed" )
runspeed:addParam{ type=ULib.cmds.PlayersArg }
runspeed:addParam{ type=ULib.cmds.NumArg, min=1, max=2000, hint="runspeed", ULib.cmds.round }
runspeed:defaultAccess( ULib.ACCESS_SUPERADMIN)
runspeed:help( "Set your target's run speed. - Made by ProfGeek1" )

-----------SetJumpHeight------------------
function ulx.jumpheight( calling_ply, target_plys, amount )
	for i=1, #target_plys do
		target_plys[ i ]:SetJumpPower( amount )
	end
	ulx.fancyLogAdmin( calling_ply, "#A set the jump height of #T to #i", target_plys, amount )
end
local runspeed = ulx.command( CATEGORY_NAME, "ulx jumpheight", ulx.jumpheight, "!jumpheight" )
runspeed:addParam{ type=ULib.cmds.PlayersArg }
runspeed:addParam{ type=ULib.cmds.NumArg, min=1, max=2000, hint="runspeed", ULib.cmds.round }
runspeed:defaultAccess( ULib.ACCESS_SUPERADMIN)
runspeed:help( "Set your target's run speed. - Made by ProfGeek1" )

-------Weps in vehicle-------
function ulx.vehiclewepallow( calling_ply, target_plys )
	for i=1, #target_plys do
		target_plys[ i ]:SetAllowWeaponsInVehicle( true )
	end

	ulx.fancyLogAdmin( calling_ply, "Allowed the target(s) to use weapons in vehicles:", target_plys )
end
local vehiclewepallow = ulx.command( CATEGORY_NAME, "ulx vehiclewepallow", ulx.vehiclewepallow, "!vehiclewepallow" )
vehiclewepallow:addParam{ type=ULib.cmds.PlayersArg }
vehiclewepallow:defaultAccess( ULib.ACCESS_SUPERADMIN )
vehiclewepallow:help( "Allows targets to use weapons in vehicles. - Made by ProfGeek1" )

-------No Weps in vehicle-------
function ulx.vehiclewepdisallow( calling_ply, target_plys )
	for i=1, #target_plys do
		target_plys[ i ]:SetAllowWeaponsInVehicle( false )
	end

	ulx.fancyLogAdmin( calling_ply, "Disallowed the target(s) to use weapons in vehicles:", target_plys )
end
local vehiclewepallow = ulx.command( CATEGORY_NAME, "ulx vehiclewepdisallow", ulx.vehiclewepdisallow, "!vehiclewepdisallow" )
vehiclewepallow:addParam{ type=ULib.cmds.PlayersArg }
vehiclewepallow:defaultAccess( ULib.ACCESS_SUPERADMIN )
vehiclewepallow:help( "Disallows targets to use weapons in vehicles. - Made by ProfGeek1" )
