# ! / b i n / b a s h   - x
# this file -- https://raw.githubusercontent.com/soneups/Countdown/zsh_win10.sh

echo "as of" `date +%d/%m/%Y` 
# A="2021-30-1"
A=$(date +%Y-%d-%m)
B="2021-10-5"
echo $(((`date -jf %Y-%d-%m $B +%s` - `date -jf %Y-%d-%m $A +%s`)/86400))' days until 1809 eos'

# A="2021-30-1"; 
B="2022-10-5";
echo $(((`date -jf %Y-%d-%m $B +%s` - `date -jf %Y-%d-%m $A +%s`)/86400))' days until 1909 eos'

# A="2021-30-1"
B="2023-9-5";
echo $(((`date -jf %Y-%d-%m $B +%s` - `date -jf %Y-%d-%m $A +%s`)/86400))' days until 20H2 eos'
