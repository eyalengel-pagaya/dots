#!/usr/bin/python

import subprocess
from os import system
from time import sleep


def main():
    dropdowns = {'dropdown_terminal': '',
                 'dropdown_ranger': 'ranger',
                 'dropdown_python': '/usr/bin/python3.6 /usr/bin/ipython',
            }

    while True:
        output = subprocess.run("""wmctrl -l | awk "/dropdown/{print \$4}" | grep -v wmctrl""", shell=True, stdout=subprocess.PIPE)
        output = [i for i in output.stdout.decode().split('\n') if i]
        for i in list(set(dropdowns.keys()) - set(output)):
            if dropdowns[i]:
                system(f"miniterm -t {i} -e '{dropdowns[i]}'")
            else:
                system(f"miniterm -t {i}")

            #  system(f"""i3 'for_window [title="{i}"] width 2500'""")

        sleep(5)


if __name__ == '__main__':
    sleep(2)
    main()

