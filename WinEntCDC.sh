# ! / b i n / b a s h   - x
# this file -- enos.in/cd -- https://raw.githubusercontent.com/soneups/scratchcode/master/cd.sh
# echo $(( $(( $( date +%s ) - $( date -d "1989-11-29" +%s ) )) / 86400 )) # Calculate how many days old you are. Uses GNU syntax.

A="2021-30-1"; B="2021-10-5";
echo $(((`date -jf %Y-%d-%m $B +%s` - `date -jf %Y-%d-%m $A +%s`)/86400))' days until 1809 eos'

A="2021-30-1"; B="2022-10-5";
echo $(((`date -jf %Y-%d-%m $B +%s` - `date -jf %Y-%d-%m $A +%s`)/86400))' days until 1909 eos'

A="2021-30-1"; B="2023-9-5";
echo $(((`date -jf %Y-%d-%m $B +%s` - `date -jf %Y-%d-%m $A +%s`)/86400))' days until 20H2 eos'
