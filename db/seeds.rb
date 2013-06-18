# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.delete_all
Article.delete_all

# Seed three initial videos
Video.create(title: 'Burt Flickinger & Larry Haverty Say Apple Has "Very Clear Future"', 
			  description: 'Lawrence Haverty, portfolio manager at Gamco Investors Inc., Burt Flickinger, managing director at Strategic Resource Group, and Frank Rose, author of "West of Eden: The End of Innocence at Apple Computer," talk about the outlook for Apple Inc. Rose, Haverty and Flickinger also discuss Apple Chief Executive Officer Steve Jobs. They speak with Pimm Fox on Bloomberg "Taking Stock."',
			  embed_link: '<script src="http://player.ooyala.com/player.js?embedCode=cxdG1qMjpy8j4LKgE0GnUZ9wV3XiJ5m7&width=640&autoplay=1&height=360&video_pcode=oza2w6q8gX9WSkRx13bskffWIuyf&deepLinkEmbedCode=cxdG1qMjpy8j4LKgE0GnUZ9wV3XiJ5m7"></script>',
			  publication: 'Bloomberg',
			  publication_link: 'http://bloomberg.com',
			  photo: nil,
			  date: 2012-08-07 00:00:00.000000,
			  enabled: true,
			  seo_title: 'Burt Flickinger & Larry Haverty Say Apple Has "Very Clear Future"',
			  seo_description: 'Lawrence Haverty, portfolio manager at Gamco Investors Inc., Burt Flickinger, managing director at Strategic Resource Group, and Frank Rose, author of "West of Eden: The End of Innocence at Apple Computer," talk about the outlook for Apple Inc. Rose, Haverty and Flickinger also discuss Apple Chief Executive Officer Steve Jobs. They speak with Pimm Fox on Bloomberg "Taking Stock."',
			  seo_keywords: 'Burt Flickinger, Strategic Resource Group, Retail, Consulting, Apple, investing')

Video.create(title: "Wal-Mart's Performance, Back-to-School Retail", 
			  description: 'Craig Johnson, president of Customer Growth Partners LLC, and Burt Flickinger, managing director of Strategic Resource Group, talk about Wal-Mart Stores possible bid for Carrefour SAs Brazilian stores, and the outlook for the U.S. retail industry. Johnson and Flickinger speak with Pimm Fox on Bloomberg Televisions "Bloomberg West."',
			  embed_link: '<script src="http://player.ooyala.com/player.js?embedCode=k4MGRxMjrK-sU-wOnf12eVFg_zTg-Re4&video_pcode=oza2w6q8gX9WSkRx13bskffWIuyf&width=640&deepLinkEmbedCode=k4MGRxMjrK-sU-wOnf12eVFg_zTg-Re4&height=360&autoplay=1"></script>',
			  publication: 'Bloomberg',
			  publication_link: 'http://bloomberg.com',
			  photo: nil,
			  date: 2011-08-12 00:00:00.000000,
			  enabled: true,
			  seo_title: "Wal-Mart's Performance, Back-to-School Retail",
			  seo_description: 'Craig Johnson, president of Customer Growth Partners LLC, and Burt Flickinger, managing director of Strategic Resource Group, talk about Wal-Mart Stores possible bid for Carrefour SAs Brazilian stores, and the outlook for the U.S. retail industry. Johnson and Flickinger speak with Pimm Fox on Bloomberg Televisions "Bloomberg West."',
			  seo_keywords: 'Burt Flickinger, Strategic Resource Group, Retail, Consulting, Wal-Mart, Back-to-School')

Video.create(title: 'Flickinger, Johnson on Wal-Mart, Home Depot, Target', 
			  description: 'Burt Flickinger, managing director of Strategic Resource Group, and Craig Johnson, president of Customer Growth Partners LLC, talk about the outlook for Target Inc. quarterly earnings report tomorrow and the companys long-term growth. They also discuss second-quarter profit and full-year forecasts at Wal-Mart Stores Inc. and Home Depot Inc. Flickinger and Johnson speak with Pimm Fox on "Taking Stock."',
			  embed_link: '<script src="http://player.ooyala.com/player.js?embedCode=ppZW5xMjqd5DShVamcRs6efinylhsnm-&autoplay=1&width=640&video_pcode=oza2w6q8gX9WSkRx13bskffWIuyf&height=360&deepLinkEmbedCode=ppZW5xMjqd5DShVamcRs6efinylhsnm-"></script>',
			  publication: 'Bloomberg',
			  publication_link: 'http://bloomberg.com',
			  photo: nil,
			  date: 2011-08-16 00:00:00.000000,
			  enabled: true,
			  seo_title: 'Flickinger, Johnson on Wal-Mart, Home Depot, Target',
			  seo_description: 'Burt Flickinger, managing director of Strategic Resource Group, and Craig Johnson, president of Customer Growth Partners LLC, talk about the outlook for Target Inc. quarterly earnings report tomorrow and the companys long-term growth. They also discuss second-quarter profit and full-year forecasts at Wal-Mart Stores Inc. and Home Depot Inc. Flickinger and Johnson speak with Pimm Fox on "Taking Stock."',
			  seo_keywords: 'Burt Flickinger, Strategic Resource Group, Retail, Consulting, Wal-Mart, Home Depot, Target')

# seed articles
Article.create(author: 'Brad Tuttle',
			  content: '<p>This week, the death of one high-profile grocery chain, and the ascendancy of another, tells us a lot about what Americans want in a supermarket&mdash;and what we&rsquo;re just not buying.</p>

						<p>On Wednesday, Fairway, the beloved New York-centric supermarket chain, went public, and shares of the company quickly shot up 39%. Born as a produce stand on Manhattan&rsquo;s Upper West Side, Fairway now has a dozen locations, and it plans on opening as many as 300 stores around the country.</p>

						<p>Also on Wednesday, news spread that Fresh &amp; Easy, the supermarket brand launched in the U.S. five years ago by Tesco, Britain&rsquo;s biggest grocery company, was officially a failure. Tesco announced it would cut its losses on Fresh &amp; Easy, taking a write-off of roughly $1.8 billion. The 200 existing Fresh &amp; Easy stores, all in the American West, are up for sale.</p>

						<p>Most would agree with Philip Lempert, editor of Supermarket Guru, who said in a phone interview, &ldquo;Tesco is one of the smartest retailers on the planet. They&rsquo;re not a dumb company at all.&rdquo; And yet, as Burt Flickinger III of the retail consulting firm Strategic Resource Group put it in a Los Angeles Times article, &ldquo;Tesco&rsquo;s failure will rank as one of the biggest among food retailers in modern supermarket history.&rdquo;</p>

						<p>What happened? And what has Fairway done differently that has it headed in exactly the opposite direction of Fresh &amp; Easy? While both are in the same business, Lempert said, &ldquo;They really represent the two extremes of what&rsquo;s going on in grocery retail.&rdquo; Here are a few of areas where the differences are readily apparent.</p>

						<p>The first Fresh &amp; Easy opened in the U.S. in 2007. Tesco originally planned on having 200 stores by the end of 2009, and upwards of 400 locations by early 2013. Instead, by the fall of 2010, when the total stood at 168 U.S. locations, the company announced it was &ldquo;mothballing&rdquo; 13 stores, including six in the Las Vegas area.</p>

						<p>In fact, every Fresh &amp; Easy has been in the western U.S. Tesco seemed to want to avoid battling for customers with Walmart in its Midwest heartland, and also skipped over the East Coast, which is dense with shoppers and supermarkets alike. Instead, the approach was to primarily target neighborhood &ldquo;food deserts,&rdquo; which were sometimes in the literal deserts of Arizona, California, and Nevada.</p>

						<p>These regions have been among the hardest hit during the Great Recession and the real estate collapse, and in recent years it&rsquo;s been difficult for many businesses to stay open, let alone expand, in the Sun Belt. But Fresh &amp; Easy can&rsquo;t put all of the blame on the economy and bad timing. The chain went with a small format, with stores that were a cross between a Trader Joe&rsquo;s and a convenience store, measuring roughly one-third the size of the typical supermarket. The idea was that Fresh &amp; Easy would be a handy neighborhood market, attracting customers who would pop in several times a week, just like shoppers do in Europe. That&rsquo;s not how most Americans shop, however, especially not in the car-heavy, buy-in-bulk West, as one expert told the BBC:</p>

						<p>&ldquo;My sense is that what they tried to do was make a European model,&rdquo; says Prof Anthony Dukes, at the USC Marshall School of Business. &ldquo;Europeans tend to make more frequent trips to grocery stores, maybe every day or every other day, where Americans are used to going for bigger trips less frequently.&rdquo;</p>

						<p>Fairway, by contrast, has just 12 stores, all within about an hour of Manhattan. Staying close to home makes it easier for Fairway to understand and deliver what customers want in a supermarket. If and when the brand expands to other parts of the country, however, it&rsquo;s less clear how the Fairway concept might fare.</p>

						<p>Early on, one of the biggest consumer gripes about Fresh &amp; Easy is that it was neither. &ldquo;Fresh &amp; Easy didn&rsquo;t exactly bowl people over,&rdquo; noted The Packer, a trade publication. &ldquo;Emphasis on prepackaged produce, especially at first, didn&rsquo;t mesh with West Coast consumer sensibilities.&rdquo;</p>

						<p>Vegetables tended to be wrapped in cellophane in bundles, to address the food safety issues Tesco executives thought were a big concern among shoppers. But that often meant shoppers couldn&rsquo;t inspect the tomatoes for bruises or buy just a single onion. The focus on ready-made meals didn&rsquo;t resonate with shoppers either, and it certainly didn&rsquo;t help stores live up to the &ldquo;fresh&rdquo; name.</p>

						<p>As for the &ldquo;easy&rdquo; part of the equation, Fresh &amp; Easy relied on self-checkout, which many shoppers find quite complicated and off-putting. &ldquo;Self checkout lanes not only do not save their customers time but usually take them even more time to check out than customers in standard checkout lanes,&rdquo; read a statement from Big Y, a supermarket chain in the Northeast that eliminating self-checkout in late 2011. &ldquo;Self-checkout lines get clogged as the customers needed to wait for store staff to assist with problems with bar codes, coupons, payment problems and other issues that invariably arise with many transactions.&rdquo;</p>

						<p>Presumably, Fresh &amp; Easy offered convenience in the form of dozens of small neighborhood locations, but because the selection was limited&mdash;and not particularly beloved&mdash;many felt the stores didn&rsquo;t deliver one-stop shopping. And if you need to go grocery shopping after visiting a retailer that bills itself as a grocery store, that&rsquo;s not convenient or easy.</p>

						<p>Fairways, on the other hand, tend to be large (the Red Hook, Brooklyn, location is over 75,000 square feet), with enormous selections of cheese, fish, and exotic treats, and produce that&rsquo;s fresh and squeezable enough to develop something of a cult following. The stores boast &ldquo;strategically placed employees, wearing &lsquo;Do you have a food question today?&rsquo; aprons,&rdquo; as the New York Times put it, as well as all the staples for shoppers looking to stock up during a big weekly grocery run. &ldquo;Fairway has the Bounty paper towels and Coke but also these small-batch, artisanal items that make it an adventure,&rdquo; Philip Lempert told the Times.</p>

						<p>Speaking of adventure, the prospect of surprise, of never knowing what will pop up around the next corner, is one of the reasons that consumers are drawn to Fairway, Whole Foods, Trader Joe&rsquo;s, and, perhaps most notably, Costco, which is always changing its roster of tempting impulse buys.</p>

						<p>Young people especially want a sense of discovery when engaging in what can be the drudgery of grocery shopping. &ldquo;Millennials wake up every morning not wanting to eat the same food twice in their lifetime,&rdquo; Lempert said to the Times.</p>

						<p>In March, when the Los Angeles Times declared Fresh &amp; Easy &ldquo;a flop,&rdquo; one expert said part of the reason for the brand&rsquo;s failure was that it was boring, and that stores didn&rsquo;t customize inventory based on what shoppers liked:</p>

						<p>&ldquo;They offered a uniform assortment in all their stores, meaning a store in upscale Scottsdale, Ariz., would have the same products as in Compton,&rdquo; said Jim Prevor, an industry analyst who is editor of the food retailing website Perishable Pundit.</p>

						<p>The goods at Fairway aren&rsquo;t nearly as cheap as, say, Aldi, the small-format, rapidly growing chain that opened its first location in Manhattan last fall. Still, because Fairway&rsquo;s prices are decent, and because it&rsquo;s known for better quality and a much broader selection of brands than Aldi, or its sister retailer Trader Joe&rsquo;s, Fairway is considered a solid value among its core metropolitan area shoppers.</p>

						<p>By most accounts, the prices at Fresh &amp; Easy weren&rsquo;t bad. &ldquo;A lot of shoppers loved the prices,&rdquo; said Lempert. &ldquo;The wine selection was good too.&rdquo; Even so, &ldquo;the chain&rsquo;s lack of vouchers and coupons alienated price-sensitive shoppers,&rdquo; according to the LA Times.</p>

						<p>The absence of checkout clerks and the minimal customer service in stores also proved to be impersonal and frustrating, even to the point that the shopping experience seemed not only unpleasant, but a bad value.</p>

						<p>&ldquo;They wanted to be the neighborhood market,&rdquo; said Lempert. &ldquo;But the neighborhood market has Tony behind the counter who says hello when you walk in and knows you by name. It was a matter of efficiency versus personality. Ultimately, there was no heart and soul at Fresh &amp; Easy.&rdquo; </p>',
			  title: 'Tale of Two Supermarkets: Why Fresh & Easy Flopped and Fairway Flies High',
			  date: 2013-04-20 00:00:00.000000,
			  photo: nil,
			  short_description: 'Burt Flickinger discusses why Tesco could not find success in the U.S. with their Fresh & Easy concept.',
			  publication: 'Time Business',
			  publication_link: 'http://business.time.com/2013/04/18/tale-of-two-supermarkets-why-fresh-easy-flopped-and-fairway-flies-high/',
			  article_type: 'Industry News',
			  enabled: true,
			  seo_title: 'Tale of Two Supermarkets: Why Fresh & Easy Flopped and Fairway Flies High',
			  seo_description: 'Burt Flickinger discusses why Tesco could not find success in the U.S. with their Fresh & Easy concept',
			  seo_keywords: 'Tesco, Fresh & Easy, Fairway, Retail, Grocery, Supermarket, Burt Flickinger, Strategic Resource Group')

Article.create(author: 'Anne D’Innocenzio',
			  content: '<p>Wal-Mart Stores Inc., the nation&rsquo;s largest grocer and retailer, said Monday that it is making more changes in its operations, training and sourcing as it addresses concerns about the bananas, lettuce and other produce it sells.</p>

						<p>Changes include delivering produce from farms to store shelves more quickly by purchasing fruits and vegetables directly from local growers. It&rsquo;s also conducting independent weekly checks of the produce aisles at its more than 3,400 Supercenters, Neighborhood Markets and Express stores.</p>

						<p>&ldquo;We&rsquo;re listening to our customers and delivering on our promise to offer great produce at the most affordable price,&rdquo; said Jack Sinclair, executive vice president of the grocery business for Wal-Mart&rsquo;s U.S. division, which garnered 55 percent of its total sales last year in groceries, including produce.</p>

						<p>The steps follow several commitments Wal-Mart has made to make the food it sells healthier and more affordable since 2011. As part of that commitment, Wal-Mart reiterated Monday it aims to double the company&rsquo;s sales of local grown produce by December 2015.</p>

						<p>During the company&rsquo;s first quarter, Wal-Mart saw mid-single-digit percentage sales increases in its produce business.</p>

						<p>The moves come as fresh fruits and vegetables have become the latest battleground in the supermarket wars, fueled by shoppers&rsquo; demands for healthier eating and the need for stores to differentiate themselves from rivals.</p>

						<p>Burt Flickinger III, president of retail consultancy Strategic Resource Group, says it&rsquo;s key for grocers to make sure they offer the freshest produce since it carries 50 percent higher profit margins than canned fruits and vegetables.</p>

						<p>&ldquo;Consumers don&rsquo;t have confidence in Wal-Mart&rsquo;s fresh produce the way they have confidence in Whole Foods, Costco and other competitors,&rdquo; says Flickinger.</p>',
			  title: 'Wal-Mart heeds produce doubts',
			  date: 2013-04-20 00:00:00.000000,
			  photo: nil,
			  short_description: 'Burt Flickinger discusses Wal-Mart’s efforts to improve the quality of its fresh fruits and vegetables.',
			  publication: 'Montgomery Advertiser',
			  publication_link: 'http://www.montgomeryadvertiser.com/viewart/20130604/BUSINESS/306040023/',
			  article_type: 'SRG News',
			  enabled: true,
			  seo_title: 'Wal-Mart heeds produce doubts',
			  seo_description: 'Burt Flickinger discusses Wal-Mart’s efforts to improve the quality of its fresh fruits and vegetables.',
			  seo_keywords: 'Burt Flickinger, Strategic resource group, Wal-mart, walmart, grocery, retail, consulting')

