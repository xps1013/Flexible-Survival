Version 1 of Bastet by Wahn begins here.

[ BastetApproval:                                                    ]
[  0: Starting State                                                 ]
[ >0: Player was nice to her, had sex after "honorable" into         ]
[ <0: Player demands/forces sex with Bastet                          ]

BastetApproval is a number that varies.

Bastet is a woman. 
The description of Bastet is "[BastetDesc]".
The conversation of Bastet is { "Mew!" }.

instead of sniffing Bastet:
	say "     Bastet has an interesting, spicy scent in her fur that speaks of ancient mysteries and the potential of great power.";

to say BastetDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Bastet] <- DEBUG[line break]";
	say "     The goddess Bastet's avatar on this world currently is a beautiful anthro lioness, young and lightly muscled. She stands tall on her digitigrade legs and slender paws, looking at her surroundings with regal composure. Currently, the attractive female is dressed in a kalasiris, a tube dress of ancient egyptian design, starting just below her armpits and hugging every curve of Bastet's body until it stops just a little below her knees. In addition to being quite spectacularly tight, the dress also is woven in a striped pattern out of very fine, in places almost transparent, fabric, giving enticing glimpses at her body below.";
	say "     Since having lost to you in a quite enjoyable sexual contest, the lioness is duty-bound to repay her debt to Nermine - and the cunning storekeeper seems to have decided that means doing guard duty at the store. Now Bastet spends most of her days here, watching out for people to make trouble. With you in your position as Nermine's [Master], this offers interesting opportunities to get to know the cat goddess better - or just to make use of her.";

instead of conversing the Bastet:
	say "     <Wahn: work in progress, sorry about that. This is where her content ends for now>";

to say BastetTalkMenu:
	say "What do you want to talk with Bastet about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Herself";
		now sortorder entry is 1;
		now description entry is "Ask the lioness about himself";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 2;
		now description entry is "Ask the lioness about sex";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Herself":
					say "[BastetTalk1]";
				if nam is "Sex":
					say "[BastetTalk2]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the lioness, shaking your head slightly as she gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say BastetTalk1:
	say "     A";

to say BastetTalk2:
	say "     B";

to say BastetTalk3:
	say "     C";

Instead of fucking the Bastet:
	say "[BastetSexMenu]";

to say BastetSexMenu:
	if(lastfuck of Bastet - turns < 5):
		say "     Bastet puts a hand on your chest to hold you back and says, 'Have some patience please, I am not a slut that is always ready for your pleasure... like some bitches you might know.' Her last words are accompanied by a pointed stare at Nermine, who stands ready at the store counter, dressed in nothing but her fur. The sexy jackaless even gives you two a provocative smile as she notices the looks coming her way, then cups her shapely breasts and demonstratively strokes their nipples. The proud lioness next to you just gives a disapproving huff and looks away, her tail twitching in annoyance.";
	else:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Challenge her to another round of sexual 'combat'.";
		now sortorder entry is 1;
		now description entry is "Compete with Bastet";
		[
		choose a blank row in table of fucking options;
		now title entry is "Go down on the lioness and lick her pussy";
		now sortorder entry is 2;
		now description entry is "Please Bastet with your tongue";
		[]
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Let her suck your dick";
			now sortorder entry is 3;
			now description entry is "Stick your dick into the lioness['] mouth";
		]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]100 - Nevermind[as]100[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Challenge her to another round of sexual 'combat'.":
						say "[BastetSexBattleRepeats]";
					if nam is "Go down on the lioness and lick her pussy":
						say "[BastetSex1]";
					if nam is "Let her suck your dick":
						say "[BastetSex2]";
					WaitLineBreak;
					now lastfuck of Bastet is turns;
			else if calcnumber is 100:
				say "Break off?";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the lioness, shaking your head slightly as she gives a questioning look.";
					WaitLineBreak;
				else:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say BastetSex1: [player licks Bastet]
	say "     A";

to say BastetSex2: [Bastet blows the player]
	say "     B";

to say BastetSexBattleRepeats:
	now BastetSexBattleCount is 0;
	if BastetApproval < 0:
		say "     Seeing you approach with the now-familiar glimmer of lust in your eyes, Bastet's tail twitches and jerks through the air behind her and the lioness hisses out between her sharp teeth. 'What is it this time? Back to use me as a common whore?' Hostility drips of her words as she stands before you with crossed arms.";
	else if BastetApproval is 0:
		say "     Seeing you approach with the now-familiar glimmer of lust in your eyes, Bastet's tail does tiny twitches left and right. She watches you through slightly slitted lids, a suspicious expression on her face. 'What do you want?' Her piercing gaze spears into you as the lioness waits for you to speak.";
	else if BastetApproval > 0:
		say "     Seeing you approach with the now-familiar glimmer of lust in your eyes, Bastet's tail-tip twitches lightly. She watches you through slightly slitted lids, but there is a tiny hint of a smile on her lips for a second before she calms her expression. 'What do you want?' she asks, the low purr underlying her voice telling you that she already knows.";
	say "     Letting your gaze wander down over her tight sheath-dress and its semitransparent sections for a second, you then clear your throat and look up at the waiting lioness. In a calm tone, you tell her that you want to challenge her for another round of the contest you previously had with each other. 'What? N-no. My goddess! I - she... what makes you think she would agree to that?' comes an interjection from Bastet's faithful disciple Ankhtepi, the smallish fennec stepping up to you in obvious agitation. He may be unimposing, but there is little doubt of his devotion as he stands in front of you, trembling slightly at possibly attracting your wrath. But there is no need to do anything to him - as you smile and raise your hand, counting off the reasons Bastet will agree: 1) She a proud being and can't resist a challenge. 2) There's no doubt that she thoroughly enjoyed the last time. 3) You'll tell Nermine to cut out her little 'games' of teasing Bastet for a full day - even if you win over the lioness. 4) With the -";
	say "     Bastet interrupts, 'Enough. You're right.' Ankhtepi's ears droop a little as he whirls around, looking up at his mistress. The lioness pets his head and strokes a paw-hand over his cheek gently as she says, 'Your concern is appreciated, but not needed, my trusted servant.' With a sniffle of quiet despair, the fennec steps aside, allowing Bastet to looking you up and down with an evaluating expression. As she does so, you see the cat goddess['] nostrils flare as she takes in the scent of your jackalman body - and interest flares up in her eyes. ";
	if "Submissive" is listed in feats of player:
		decrease BastetSexBattleCount by 1;
		say "It seems like there was some hint of your submissive nature in what Bastet smelled too, as the lioness subtly changes her stance, a small smile playing over her lips. Seems like she expects an easy victory.";
		LineBreak;
	else if "Dominant" is listed in feats of player:
		say "It seems like there was some hint of your dominant nature in what Bastet smelled too, as the lioness subtly changes her stance, a small smile playing over her lips. Seems like she is getting ready for the challenge you'll prove to be, all the while panting slightly from the first hint of arousal.";
		LineBreak;
		increase BastetSexBattleCount by 1;
	else:
		LineBreak;
	say "     Well, let's get the action started then:";
	LineBreak;
	say "     [link](1)[as]1[end link] - Lean in and give Bastet a gentle kiss.[line break]";
	say "     [link](2)[as]2[end link] - Pull her close and show who's the boss here right from the start.[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to gently kiss Bastet or [link]2[end link] to pull her against you and be a bit more offensive in your attention to the lioness.";
	if calcnumber is 1: [gentle kiss]
		LineBreak;
		say "     Leaning in to the lioness, you slide a hand gently over her shoulder, touching the back of Bastet's head as you give her a kiss on the mouth. She does readily return it and slowly brushes slender, clawed fingers over your arms as you continue making out for a moment. There even is a little bit of tongue-wrestling, with your own rubbing against the slightly rough surface of her feline tongue. Then suddenly, the moment is over and Bastet pulls back from you slightly, giving a flicker of a smile for how easily she got you worked up and breathing hard.";
		decrease BastetSexBattleCount by 1;
	else if calcnumber is 2: [go for the grope]
		LineBreak;
		say "     Wrapping an arm around the lioness, you confidently plant your hand on her shapely rump before pulling her body close against your own with a sudden tug. There is the start of a surprised yowl from the cat goddess at you being so forward with her divine self - but that is instantly quelled as you draw her head to yours with the other hand and plant a deep kiss on her lips. Sliding your tongue into the still shocked woman's mouth, you encounter her somewhat rough tongue and playfully wrestle with it. Your confident action is enough to draw the lioness into a sexy bout of making out, melting into your touch as you grope and caress her body at the same time. Eventually, after having some amazing moments with the cat goddess in your arms, you pull back, leaving Bastet to stand before you, panting and flushed.";
		increase BastetSexBattleCount by 1;
	LineBreak;
	say "     Pleasant as it may be, there is no way anyone would spend all their time with a sexy lioness like Bastet simply making out - and both of you know it. The cat goddess takes a step back and weaves her lithe body in a sinuous, very enticing way, accompanied by graceful movements of her lightly muscled arms and legs. Her little show pulls all attention to the form-fitting kalasiris she wears, with the skin-tight tube dress providing sexy glimpses of Bastet's body. Consisting of very finely woven cloth, the garment seems almost transparent in places, letting you make out that beside the perky breasts with their little nipple-bumps up on her chest, the lioness has another set of two further down, their pale skin shining out of the golden fur all around. All in all, Bastet a very pleasant sight to look at, making you more than a little eager to see her fully naked.";
	LineBreak;
	say "     [link](1)[as]1[end link] - Take matters into your own hands, undress Bastet and caress her body.[line break]";
	say "     [link](2)[as]2[end link] - Just enjoy the show, letting Bastet proceed to a sexy strip show.[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to strip Bastet yourself or [link]2[end link] to let her perform a strip show.";
	if calcnumber is 1: [grabby hands]
		LineBreak;
		say "     Stepping up to the lioness, you bring your hands forward to touch her shapely form, stroking them up and down over her tight dress while she sways her body some more, brushing those curves against you. Bastet can't help but give a little moan as you cup her breasts and lightly stroke the hard nipples showing so clearly through the almost-transparent material of her dress. Next, you slide your hands hand along the soft fur on the curve of her neck, then behind it, feeling for where the two strands holding up her dress are tied at the back. You find what you are looking for and undo the binding with a gentle tug, then slide your hands back to the beautiful feline's front, hooking your fingers under the fabric of her dress just below the armpits.";
		say "     As you start pulling down slowly, slowly, the sexy lioness takes up her enticing gyrations once again, making it an incredible show as inch by inch of the golden-furred female's breathtaking body is revealed. First the gentle rise of her chest below the collarbones, continuing on and on to the peak of her shapely breasts and their small, hard nipples, then the sharper curves of their underside, just asking for your hands to cup them. Continuing down, the next thing coming into sight is the lightly muscled expanse of her belly, complete with two more nipples waiting to be suckled on at the upper end, a small belly button and even a hint of visible abs on the trained body of this attractive lioness.";
		say "     Finally, your hands push the bunched up cloth down over the widest part of her hips and the dress falls to the floor completely, revealing her final treasure between those long legs - the delicate flower of her female parts. Breathing a bit faster from your sheer proximity and touch, the cat goddess says the word, 'Anktepi' almost in a sigh, calling over her servant to pick up her dress as she lifts her delicate paw-feet to step out of it. With the Fennec still crouched by your feet, the bundle of light fabric in his hands, you clear your throat to make him look up, smiling as you brush a hand over his mistress['] crotch and slightly pull open her outer folds. In front of the slender male's widening eyes, you dip in a finger to feel how very wet she is, then demonstratively rub it against your thumb, pulling the digits apart slowly to show off a string of Bastet's fluids stretching from one to the other. And then, you give a sharp nod to the side, relegating Anktepi back to his spot as an observer after getting this enticing a look - and smell - of his goddess['].";
		increase BastetSexBattleCount by 1;
	else if calcnumber is 2: [strip show]
		LineBreak;
		say "     You simply stand back, watching as the lioness sensuously strokes her hands up and down over the tight dress while swaying her body some more, then eventually slides them up, cupping her own breasts and stroking their nipples lightly while giving a demonstrative moan. Next, she slides a hand along the soft fur of her neck and behind it, pulling open the knot of the one strand of fabric that holds her dress up. As you watch in eager anticipation, the sexy lioness takes up her enticing gyrations once again while taking hold of the fine fabric of her garment at the hips and slowly, slowly pulling down on it. Inch by inch of the golden-furred female's breathtaking body is revealed - first the gentle rise of her chest below the collarbones, continuing on and on to the peak of her shapely breasts and their small, hard nipples, then the sharper curves of their underside, just asking for your hands to cup them. Continuing down, the next thing coming into sight is the lightly muscled expanse of her belly, complete with two more nipples waiting to be suckled on at the upper end, a small belly button and even a hint of visible abs on the trained body of this attractive lioness.";
		say "     Finally, her hands push the bunched up cloth down over the widest part of her hips and the dress falls to the floor completely, revealing her final treasure between those long legs - the delicate flower of her female parts. Bastet bends over to pick up her dress slowly, making sure you get to see all of her shapely assets presented in a very enticing way. After casually throwing the light garment to Anktepi for him to hold onto, the lioness walks closer, swaying her hips and drawing your eyes to her crotch with a hand that slightly pulls open her outer folds. Arriving just before you, she gives an almost challenging mrowl and takes your hand, setting it on top of her pubic mound before pushing it down slowly. Oh yeah, you can feel it - she's already slightly wet, getting ready for fun with you. Though if you're honest with yourself - your own arousal has soared quite a bit too during Bastet's sexy strip show. You'll have to watch yourself if you actually wanna win this contest of who gets the other off first.";
		decrease BastetSexBattleCount by 1;
	LineBreak;
	say "     Standing this close to the naked cat goddess, the wetness of her sex already on your fingers, you're of course very eager to continue with more fun. For now, you think touching her pussy some more should be the next step - but what will you do with the panting lioness?";
	LineBreak;
	say "     [link](1)[as]1[end link] - Slide two (or more) fingers deep into her body, rubbing Bastet's inner walls and stretching her.[line break]";
	say "     [link](2)[as]2[end link] - Concentrate on the clit at the top, rubbing its small button while also stroking her folds.[line break]";
	say "     [link](3)[as]3[end link] - On second thought... why not fuck her right now instead?[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to penetrate and stretch Bastet with your fingers, [link]2[end link] to concentrate on rubbing her clit or [link]3[end link] to proceed straight to fucking.";
	if calcnumber is 1: [put some fingers in her]
		LineBreak;
		say "     Sliding your hand over the sexy lioness['] pussy, you feel her soft and slightly open nether lips, spread them some more with your fingers, then push two of them deep into her, making Bastet's eyes go wide at the sudden penetration. The passage you're feeling your way into is warm and wet, clenching around the invading digits as her breath comes quicker from the arousing sensations you lavish on her. In and out, you guide your fingers, replacing a cock's thrusting with an intimate, sensitive strength as you work into her pussy again and again, driving the cat goddess to lust-filled mews with your efforts. Meanwhile, your other hand comes to rest on the shapely boobs the lioness sports cupping and caressing them, as well as stroking over the nipples.";
		say "     It does take a little bit of experimentation, but you do find a very sensitive spot deep inside that makes the sexy feline's legs almost buckle under her as you brush against it. Eventually, after some fun time fingering Bastet, you do pull your hand back, leaving her oh so very much turned on - and yourself almost as much at the same time, after so much groping and touching. Doesn't seem like you've made much headway in this step of the sex battle, but it's been a fun thing to do nonetheless.";
		decrease BastetSexBattleCount by 1;
	else if calcnumber is 2: [stroke the clit]
		LineBreak;
		say "     Sliding your hand over the sexy lioness['] pussy, you feel her soft and slightly open nether lips, spread them some more with your fingers, then dip in a single finger to gently rub her passage. Bastet's eyes go wide at the sudden touch of her inner folds, then even wider, as you abandon the 'obvious' target of a finger-fuck to concentrate on the little nub that is her clit. A single brush over the sensitive little button draws a breathless mew from the feline beauty, which makes way for even louder gasps and aroused sighs as you set your index finger on it and start a circling movement, giving the lioness an intimate massage. Holding back from the more 'active' fun of thrusting into her pussy with your digits, you simply concentrate on driving Bastet out of her mind with pleasure, rubbing and stroking - down at her clit, and the quartet of small pink nipples up on her breasts and the upper chest below those.";
		say "     The attentive work with your fingers pays off quite quickly, winding Bastet up sexually in a really big way. She pants and meows at your touch, even purring for a moment in between, and soon has to take hold of your body to even stand straight, her legs almost buckling as pleasure and sex take over as new priorities for her body. Looks like you've got the feline well and ready for the real deal by now.";
		increase BastetSexBattleCount by 1;
	else if calcnumber is 3: [fucking]
		LineBreak;
		say "     With Bastet already this wet and ready, you decide that there isn't much need for further one-sided foreplay after all. Time for the real fun..."; 
	LineBreak;
	say "     Pulling back a little from the sexy lioness, you quickly get busy removing your gear and clothes, throwing most of it simply aside as fast as possible as you set a new record for stripping down. And then, as soon as you are as naked as your feline partner, Bastet goes into the offensive, almost pouncing on you in her eagerness to win your little contest and reclaim her artifacts from Nermine. Though given the foreplay you've been through already, there is a definite edge of bodily need to her actions as well, which makes sharing hungry kisses with her all the more delicious. Wrapping herself around you in a tight embrace, the cat goddess aggressively makes out with you, giving lusty little growls as her nipples brush against your chest.";
	if cocks of player > 0:
		say "     With your pointy jackalman shaft standing rock-hard and ready, poking Bastet in the stomach as she presses against you, the next level of escalation she chooses is to grab your shoulders to brace herself, then swing a very flexible leg up and hook it around your hips - so she can slide herself down on your erection. You moan a satisfied grunt into her mouth as the lioness['] slick and warm passage envelops your member deeper and deeper, then finally all the way and your balls press against her crotch. The two of you grind against each other for several moments while standing, gasping out shared moans as you get used to feeling the other inside - or around - you, then ";
		if BastetSexBattleCount > 2 or (BastetSexBattleCount is 2 and a random chance of 1 in 2 succeeds): [player won]
			say "you grab Bastet's furry butt with one hand, hooking the other under the lioness['] still standing leg to pull her into your arms fully. The cat goddess gives a needy mrowl as you pick her up, grinding her crotch tightly against your own in the progress. A series of aroused little meows follow as you carry her over to the store counter, your hard shaft rubbing her insides in new and exciting ways with each step you take, then gently lay her down on top of it, giving the sexy feline a long kiss as you do.";
			say "     As you eventually break the lip-lock with the golden-furred female, you straighten yourself and look down into her slitted eyes, giving Bastet a superior grin - then pull partway out and thrust deep in a lightning-quick move. She throws her head back and roars like a lioness in heat as you take her hard, her eyes rolling up in their sockets at the intense sensations of a powerful male mating with her. Fucking the beautiful woman on Nermine's store-counter, with her tight passage trembling and flexing around your erection, you can't help but think back to when you took the jackaless in just this very spot, and just how much fun you did have taking her while she had to service a customer. The thought of just who that customer was makes you look up from Bastet's breasts as they bounce with each thrust into her, and you seek out Anktepi with your gaze - only to see that the slender fennec has his own cock in hand and is stroking off to his mistress being fucked. Seems like the small guy couldn't help but get aroused at the sight - but he's likely imagining it is him giving it to the magnificent lioness.";
			WaitLineBreak;
			say "     With you clearly on the winning end of this fun little sex-battle, you take a moment to revel in having driven Bastet half out of her mind in arousal, mewling needily with each hard thrust into her pussy. Leaning over the lioness, you make out with her some more, then even catch first one, then the other breast and nibble a little on her nipples - all the while drawing louder and louder moans from the horny goddess. And then, it is time for the grand finale - as you feel the urge to cum rise quickly inside yourself, and you don't want to lose after all by accident. Stroking a hand over Bastet's lower pair of nipples, then the flat tummy and down to her crotch, you rub her clit while still keeping up the hard pounding into her, stimulating the lioness most sensitive spots at the same time, inside and out.";
			say "     Helpless against this lustful assault on her senses, Bastet's simply can't hold back anymore, and with a loud yowl, she starts to orgasm, writing under you in boundless pleasure. Her tight passage around your thrusting shaft ripples and flexes as the beautiful female barrels past the point of no return, forfeiting this round of sexual battle to you. With the satisfaction of victory lifting your already very high spirits, it does take but a moment till you join her in climax, driving your shaft deep just as the knot at its base swells up and locks the two of you together. Then the first splash of your seed bursts into her body to claim her as yours. Half-collapsing on top of Bastet as the orgasm rocks through your body, you grunt with each further spurt of cum deposited in her fertile womb.";
			WaitLineBreak;
			say "     As you yourself slowly come down from the height of arousal, the sound of rapid panting and low fapping noises draw your attention to the side, where Anktepi is frantically jerking himself off, until he soon also gives a breathless little gasp and starts shooting a quite respectable load for such a little guy, the cum landing in long streaks of white splatter on the shop's smooth wooden floorboards. As his climax slowly tapers off and smaller and smaller spurts of cum splat down on the ground, Nermine clears her throat and says, 'Nermine is always happy when her customers enjoy their stay in her store as much as possible, but the dear fennec did create quite a little mess. Looks like Bastet will have to - *Clearing your throat, you interrupt the jackaless and tell her to cut it out. For today, at least. The indentured cat goddess fought honorably - and quite pleasurably - against you, so it is time to show her a little respect at least. A hint of a frown plays over the jackaless['] features, then Nermine calms herself again and gives you a nod. 'Of course, [Master].' Meanwhile, Bastet starts purring a little, seemingly aware of her surroundings even in the half blissed-out state you put her in.";
			say "     At the same time, the fennec's reaction to Nermine's little barb is almost priceless - judging from his expression, he must be white as a sheet under the fur all over his anthro form. You can almost see the wheels turning inside his head - the guilt of jerking off as his goddess lost, with Nermine having planned to make her wipe up his cum. Even though you stopped her, Anktepi throws himself on the ground, wiping up the white cum in frantic haste, using his hands and the fur of his forearms. As soon as he's done, the fennec gives Nermine a pleading look and gasps out, 'I - I apologize for... ehm...' The storekeeper just chuckles at his embarrassment, pulling his head up with a finger under his chin. 'The gentle fennec does have no need to worry. He is a valued customer after all and should feel free to enjoy the wares and sights of this jackal's store to the fullest.' As she then reaches further down and gives his balls a little squeeze, the little guy yips in shock and sprints to the door, leaving the store with the ring of its little doorbell.";
			WaitLineBreak;
			say "     Nermine's face bears the deceptively mild smile you've come to expect from the merciless businesswoman as she saunters over to you, swaying the hips and chest of her naked body for you to enjoy. 'Nermine must congratulate her handsome master,' the jackaless says and leans in to give you a kiss, then she continues, 'Another victory through his great skill.' To accompany the sentence, she indicates the semiconscious lioness still impaled on your shaft, then the door through which Anktepi fled not long ago. The black-furred jackaless presses herself against your side, drawing you into a long bout of making out. As she eventually pulls back to let you take a breath, a wicked little smile plays over Nermine's muzzle and the jackaless says, 'Watch this, master.'";
			say "     With that, the sexy canine leans forward and caresses Bastet's breasts, giving you the quite enjoyable image of seeing her black-furred hand covering a perky golden breast of Bastet's naked body. The jackaless even goes on to lap at the supine lioness['] nipples, drawing some soft mews from the soon squirming Bastet, then bringing together both their canine and feline muzzles to kiss the vanquished goddess. Gripping the counter with her hands, Bastet moans and... gets a bit wetter around your shaft, clearly showing that she can't help but react to the stimulation. Though it isn't without being somewhat annoyed about her own bodily weakness in regards to sexual matters - as the next words from Bastet's throat are, 'You bitch!' Nermine just chuckles at that and plants a kiss on Bastet's lips again, which the lioness reluctantly returns. 'What astute observation. Nermine is indeed her master's loyal bitch.'";
			WaitLineBreak;
			say "     Nermine gets back to making out with the not quite willing, but still really wound up Bastet, which is an truly awesome sight with the contrast between their fur colors. With the fun show to watch, it does take quite a while till eventually your knot softens far enough to be pulled out of Bastet's freshly bred pussy. 'Nermine will of course honor her master's commands and... leave the goddess alone for now. It is a little bit of a waste, as there are numerous uses for divine... fluids and Nermine has many tasks that Bastet could do...' It is clear that she is fishing for you to change your mind, but you shake your head with a steely gaze. As you start pulling your clothes back on, Nermine turns away from Bastet with a little sigh, wandering over to the other side of the store to rearrange the contents of a shelf.";
			say "     From where she's still lying on the counter, [bold type]Bastet gives you a tiny nod of approval.[roman type] This approach to getting to have some fun is definitively easier to accept for the indentured goddess than you just ordering her to do so.";
			increase BastetApproval	by 1;
		else: [Bastet won]
			say "Bastet purrs in a commanding voice, 'Lie down.' Horny as you are, you can barely think straight, so you obey, bracing yourself with your arms as you lower yourself to the ground. While you do so, Bastet demonstrates just how flexible and skilled in gymnastics she is - by keeping your canine cock buried in her tight pussy all the way, even as you stretch and move. Eventually, you're more or less lying on your own discarded clothing, with the golden-furred feline straddling your hips and rocking back and forth in the most... stimulating way.";
			say "     A satisfied little roar comes from the lioness['] muzzle as she takes full control of the situation, leaning forward and pinning your arms to the ground as she grinds her crotch against yours. Satisfied, lust-filled mrowls soon follow, each time she makes your cock bottom out and brush against very sensitive parts deep inside her tight pussy. Its such a sexy and breathtaking situation that you quickly feel the urge to cum rise deep inside you and close your eyes to await the impending orgasm - only to have Bastet stop her movements from one moment to the next. The lioness looks down at your nonplussed face with a chuckle on her lips, then gives you a little flex of her internal muscles that makes you pant needily - only to stop right after. Seems like this cat wants to play a little with you before she finishes you off.";
			WaitLineBreak;
			say "     Leaning forward, Bastet flashes sharp teeth at you, then runs her somewhat rough tongue over your [body of player] chest. She goes up and up, arriving at your head before long, which leads to several nice moments of her making out with you, if in a somewhat demanding fashion. Then finally, the cat goddess gives you a 'love-bite', nipping the side of your neck with her teeth before going back to full on grinding against your body. It is obvious that the feline does enjoy herself more than just a little bit - so much so that she even takes short breaks to let you cool down a little - which helps push back the inevitable orgasm she's been prepping you for since this whole matter started.";
			say "     Riding your hard pole with relish, Bastet moans and purrs in lust and you can feel her become just a bit wetter with each deep penetration. As your urge to cum wells up quite strongly once more, an idea of maybe still being able to win comes into your head, making you buck up against the lioness. And it even is a partial success, as the cat goddess gives an aroused mrowl - both from the deep penetration and a male trying to breed her... but Bastet is more than ready to counter your move. With the flexible grace that is so much part of her golden-furred form, the lioness pushes her hips up, making your canine cock slip out of her body just as the knot begins to expand and long streaks of cum squirt high into the air - only to splat down on yourself, instead of filling her womb. Bastet gives a victorious chuckle and shows a challenging grin to Nermine, then stands up and calls out for her fennec servant. Ankhtepi literally stumbles in his eagerness to get to her - landing on his knees in front of the lioness and bumping right into her crotch with his muzzle. The aroused goddess takes it in stride and just spreads her legs a little more, then tells her companion to lick.";
			WaitLineBreak;
			say "     And so, the sand-colored fox eagerly services his mistress, lapping happily at her sex and brushing the insides of her thighs with his large ears. Satisfied mews escape Bastet's lips before much longer and her clawed hands hold on to the kneeling male's head as she reaches her own climax, making the lioness pant in lust as her pussy drips and squirts femcum, which Ankhtepi immediately licks up. Meanwhile, the small guy's hand is rapidly jerking his own manhood, and with a muffled gasp from between Bastet's thighs, he reaches orgasm. A twitch goes through him from muzzle to tail-tip as quite a respectable load for such a little guy starts to spurt out of his cock, the cum landing in long streaks of white splatter on the shop's smooth wooden floorboards.";
			say "     As Bastet slowly winds down and lets go of her devoted fennec, stroking him in satisfaction instead, his spurts of cum splatting down on the ground get smaller and smaller too. Then Nermine clears her throat and says, 'Nermine is always happy when her customers enjoy their stay in her store as much as possible, but the dear fennec did create quite a little mess. Looks like Bastet will have to - *Clearing your throat, you interrupt the jackaless and tell her to cut it out. For today, at least. The indentured cat goddess fought honorably - and quite pleasurably - against you, so it is time to show her a little respect at least. A hint of a frown plays over the jackaless['] features, then Nermine calms herself again and gives you a nod. 'Of course, [Master].'";
			WaitLineBreak;
			say "     From your position on the ground, you watch Bastet allowing Ankhtepi to help her don her dress, then she walks over near the door of the store and takes position there, leaning against the wall relaxedly. As she passes you on the way, the lioness gives you a content look from the corner of her eyes and even adds a little nod. This approach to getting to have some fun is definitively easier to accept for the indentured goddess than you just ordering her to do so. [bold type]You have gained a tiny bit of approval in her eyes.[roman type]";
			increase BastetApproval	by 1;
	else: [females]
		say "     Making out and touching each other quickly escalates to hands sliding lower and lower, then a first brush of your fingers against each other's crotch. Soft stroking against clits and increasingly wet and swollen pussy lips leads to shared moans as your lips are pressed together, with both your tongues wrestling in a slippery dance of shared arousal. Then the next level of escalation is reached as you slip a finger into Bastet's pussy, probing her tight and hot passage while giving a rub to her clit with your thumb. A lusty mrowl escapes the lioness lips and she gets to work on you in turn, showing you some very, very stimulating movements to do with her slender fingers. The mutual groping continues in unabated eagerness until eventually Bastet presses her whole front against you tightly, pushing her shapely breasts to your chest as you join a deep kiss, then ";
		if BastetSexBattleCount > 2 or (BastetSexBattleCount is 2 and a random chance of 1 in 2 succeeds): [player won]
			say "finally, you take control of the situation, turning the lioness around with a quick move, embracing her from behind with one hand on a shapely breast, the other still down between her legs.";
			say "     The cat goddess gives an aroused mew as you assert your dominance, trembling as you touch her sex. As wound up as you got her since your little contest started, now she can't hold back anymore, panting and rotating her hips to grind against your hand. And just like that, you know you finally have her - all that remains is to finish her off. Even though your own pussy isn't getting any direct stimulation right now, you can still feel copious femcum leaking from your [cock of player] nethers, to trickle down the inside of your legs. Getting this far with Bastet turns you on so very much. Revelling in the feeling of having the breathtakingly beautiful feline in your power, you really get to work on her - so much so that she has to brace herself against a thankfully very close-by bookshelf to keep her legs from buckling.";
			WaitLineBreak;
			say "     You can't help yourself but tease the lioness a bit, whispering into her pointy ear about not being able to control herself, that she wanted to lose so she could spend time with you and Nermine, then tell her that even her companion thinks that this is the place - and role - she belongs in. With one hand between her legs, your other takes hold of Bastet's muzzle and turns it to the side, then returns to cup her rounded breast. Now the lioness can see Anktepi clearly, see that the fennec is frantically jerking himself off to the show of two females grinding against each other before his very eyes. Then suddenly, a twitch goes through him from muzzle to tail-tip as he gives a breathless pant, just as quite a quite respectable load (for such a little guy) starts to spurt out of his cock, the cum landing in long streaks of white splatter on the shop's smooth wooden floorboards.";
			say "     Whispering into Bastet's ear that it's time for servants to cum now, you proceed with an all-out attack, pushing two fingers ever deeper into her while the other hand rubs and strokes her clit and you nibble at the curve of her neck. It only takes a moment before the combined sensations push Bastet the last little step over the edge, and the lioness trembles in your grasp as she orgasms, gushing femcum over your fingers. Now that you're really and properly won, you decide it is time to get your own release - and start to grind against something quite conveniently already between your legs - the lioness['] soft-furred tail. Bastet is still breathing hard as she feels the touch of your nether lips against her tail, then the wet femcum starts to mat her hair against it.";
			WaitLineBreak;
			say "     With the sexy situation being what it is - you enjoying yourself with Bastet, in front of Nermine, her devoted servant Anktepi, and anyone else who might be walking past the shop and look in the window - it doesn't take long at all before you reach a breathtaking climax yourself, gasping loudly as you squirt quite a bit of femcum over her tail. There is a lull in the sex noises filling the store as everyone simply pants for a moment, trying to catch their breaths, then eventually Nermine clears her throat and says, 'Nermine is always happy when her customers enjoy their stay in her store as much as possible, but the dear fennec did create quite a little mess. Looks like Bastet will have to - *Clearing your throat, you interrupt the jackaless and tell her to cut it out. For today, at least. The indentured cat goddess fought honorably - and quite pleasurably - against you, so it is time to show her a little respect at least. A hint of a frown plays over the jackaless['] features, then Nermine calms herself again and gives you a nod. 'Of course, [Master].' Meanwhile, Bastet starts purring a little, seemingly aware of her surroundings even in the half blissed-out state you put her in.";
			say "     At the same time, the fennec's reaction to Nermine's little barb is almost priceless - judging from his expression, he must be white as a sheet under the fur all over his anthro form. You can almost see the wheels turning inside his head - the guilt of jerking off as his goddess lost, with Nermine having planned to make her wipe up his cum. Even though you stopped her, Anktepi throws himself on the ground, wiping up the white cum in frantic haste, using his hands and the fur of his forearms. As soon as he's done, the fennec gives Nermine a pleading look and gasps out, 'I - I apologize for... ehm...' The storekeeper just chuckles at his embarrassment, pulling his head up with a finger under his chin. 'The gentle fennec does have no need to worry. He is a valued customer after all and should feel free to enjoy the wares and sights of this jackal's store to the fullest.' As she then reaches further down and gives his balls a little squeeze, the little guy yips in shock and sprints to the door, leaving the store with the ring of its little doorbell.";
			WaitLineBreak;
			say "     Nermine's face bears the deceptively mild smile you've come to expect from the merciless businesswoman as she saunters over to you, swaying the hips and chest of her naked body for you to enjoy. 'Nermine must congratulate her handsome master,' the jackaless says and leans in to give you a kiss, then she continues, 'Another victory through his great skill.' To accompany the sentence, she indicates the semiconscious lioness still leaking femcum to mat the fur of her crotch and legs, then the door through which Anktepi fled not long ago. The black-furred jackaless presses herself against your side, drawing you into a long bout of making out. As she eventually pulls back to let you take a breath, a wicked little smile plays over Nermine's muzzle and the jackaless says, 'Watch this, master.'";
			say "     With that, the sexy canine leans forward and caresses Bastet's breasts, giving you the quite enjoyable image of seeing her black-furred hand covering a perky golden breast of Bastet's naked body. The jackaless even goes on to lap at the lioness['] nipples, drawing some soft mews from the soon squirming Bastet, then bringing together both their canine and feline muzzles to kiss the vanquished goddess. Gripping the shelf with her hands, Bastet moans and... gets a bit wetter yet, a little squirt of femcum clearly showing that she can't help but react to the stimulation. Though it isn't without being somewhat annoyed about her own bodily weakness in regards to sexual matters - as the next words from Bastet's throat are, 'You bitch!' Nermine just chuckles at that and plants a kiss on Bastet's lips again, which the lioness reluctantly returns. 'What astute observation. Nermine is indeed her master's loyal bitch.'";
			WaitLineBreak;
			say "     Nermine gets back to making out with the not quite willing, but still really wound up Bastet, which is an truly awesome sight with the contrast between their fur colors. 'Nermine will of course honor her master's commands and... leave the goddess alone for now. It is a little bit of a waste, as there are numerous uses for divine... fluids and Nermine has many tasks that Bastet could do...' It is clear that she is fishing for you to change your mind, but you shake your head with a steely gaze. As you start pulling your clothes back on, Nermine turns away from Bastet with a little sigh, wandering over to the other side of the store to rearrange the contents of a shelf.";
			say "     From where she's still lying on the counter, [bold type]Bastet gives you a tiny nod of approval.[roman type] This approach to getting to have some fun is definitively easier to accept for the indentured goddess than you just ordering her to do so.";
			increase BastetApproval	by 1;
		else: [Bastet won]
			say "finally, Bastet takes control of the situation, pushing you back slowly but surely, until you bump against one of the bookshelves on the wall. Then the lioness catches hold of your wrists, pushing them up over your head and holding them there with one hand, while the other dips down to your crotch again.";
			say "     You can't help but moan loudly as the cat goddess asserts her dominance, fingers dipping into your moist cave as she holds your wrists in a tight grip. As wound up as she got you since your little contest started, your lust-addled mind just makes you react to the stimulation, panting and rotating your hips to grind against Bastet's hand. You don't actually mind all that much that she's won this round, not with all the fun you had - and still have, as she keeps touching you. Revelling in her already obvious victory, the breathtakingly beautiful feline plays with having you in her power, stroking you, then slowing down, followed by more stroking. It's like a cat and mouse game with her, only here you're the mouse, helplessly held by the feline as she pushes you right up to the edge, then keeps you there for minute after minute.";
			WaitLineBreak;
			say "     As the lioness toys with you, stroking your sex as well as leaning in to brush her breasts over your chest and kissing your lips, your head lolls around a little after another wave of arousal, and you find yourself looking to the side, where Bastet's fennec servant Anktepi is frantically jerking himself off to the show of two females grinding against each other before his very eyes. Bastet gives a victorious chuckle and follows your gaze, smiling at her devoted servant. And as she does so, the lioness goes all out with her attack on your most sensitive spots, rubbing your clit with her thumb while two fingers reach deep into your pussy and stroke a spot that has you tremble in arousal with every little touch. In mere moments, this treatment pushes you over the edge, drawing a breathless moan from you as you start to orgasm, gushing femcum over her hand.";
			say "     While you slump back against the bookshelf, having to lean against something as your knees get weak from all the pleasure coursing through your being, Bastet gives a Nermine a challenging grin. With a look and a mrowl, she calls her fennec servant to her side. Ankhtepi literally stumbles in his eagerness to get to her - landing on his knees in front of the lioness and bumping right into her crotch with his muzzle. The aroused goddess takes it in stride and just spreads her legs a little more, then holds her hand out to the kneeling desert fox and tells her companion to lick. With a few passes of his tongue, Ankhtepi slurps up your female juices from Bastet's fingers, then her hands guide his muzzle to her crotch.";
			WaitLineBreak;
			say "     And so, the sand-colored fox eagerly services his mistress, lapping happily at her sex and brushing the insides of her thighs with his large ears. Satisfied mews escape Bastet's lips before much longer and her clawed hands hold on to the kneeling male's head as she reaches her own climax, making the lioness pant in lust as her pussy drips and squirts femcum, which Ankhtepi immediately licks up. Meanwhile, the small guy's hand is rapidly jerking his own manhood, and with a muffled gasp from between Bastet's thighs, he reaches orgasm. A twitch goes through him from muzzle to tail-tip as quite a respectable load for such a little guy starts to spurt out of his cock, the cum landing in long streaks of white splatter on the shop's smooth wooden floorboards.";
			say "     As Bastet slowly winds down and lets go of her devoted fennec, stroking him in satisfaction instead, his spurts of cum splatting down on the ground get smaller and smaller too. Then Nermine clears her throat and says, 'Nermine is always happy when her customers enjoy their stay in her store as much as possible, but the dear fennec did create quite a little mess. Looks like Bastet will have to - *Clearing your throat, you interrupt the jackaless and tell her to cut it out. For today, at least. The indentured cat goddess fought honorably - and quite pleasurably - against you, so it is time to show her a little respect at least. A hint of a frown plays over the jackaless['] features, then Nermine calms herself again and gives you a nod. 'Of course, [Master].'";
			WaitLineBreak;
			say "     From your position leaning against the bookshelf, you watch Bastet allowing Ankhtepi to help her don her dress, then she walks over near the door of the store and takes position there, leaning against the wall relaxedly. As she passes you on the way, the lioness gives you a content look from the corner of her eyes and even adds a little nod. This approach to getting to have some fun is definitively easier to accept for the indentured goddess than you just ordering her to do so. [bold type]You have gained a tiny bit of approval in her eyes.[roman type]";
			increase BastetApproval	by 1;
	
Bastet ends here.
