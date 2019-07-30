from i3pystatus import Status
status = Status()

##Settings
#clock
status.register("clock",format="%a %-d %b %X KW%V",)
#network
status.register("network",interface="enp0s31f6",format_up="{v4cidr}",)
#keyboard locks
status.register("keyboard_locks",format="{caps}{num}")

##excecute
status.run()
