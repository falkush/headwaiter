--save state must be done on the minigame explanation page
--hold down the TAB button while this is running for fast speed

i=0;
sframe=0;
fwait1=false;
mov1=0;
mov2=0;
mov3=0;
mov4=0;
mov5=0;
mov6=0;
mov7=0;
mov8=0;
mov9=0;

count0=0;
count1=0;
count2=0;
count3=0;
count4=0;
count5=0;
count6=0;
count7=0;
count8=0;

reset=false;

function onScriptStart()
end

function onScriptCancel()
end

function onScriptUpdate()
	i=i+1
		
	if i==1 then LoadState(true,1)
	elseif i==500  then SaveState(true,1)
	elseif i>1000 and i < 1500 then PressButton("Start")
	elseif i>1600 and i<3000 and i%2==0 then PressButton("B")
	elseif i>3000 then

	memtmp=ReadValue8(0x4660F5)

	if mov1==0 then
		if memtmp == 6 then mov1=1 end
		if memtmp == 5 then mov1=2 end
	elseif mov1==1 and mov2==0 then
		if i%2==0 then PressButton("A") end
		if memtmp == 5 then mov2=1 end
		if memtmp == 4 then mov2=2 end
	elseif mov1==2 and mov2==0 then
		if i%2==0 then PressButton("A") end
		if memtmp == 4 then mov2=1 end
		if memtmp == 3 then mov2=2 end
	elseif mov1==2 and mov2==1 and mov3==0 then
		if memtmp == 3 then mov3=1 end
		if memtmp == 2 then mov3=2 end
	elseif mov1==1 and mov2==1 and mov3==0 then
		if memtmp == 4 then mov3=1 end
		if memtmp == 3 then mov3=2 end
	elseif mov1==2 and mov2==1 and mov3==2 then
		count8=count8+1
		reset=true
	elseif mov1==2 and mov2==1 and mov3==1 and mov4==0 then
		if i%2==0 then PressButton("A") end
		if memtmp == 2 then mov4=1 end
		if memtmp == 1 then mov4=2 end
	elseif mov1==1 and mov2==1 and mov3==1 and mov4==0 then
		if i%2==0 then PressButton("B") end
		if memtmp == 3 then mov4=1 end
		if memtmp == 2 then mov4=2 end
	elseif mov1==1 and mov2==1 and mov3==2 and mov4==0 then
		if i%2==0 then PressButton("A") end
		if memtmp == 2 then mov4=1 end
		if memtmp == 1 then mov4=2 end
	elseif mov1==1 and mov2==1 and mov3==1 and mov4==1 and mov5==0 then
		if memtmp == 2 then
			count0=count0+1
			reset=true
		end
		if memtmp == 1 then
			count1=count1+1
			reset=true
		end
	elseif mov1==1 and mov2==1 and mov3==1 and mov4==2 and mov5==0 then
		if memtmp == 1 then
			count2=count2+1
			reset=true
		end
		if memtmp == 0 then
			count3=count3+1
			reset=true
		end
	elseif mov1==1 and mov2==1 and mov3==2 and mov4==1 and mov5==0 then
		if memtmp == 1 then
			count4=count4+1
			reset=true
		end
		if memtmp == 0 then
			count5=count5+1
			reset=true
		end
	elseif mov1==2 and mov2==1 and mov3==1 and mov4==1 and mov5==0 then
		if memtmp == 1 then
			count6=count6+1
			reset=true
		end
		if memtmp == 0 then
			count7=count7+1
			reset=true
		end

	end
	


	if reset == true then
		MsgBox("c0:" .. count0)
		MsgBox("c1:" .. count1)
		MsgBox("c2:" .. count2)
		MsgBox("c3:" .. count3)
		MsgBox("c4:" .. count4)
		MsgBox("c5:" .. count5)
		MsgBox("c6:" .. count6)
		MsgBox("c7:" .. count7)
		MsgBox("c8:" .. count8)
		i=0
		mov1=0
		mov2=0
		mov3=0
		mov4=0
		mov5=0
		mov6=0
		mov7=0
		mov8=0
		mov9=0
		reset=false
	end
	end
end

function onStateLoaded()

end

function onStateSaved()

end
