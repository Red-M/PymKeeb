import sys

def check_role():
    ret = sys.platform=='NXP IMXRT10XX'
    print('Main: '+str(ret))
    return(ret)

main = check_role()
