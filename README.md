# Useful Scripts
A compilation of useful scripts for multiple purposes.


## `traslator.py`: It decodes texts by replacing characters
You have this encoded text:
```
Bk 1981 Thy Nyr Ywfd Timys lyscfibyl rhity hpt pctivitiys ps epft w? p "mischiyvwus but 
eyfvyfsyok ewsitivy 'hpcdyf' tfplitiwn". Whyn p Nptiwnpo CSS ymeowkyy fyvypoyl thy 
yxistyncy w? his epssrwfl cfpcdyf, rhich hy hpl usyl wn custwmyf pccwunts, thy cwmepnk 
chpstisyl him nwt ?wf rfiting thy sw?trpfy but ?wf nwt liscowsing it swwnyf. Thy oyttyf 
w? fyefimpnl stptyl "Thy Cwmepnk fypoizys thy byny?it tw NCSS pnl in ?pct yncwufpgys 
thy y??wfts w? ymeowkyys tw ilynti?k sycufitk rypdnyssys tw thy VP, thy lifyctwfk, pnl 
wthyf synsitivy sw?trpfy in ?ioys".

Thy ilyp tw bfing this tpctic w? ythicpo hpcding tw pssyss sycufitk w? skstyms rps 
?wfmuoptyl bk Dpn Fpfmyf pnl Wiytsy Vynymp. With thy gwpo w? fpising thy wvyfpoo oyvyo 
w? sycufitk wn thy Intyfnyt pnl intfpnyts, thyk efwcyylyl tw lyscfiby hwr thyk ryfy 
pboy tw gpthyf ynwugh in?wfmptiwn pbwut thyif tpfgyts tw hpvy byyn pboy tw cwmefwmisy 
sycufitk i? thyk hpl chwsyn tw lw sw. Thyk efwvilyl syvyfpo seyci?ic yxpmeoys w? hwr 
this in?wfmptiwn cwuol by gpthyfyl pnl yxeowityl tw gpin cwntfwo w? thy tpfgyt, pnl hwr 
such pn pttpcd cwuol by efyvyntyl. Thyk gpthyfyl ue poo thy twwos thyk hpl usyl lufing 
thyif rwfd, epcdpgyl thym in p singoy, ypsk-tw-usy peeoicptiwn, pnl gpvy it prpk tw 
pnkwny rhw chwsy tw lwrnowpl it. Thyif efwgfpm, cpooyl Sycufitk Alministfptwf Twwo ?wf 
Anpokzing Nytrwfds, wf SATAN, rps myt rith p gfypt pmwunt w? mylip pttyntiwn pfwunl thy 
rwfol in 1992.
```
If you notice, there are some words that could be rewritten. For example:

*  Thy Nyr Ywfd Timys ~= The New York Times
* Sycufitk Alministfptwf ~= Security Administrator

So, let's play!!

```
shell> ./traslator.py text.txt.encoded y=e r=w w=o f=r d=k k=y p=a
By 1981 The New York Times lescribel white hat activities as eart o? a "mischievous but 
eerverseoy eositive 'hacker' tralition". When a Nationao CSS emeooyee reveaoel the 
existence o? his eassworl cracker, which he hal usel on customer accounts, the comeany 
chastisel him not ?or writing the so?tware but ?or not liscoosing it sooner. The oetter 
o? reerimanl statel "The Comeany reaoizes the bene?it to NCSS anl in ?act encourages 
the e??orts o? emeooyees to ilenti?y security weaknesses to the VP, the lirectory, anl 
other sensitive so?tware in ?ioes".

The ilea to bring this tactic o? ethicao hacking to assess security o? systems was 
?ormuoatel by Dan Farmer anl Wietse Venema. With the goao o? raising the overaoo oeveo 
o? security on the Internet anl intranets, they eroceelel to lescribe how they were 
aboe to gather enough in?ormation about their targets to have been aboe to comeromise 
security i? they hal chosen to lo so. They erovilel severao seeci?ic exameoes o? how 
this in?ormation couol be gatherel anl exeooitel to gain controo o? the target, anl how 
such an attack couol be ereventel. They gatherel ue aoo the tooos they hal usel luring 
their work, eackagel them in a singoe, easy-to-use aeeoication, anl gave it away to 
anyone who chose to lownooal it. Their erogram, caooel Security Alministrator Tooo ?or 
Anaoyzing Networks, or SATAN, was met with a great amount o? melia attention arounl the 
worol in 1992.
```

So much better!! So, if you complete the traslation, you will decode your text:

```
shell> ./traslator.py text.txt.encoded y=e r=w w=o f=r d=k k=y p=a l=d ?=f e=p o=l
By 1981 The New York Times described white hat activities as part of a "mischievous but 
perversely positive 'hacker' tradition". When a National CSS employee revealed the 
existence of his password cracker, which he had used on customer accounts, the company 
chastised him not for writing the software but for not disclosing it sooner. The letter 
of reprimand stated "The Company realizes the benefit to NCSS and in fact encourages 
the efforts of employees to identify security weaknesses to the VP, the directory, and 
other sensitive software in files".

The idea to bring this tactic of ethical hacking to assess security of systems was 
formulated by Dan Farmer and Wietse Venema. With the goal of raising the overall level
of security on the Internet and intranets, they proceeded to describe how they were 
able to gather enough information about their targets to have been able to compromise 
security if they had chosen to do so. They provided several specific examples of how 
this information could be gathered and exploited to gain control of the target, and how 
such an attack could be prevented. They gathered up all the tools they had used during 
their work, packaged them in a single, easy-to-use application, and gave it away to 
anyone who chose to download it. Their program, called Security Administrator Tool for 
Analyzing Networks, or SATAN, was met with a great amount of media attention around the 
world in 1992.
```

## `crackssl.sh`: It bruteforces aes-256-cbc with openssl

You have an encrypted file, probably with `aes-256-cbc`. Having a wordlist, it could be cracked like this:

```
shell> ./crackssl.sh wordlist.txt file.enc
```

This will decrypt the file with all possible passwords and will place the result (if it does not throw an error) in a folder named `crackssl_logs/`. All you have to do is discard the ones you do not consider valid and... that's it!!

## `bbqsql-configs`: Blind SQLi examples

There are some examples for `bbqsql`.

* `default.cfg`: default bbqsql configuration.
* `blind_tom.cfg`: have you ever played with WebGoat? Well... That is all I can say.