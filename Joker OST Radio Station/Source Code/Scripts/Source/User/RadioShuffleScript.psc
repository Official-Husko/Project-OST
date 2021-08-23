Scriptname RadioShuffleScript extends Quest Conditional

Int Property iCurrentTrack = 0 Auto Conditional
Int Property iPrevTrack = 0 Auto Conditional
Int Property iPrevPrevTrack = 0 Auto Conditional

Function Randomize()

iCurrentTrack = Utility.RandomInt(0, 31)

if (iCurrentTrack == iPrevTrack)
self.Randomize()

elseif (iCurrentTrack == iPrevPrevTrack)
iPrevPrevTrack == iCurrentTrack
self.Randomize()

else

iPrevPrevTrack = iPrevTrack
iPrevTrack = iCurrentTrack

Endif
EndFunction