alias ls="ls -F -G --color=auto"
alias newpass="dd if=/dev/urandom count=1 bs=1000 2>/dev/null | uuencode -m - | head -n 5 | tail -n 1 | cut -c-8"
#alias newpass="sort -R /usr/share/dict/words | head -n 200 | awk 'length <= 5' | head -n 3 | tr '\n' '3' | tail -c +3; echo"
alias vimr='vim -R'
alias rot13='tr a-zA-Z n-za-mN-ZA-M'
alias cls='clear; ls'
