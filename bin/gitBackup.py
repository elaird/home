#!/usr/bin/env python

import os,time

dest = "/home/elaird/backup/"
srcUrl = "git://github.com"
repos = [("elaird", "ra1stats.git"),
         ("elaird", "etc.git"),
         ]

for u,r in repos :
    src = "%s/%s/%s"%(srcUrl, u, r)
    cmds = ["cd %s"%dest]
    if not os.path.exists("%s/%s"%(dest, r)) :
        cmds += ["git clone --mirror %s"%src]
    cmds += ["cd %s"%r,
             "git fetch", #"git remote update"#?
             "cd %s"%dest,
             "tar -cjf %s.%d.tbz %s"%(r, int(time.time()), r),
            ]

    cmd = " && ".join(cmds)
    print cmd
    os.system(cmd)
