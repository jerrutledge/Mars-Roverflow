extends ReferenceRect
signal deleted

@onready var label = $HBoxContainer/Label

var words = ['Sufficiently', 'Arise', 'Atom', 'Bed', 'Immunology', 'Intl', 'Pointing', 'Feel', 'Goes', 'Put', 'Amazon', 'Assure', 'Ribbon', 'Announced', 'Dublin', 'Champion', 'Within', 'En', 'Yukon', 'Judgment', 'Perform', 'Tex', 'Aids', 'Striking', 'Hq', 'Continental', 'Slowly', 'Genres', 'Nissan', 'Mhz', 'Arrange', 'Grams', 'Staying', 'Recover', 'De', 'Encourage', 'Gibson', 'Official', 'Marijuana', 'Norway', 'Upcoming', 'Pays', 'Ce', 'Actually', 'Golf', 'Header', 'Continued', 'Acoustic', 'Inflation', 'Interpreted', 'Pf', 'Festival', 'Lanes', 'Combine', 'Mtv', 'Cos', 'Beside', 'Cliff', 'Establishment', 'Sublimedirectory', 'Horny', 'Arizona', 'Meanwhile', 'Jr', 'Twinks', 'Endorsement', 'Serve', 'Department', 'Convertible', 'Formerly', 'Vast', 'Federal', 'Cleaning', 'Summary', 'Rooms', 'Us', 'Adams', 'Aggressive', 'Aaron', 'Regard', 'Allocated', 'Pantyhose', 'Grown', 'Restrict', 'Sampling', 'Properly', 'Specialty', 'Seekers', 'His', 'Bolivia', 'Delays', 'Suggested', 'Transactions', 'Party', 'Rugs', 'Pray', 'Massachusetts', 'Activists', 'Pricing', 'Athletic', 'Routing', 'Severe', 'Lock', 'Independently', 'Explained', 'Wearing', 'Manufacturers', 'Lat', 'Beneath', 'Gene', 'Thriller', 'Bench', 'Adaptor', 'Var', 'Killer', 'Mysql', 'Trucks', 'Og', 'Eagle', 'Fishing', 'Diff', 'Photos', 'Bands', 'Patrol', 'Config', 'Offered', 'Tv', 'Note', 'Regularly', 'Capability', 'Aggregate', 'Author', 'Tender', 'Topless', 'Formed', 'Attached', 'Network', 'Generation', 'Consistently', 'Perceived', 'Global', 'Imperial', 'Decent', 'Deck', 'Rent', 'Clothes', 'Delivered', 'Spas', 'Trailers', 'Hope', 'Timely', 'Execute', 'Euros', 'Cox', 'Shannon', 'Cap', 'Genuine', 'Fool', 'Inch', 'Sucking', 'Grow', 'Singapore', 'Integrity', 'Ali', 'Enable', 'Advice', 'Festivals', 'Reasons', 'Crimes', 'Kai', 'Zero', 'Conceptual', 'Acid', 'Shipment', 'Pockets', 'Significance', 'Learning', 'Bush', 'Buttons', 'Perfectly', 'Were', 'Temperatures', 'Signal', 'Being', 'Desired', 'Bid', 'Replacing', 'Case', 'Regions', 'Providers', 'Blogger', 'Usgs', 'Direction', 'Decisions', 'Documented', 'Marble', 'Brave', 'Carmen', 'Maintain', 'Dependence', 'Went', 'Insulation', 'Muscle', 'Insured', 'Institution', 'Incomplete', 'Robert', 'All', 'Late', 'Instantly', 'Receptor', 'Pointer', 'Anthony', 'Makers', 'Else', 'November', 'Rogers', 'Nb', 'Surgeon', 'Super', 'Thank', 'Ahead', 'Indonesia', 'Pads', 'Elect', 'Somebody', 'Baths', 'Recreational', 'Documentation', 'Preceding', 'Denial', 'Memo', 'Nerve', 'Diverse', 'Bankruptcy', 'Father', 'Aimed', 'Horses', 'Holder', 'Marc', 'Revolution', 'Columbia', 'Labeled', 'Shopper', 'Photo', 'Concerning', 'Forgot', 'Pipes', 'Release', 'Rank', 'Placement', 'Actress', 'Pg', 'Forestry', 'Usr', 'Reno', 'Readers', 'Searching', 'Artists', 'Compact', 'Qualification', 'Ethnic', 'Discover', 'Determining', 'Dans', 'Word', 'Willow', 'Objective', 'Rounds', 'Chairs', 'Achievements', 'Alike', 'Postal', 'Multiple', 'Congress', 'Insights', 'Effect', 'Boards', 'Activity', 'Hdtv', 'Thermal', 'Legend', 'Dept', 'Mexican', 'Scsi', 'Mistake', 'Offshore', 'Values', 'Sent', 'Don', 'H', 'Jefferson', 'Spank', 'Reload', 'Generator', 'Files', 'Pond', 'Darkness', 'Problems', 'Worship', 'Pamela', 'Collectibles', 'System', 'Contemporary', 'Characteristics', 'Grades', 'Canal', 'Lenders', 'Rights', 'Muslims', 'Crm', 'Center', 'Exemption', 'Beds', 'Transmission', 'Generated', 'Agrees', 'Chance', 'Constitution', 'Thumbzilla', 'Apt', 'Corpus', 'Deutsch', 'African', 'Promoting', 'Governance', 'Star', 'Vt', 'Followed', 'Stroke', 'Verified', 'Retreat', 'Completely', 'Nominated', 'Hb', 'Coast', 'Physical', 'Export', 'Range', 'Pubmed', 'Antenna', 'Less', 'Evaluations', 'Fiber', 'Workforce', 'Prospect', 'Nav', 'Candidates', 'Assign', 'Moments', 'Settings', 'Many', 'Vol', 'Okay', 'Label', 'Judges', 'Pool', 'Pearl', 'Celebrities', 'Identity', 'Guide', 'Volunteers', 'Conduct', 'Victorian', 'Bangbus', 'Belgium', 'Scanner', 'Thesis', 'Product', 'Dealtime', 'Modifications', 'Ea', 'Roy', 'Holy', 'Sussex', 'Affiliate', 'Construct', 'Mumbai', 'Zshops', 'Ratio', 'Reviewing', 'Wi', 'Machine', 'Adware', 'Secrets', 'Republican', 'Hobby', 'Prefix', 'Energy', 'Exclusively', 'Ought', 'Based', 'Presidential', 'Violin', 'Implement', 'Admin', 'Fraser', 'Scripts', 'Taxation', 'Suspected', 'Tiger', 'Jennifer', 'Highs', 'Expo', 'Surprise', 'Same', 'Deluxe', 'Furnished', 'Arising', 'Insider', 'Linux', 'Consider', 'Sets', 'Subscriptions', 'Knights', 'Shipping', 'Outlet', 'Children', 'Replied', 'Directory', 'Kills', 'Fun', 'Modeling', 'Trap', 'Marie', 'Serbia', 'Ram', 'Adsl', 'Extraordinary', 'Pole', 'Specials', 'Guns', 'Agreed', 'Sale', 'Sufficient', 'Outcomes', 'Badly', 'Submissions', 'Unions', 'Bennett', 'Tigers', 'Departments', 'Trainers', 'Jan', 'Measured', 'Ri', 'Italy', 'Yahoo', 'Florists', 'Weekly', 'Im', 'Korea', 'Edgar', 'Peru', 'Needs', 'Pack', 'Talk', 'Restrictions', 'Voluntary', 'Recent', 'Literature', 'Somalia', 'Readily', 'Nottingham', 'Screen', 'Valuable', 'Thinks', 'Robot', 'Soil', 'Tear', 'Ai', 'Unit', 'Somerset', 'Worst', 'Partnership', 'Enterprises', 'Bowl', 'Investor', 'Cheats', 'Room', 'Seek', 'Similar', 'Types', 'Clearing', 'Applications', 'Interest', 'Reveals', 'Kinase', 'Busty', 'Chapters', 'Stolen', 'Trademarks', 'Answers', 'Efficiency', 'Nil', 'Spotlight', 'Rated', 'Themselves', 'Evaluation', 'Cleanup']
#var elements = ['Hydrogen', 'Helium', 'Lithium', 'Beryllium', 'Boron', 'Carbon', 'Nitrogen', 'Oxygen', 'Fluorine', 'Neon', 'Sodium', 'Magnesium', 'Aluminium', 'Silicon', 'Phosphorus', 'Sulfur', 'Chlorine', 'Argon', 'Potassium', 'Calcium', 'Scandium', 'Titanium', 'Vanadium', 'Chromium', 'Manganese', 'Iron', 'Cobalt', 'Nickel', 'Copper', 'Zinc', 'Gallium', 'Germanium', 'Arsenic', 'Selenium', 'Bromine', 'Krypton', 'Rubidium', 'Strontium', 'Yttrium', 'Zirconium', 'Niobium', 'Molybdenum', 'Technetium', 'Ruthenium', 'Rhodium', 'Palladium', 'Silver', 'Cadmium', 'Indium', 'Tin', 'Antimony', 'Tellurium', 'Iodine', 'Xenon', 'Caesium', 'Barium', 'Lanthanum', 'Cerium', 'Praseodymium', 'Neodymium', 'Promethium', 'Samarium', 'Europium', 'Gadolinium', 'Terbium', 'Dysprosium', 'Holmium', 'Erbium', 'Thulium', 'Ytterbium', 'Lutetium', 'Hafnium', 'Tantalum', 'Tungsten', 'Rhenium', 'Osmium', 'Iridium', 'Platinum', 'Gold', 'Mercury', 'Thallium', 'Lead', 'Bismuth', 'Polonium', 'Astatine', 'Radon', 'Francium', 'Radium', 'Actinium', 'Thorium', 'Protactinium', 'Uranium', 'Neptunium', 'Plutonium', 'Americium', 'Curium', 'Berkelium', 'Californium', 'Einsteinium', 'Fermium']
var elements = ['Carbon']

var hex_chars = "0123456789ABCDEF"
var data : String = ""
var contains_element: bool = false
var selected: bool = false
var file_name: String = ""
var is_virus: bool = false
var timer : Timer = null

func _ready():
	if data == "":
		var element_index = -1
		if (randi() %3 > 0 and (not is_virus)):
			contains_element = true
			element_index = randi() % 14
		
		for i in range(14):
			if i == element_index:
				data += elements[randi() % len(elements)]
			else:
				data += words[randi() %len(words)]
			for j in range(4):
				#data += hex_chars[randi() % 16]
				data += '     '
		
		
	file_name = data.substr(0, 20) + "..."
	label.text = file_name
	if is_virus:
		timer = Timer.new()
		add_child(timer)
		timer.timeout.connect(replicate)
		timer.start(randi_range(4, 8))
		label.text = "V" + label.text

var double_click_limit = 200.0
var last_click_time = 0.0

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if position.x < event.position.x and event.position.x < position.x + size.x and \
			position.y < event.position.y and event.position.y < position.y + size.y:
			selected = true
			$SelectRect.visible = true
			var current_time = Time.get_ticks_msec()
			if current_time - last_click_time < double_click_limit:
				Global._on_open_item(self)
			else:
				last_click_time = current_time
				Global.get_desktop().make_dragged_item(self)
		else:
			selected = true
			$SelectRect.visible = false
	if Input.is_action_pressed('delete'):
		if selected:

			delete_item()

func delete_item():
	Global.play_deleted_sound()
	deleted.emit()
	queue_free()

func replicate():
	Global.make_new_virus(self)
	timer.start(randi_range(10, 18))

func _on_moved():
	queue_free()
