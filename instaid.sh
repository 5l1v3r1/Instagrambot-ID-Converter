read -p $'\e[1;92m Liste mit Usernamen: \e[0m' wl_pass
wl_pass="${wl_pass}"

count_pass=$(wc -l $wl_pass | cut -d " " -f1)

for fn in `cat $wl_pass`; do
  python main.py $fn
done
