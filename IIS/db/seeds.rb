# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Branch.create([
	{address: 'Praha'},
	{address: 'Brno'},
	{address: 'Ostrava'},
	{address: 'Olomouc'}
])
Supplier.create([
	{name:'Adclen'}, 
	{name:'Ibmo'},
	{name:'Enigmotors'},
	{name:'Caverntime'},
	{name:'Nestle'},
	{name:'Hercules Industries'},
	{name:'Coca-Cola'},
	{name:'Smilectronics'},
	{name:'DrogyProVsechny'},
	{name:'ShadyGuy'}
])
Insurer.create([
	{orgid:'41197518',name:'Všeobecná zdravotní pojišťovna', code:'111'}, 
	{orgid:'47114975',name:'Vojenská zdravotní pojišťovna', code:'201'},
	{orgid:'47672234',name:'Česká průmyslová zdravotní pojišťovna', code:'205'}, 
	{orgid:'46354182',name:'Zaměstnanecká pojišťovna Škoda', code:'209'}, 
	{orgid:'47114304',name:'Zdravotní pojišťovna ministerstva vnitra', code:'211'}
])
Drug.create([
	{name:'Adrenalin', price:'999', prescription:'true', supplier_id:'1', bprice:'899'},
	{name:'Clavin', price:'499', prescription:'false', supplier_id:'1', bprice:'69'},
	{name:'Endiaron', price:'129', prescription:'false', supplier_id:'1', bprice:'99'},
	{name:'Ibalgin', price:'89', prescription:'false', supplier_id:'1', bprice:'49'},
	{name:'ACC', price:'1416', prescription:'false', supplier_id:'1', bprice:'1299'},
	{name:'Activelle', price:'103', prescription:'true', supplier_id:'1', bprice:'80'},
	{name:'Braunol', price:'305', prescription:'true', supplier_id:'1', bprice:'210'},
	{name:'Colafit', price:'289', prescription:'true', supplier_id:'1', bprice:'244'},
	{name:'Depocyte', price:'388', prescription:'true', supplier_id:'1', bprice:'313'},
	{name:'Duracef', price:'187', prescription:'true', supplier_id:'1', bprice:'149'},

	{name:'Elernap', price:'812', prescription:'true', supplier_id:'2', bprice:'700'},
	{name:'Emona', price:'218', prescription:'false', supplier_id:'2', bprice:'199'},
	{name:'Esoprex', price:'659', prescription:'false', supplier_id:'2', bprice:'555'},
	{name:'Fosinopril', price:'421', prescription:'false', supplier_id:'2', bprice:'401'},
	{name:'Glaudix', price:'506', prescription:'false', supplier_id:'2', bprice:'404'},
	{name:'Hartil', price:'270', prescription:'true', supplier_id:'2', bprice:'214'},
	{name:'Humira', price:'164', prescription:'true', supplier_id:'2', bprice:'133'},
	{name:'Ibandronat', price:'669', prescription:'true', supplier_id:'2', bprice:'555'},
	{name:'Ibustrin', price:'155', prescription:'true', supplier_id:'2', bprice:'100'},
	{name:'Imunor', price:'182', prescription:'true', supplier_id:'2', bprice:'99'},

	{name:'Infadolan', price:'156', prescription:'true', supplier_id:'3', bprice:'99'},
	{name:'Jakavi', price:'666', prescription:'false', supplier_id:'3', bprice:'555'},
	{name:'Kaletra', price:'624', prescription:'false', supplier_id:'3', bprice:'423'},
	{name:'Kanamycin', price:'620', prescription:'false', supplier_id:'3', bprice:'453'},
	{name:'Keppra', price:'490', prescription:'false', supplier_id:'3', bprice:'378'},
	{name:'Ketof', price:'288', prescription:'true', supplier_id:'3', bprice:'156'},
	{name:'King Kong', price:'202', prescription:'true', supplier_id:'3', bprice:'111'},
	{name:'Kloptimar', price:'427', prescription:'true', supplier_id:'3', bprice:'401'},
	{name:'Lamuna', price:'269', prescription:'true', supplier_id:'3', bprice:'222'},
	{name:'Lazurex', price:'178', prescription:'true', supplier_id:'3', bprice:'150'},

	{name:'Leflunomid', price:'505', prescription:'true', supplier_id:'4', bprice:'442'},
	{name:'Letabex', price:'623', prescription:'false', supplier_id:'4', bprice:'125'},
	{name:'Lisipril', price:'343', prescription:'false', supplier_id:'4', bprice:'126'},
	{name:'Lopacut', price:'192', prescription:'false', supplier_id:'4', bprice:'122'},
	{name:'Losartan', price:'609', prescription:'false', supplier_id:'4', bprice:'559'},
	{name:'Lusopress', price:'147', prescription:'true', supplier_id:'4', bprice:'88'},
	{name:'Magrilan', price:'550', prescription:'true', supplier_id:'4', bprice:'442'},
	{name:'Maratia', price:'83', prescription:'true', supplier_id:'4', bprice:'13'},
	{name:'Meaxin', price:'609', prescription:'true', supplier_id:'4', bprice:'99'},
	{name:'Medoxin', price:'78', prescription:'true', supplier_id:'4', bprice:'44'},

	{name:'Menoxol', price:'426', prescription:'true', supplier_id:'5', bprice:'411'},
	{name:'Metamistad', price:'121', prescription:'false', supplier_id:'5', bprice:'98'},
	{name:'Micetal', price:'666', prescription:'false', supplier_id:'5', bprice:'447'},
	{name:'Mimpara', price:'133', prescription:'false', supplier_id:'5', bprice:'123'},
	{name:'Mirena', price:'479', prescription:'false', supplier_id:'5', bprice:'54'},
	{name:'Mivacron', price:'229', prescription:'true', supplier_id:'5', bprice:'321'},
	{name:'Mollome', price:'664', prescription:'true', supplier_id:'5', bprice:'564'},
	{name:'Momespir', price:'66', prescription:'true', supplier_id:'5', bprice:'´33'},
	{name:'Morysa', price:'362', prescription:'true', supplier_id:'5', bprice:'285'},
	{name:'Mucosin', price:'105', prescription:'true', supplier_id:'5', bprice:'55'},

	{name:'Muscoaktiv', price:'209', prescription:'true', supplier_id:'6', bprice:'199'},
	{name:'Mylazelle', price:'156', prescription:'false', supplier_id:'6', bprice:'142'},
	{name:'Naloxone', price:'115', prescription:'false', supplier_id:'6', bprice:'88'},
	{name:'Nasenspray AL', price:'652', prescription:'false', supplier_id:'6', bprice:'538'},
	{name:'Natalya', price:'459', prescription:'false', supplier_id:'6', bprice:'333'},
	{name:'Navirel', price:'179', prescription:'true', supplier_id:'6', bprice:'88'},
	{name:'Nebilet', price:'396', prescription:'true', supplier_id:'6', bprice:'87'},
	{name:'Neocapil', price:'529', prescription:'true', supplier_id:'6', bprice:'444'},
	{name:'Neotigason', price:'644', prescription:'true', supplier_id:'6', bprice:'611'},
	{name:'Neupro', price:'415', prescription:'true', supplier_id:'6', bprice:'333'},

	{name:'Nevanac', price:'335', prescription:'true', supplier_id:'7', bprice:'220'},
	{name:'Ninivet', price:'644', prescription:'false', supplier_id:'7', bprice:'75'},
	{name:'Nitresan', price:'552', prescription:'false', supplier_id:'7', bprice:'456'},
	{name:'No-Prostal', price:'64', prescription:'false', supplier_id:'7', bprice:'50'},
	{name:'Noflux', price:'117', prescription:'false', supplier_id:'7', bprice:'111'},
	{name:'Nolodon', price:'547', prescription:'true', supplier_id:'7', bprice:'511'},
	{name:'Noprex', price:'452', prescription:'true', supplier_id:'7', bprice:'111'},
	{name:'Normaglyc', price:'398', prescription:'true', supplier_id:'7', bprice:'333'},
	{name:'Nortrilen', price:'378', prescription:'true', supplier_id:'7', bprice:'222'},
	{name:'Noxilan', price:'117', prescription:'true', supplier_id:'7', bprice:'66'},

	{name:'Nuwiq', price:'2199', prescription:'true', supplier_id:'8', bprice:'1999'},
	{name:'Octanate', price:'177', prescription:'false', supplier_id:'8', bprice:'50'},
	{name:'Odomzo', price:'524', prescription:'false', supplier_id:'8', bprice:'422'},
	{name:'Oftagel', price:'174', prescription:'false', supplier_id:'8', bprice:'62'},
	{name:'Olicard', price:'297', prescription:'false', supplier_id:'8', bprice:'111'},
	{name:'Olpinat', price:'274', prescription:'true', supplier_id:'8', bprice:'134'},
	{name:'Omacor', price:'530', prescription:'true', supplier_id:'8', bprice:'486'},
	{name:'Oneza', price:'602', prescription:'true', supplier_id:'8', bprice:'554'},
	{name:'Opiodur', price:'161', prescription:'true', supplier_id:'8', bprice:'100'},
	{name:'Orasept', price:'102', prescription:'true', supplier_id:'8', bprice:'66'},

	{name:'Platidiam', price:'337', prescription:'true', supplier_id:'9', bprice:'111'},
	{name:'Premed', price:'147', prescription:'false', supplier_id:'9', bprice:'99'},
	{name:'Regisha', price:'313', prescription:'false', supplier_id:'9', bprice:'220'},
	{name:'Repatha', price:'336', prescription:'false', supplier_id:'9', bprice:'333'},
	{name:'Rhefluin', price:'365', prescription:'false', supplier_id:'9', bprice:'333'},
	{name:'Rispolux', price:'572', prescription:'true', supplier_id:'9', bprice:'555'},
	{name:'Rixubis', price:'479', prescription:'true', supplier_id:'9', bprice:'444'},
	{name:'Rotinal', price:'380', prescription:'true', supplier_id:'9', bprice:'333'},
	{name:'Sangona', price:'549', prescription:'true', supplier_id:'9', bprice:'500'},
	{name:'Septolete', price:'54', prescription:'true', supplier_id:'9', bprice:'50'},

	{name:'Platidiam', price:'289', prescription:'true', supplier_id:'10', bprice:'288'},
	{name:'Premed', price:'375', prescription:'false', supplier_id:'10', bprice:'372'},
	{name:'Regisha', price:'57', prescription:'false', supplier_id:'10', bprice:'40'},
	{name:'Repatha', price:'369', prescription:'false', supplier_id:'10', bprice:'300'},
	{name:'Rhefluin', price:'336', prescription:'false', supplier_id:'10', bprice:'300'},
	{name:'Rispolux', price:'498', prescription:'true', supplier_id:'10', bprice:'400'},
	{name:'Rixubis', price:'378', prescription:'true', supplier_id:'10', bprice:'222'},
	{name:'Rotinal', price:'565', prescription:'true', supplier_id:'10', bprice:'432'},
	{name:'Sangona', price:'379', prescription:'true', supplier_id:'10', bprice:'355'},
	{name:'Septolete', price:'85', prescription:'true', supplier_id:'10', bprice:'66'}
])

Reservation.new(customer:'Jurassic Park', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Reservation.new(customer:'Bear Trapp', date:Time.strptime('06/1/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Reservation.new(customer:'Beezow Doo-Doo Zopittybop-Bop-Bop', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Reservation.new(customer:'Connor Mc Gregor', date:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Reservation.new(customer:'Radek Wildmann', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Reservation.new(customer:'Batman Bin Suparman', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Reservation.new(customer:'North West', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'2').save(validate: false)
Reservation.new(customer:'Prince William', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'2').save(validate: false)
Reservation.new(customer:'Albert Einstein', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'3').save(validate: false)
Reservation.new(customer:'Bill Gates', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'4').save(validate: false)
Reservation.new(customer:'Láďa Hruška', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Reservation.new(customer:'Donald Trump',date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Reservation.new(customer:'Anna Nas', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'2').save(validate: false)
Reservation.new(customer:'Dežo Dorant', date:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'3').save(validate: false)

Available.create([
	{branch_id:'1', drug_id:'1', amount:'17'}, 
	{branch_id:'2', drug_id:'1', amount:'15'},
	{branch_id:'3', drug_id:'1', amount:'29'},
	{branch_id:'4', drug_id:'1', amount:'7'},

	{branch_id:'1', drug_id:'2', amount:'3'}, 
	{branch_id:'2', drug_id:'2', amount:'4'},
	{branch_id:'3', drug_id:'2', amount:'37'},
	{branch_id:'4', drug_id:'2', amount:'42'},

	{branch_id:'1', drug_id:'3', amount:'40'}, 
	{branch_id:'2', drug_id:'3', amount:'24'},
	{branch_id:'3', drug_id:'3', amount:'29'},
	{branch_id:'4', drug_id:'3', amount:'38'},

	{branch_id:'1', drug_id:'4', amount:'38'}, 
	{branch_id:'2', drug_id:'4', amount:'10'},
	{branch_id:'3', drug_id:'4', amount:'0'},
	{branch_id:'4', drug_id:'4', amount:'45'},

	{branch_id:'1', drug_id:'5', amount:'25'}, 
	{branch_id:'2', drug_id:'5', amount:'43'},
	{branch_id:'3', drug_id:'5', amount:'31'},
	{branch_id:'4', drug_id:'5', amount:'6'},

	{branch_id:'1', drug_id:'6', amount:'34'}, 
	{branch_id:'2', drug_id:'6', amount:'16'},
	{branch_id:'3', drug_id:'6', amount:'40'},
	{branch_id:'4', drug_id:'6', amount:'15'},

	{branch_id:'1', drug_id:'7', amount:'8'}, 
	{branch_id:'2', drug_id:'7', amount:'32'},
	{branch_id:'3', drug_id:'7', amount:'19'},
	{branch_id:'4', drug_id:'7', amount:'16'},

	{branch_id:'1', drug_id:'8', amount:'40'}, 
	{branch_id:'2', drug_id:'8', amount:'38'},
	{branch_id:'3', drug_id:'8', amount:'28'},
	{branch_id:'4', drug_id:'8', amount:'17'},

	{branch_id:'1', drug_id:'9', amount:'37'}, 
	{branch_id:'2', drug_id:'9', amount:'31'},
	{branch_id:'3', drug_id:'9', amount:'26'},
	{branch_id:'4', drug_id:'9', amount:'42'},

	{branch_id:'1', drug_id:'10', amount:'35'}, 
	{branch_id:'2', drug_id:'10', amount:'47'},
	{branch_id:'3', drug_id:'10', amount:'28'},
	{branch_id:'4', drug_id:'10', amount:'23'},
	
	{branch_id:'1', drug_id:'11', amount:'9'}, 
	{branch_id:'2', drug_id:'11', amount:'43'},
	{branch_id:'3', drug_id:'11', amount:'11'},
	{branch_id:'4', drug_id:'11', amount:'31'},

	{branch_id:'1', drug_id:'12', amount:'33'}, 
	{branch_id:'2', drug_id:'12', amount:'17'},
	{branch_id:'3', drug_id:'12', amount:'43'},
	{branch_id:'4', drug_id:'12', amount:'42'},

	{branch_id:'1', drug_id:'13', amount:'12'}, 
	{branch_id:'2', drug_id:'13', amount:'27'},
	{branch_id:'3', drug_id:'13', amount:'7'},
	{branch_id:'4', drug_id:'13', amount:'49'},

	{branch_id:'1', drug_id:'14', amount:'5'}, 
	{branch_id:'2', drug_id:'14', amount:'11'},
	{branch_id:'3', drug_id:'14', amount:'19'},
	{branch_id:'4', drug_id:'14', amount:'9'},

	{branch_id:'1', drug_id:'15', amount:'10'}, 
	{branch_id:'2', drug_id:'15', amount:'39'},
	{branch_id:'3', drug_id:'15', amount:'12'},
	{branch_id:'4', drug_id:'15', amount:'42'},

	{branch_id:'1', drug_id:'16', amount:'7'}, 
	{branch_id:'2', drug_id:'16', amount:'2'},
	{branch_id:'3', drug_id:'16', amount:'48'},
	{branch_id:'4', drug_id:'16', amount:'7'},

	{branch_id:'1', drug_id:'17', amount:'35'}, 
	{branch_id:'2', drug_id:'17', amount:'12'},
	{branch_id:'3', drug_id:'17', amount:'1'},
	{branch_id:'4', drug_id:'17', amount:'6'},

	{branch_id:'1', drug_id:'18', amount:'48'}, 
	{branch_id:'2', drug_id:'18', amount:'30'},
	{branch_id:'3', drug_id:'18', amount:'37'},
	{branch_id:'4', drug_id:'18', amount:'9'},	

	{branch_id:'1', drug_id:'19', amount:'46'}, 
	{branch_id:'2', drug_id:'19', amount:'28'},
	{branch_id:'3', drug_id:'19', amount:'42'},
	{branch_id:'4', drug_id:'19', amount:'32'},

	{branch_id:'1', drug_id:'20', amount:'15'}, 
	{branch_id:'2', drug_id:'20', amount:'0'},
	{branch_id:'3', drug_id:'20', amount:'14'},
	{branch_id:'4', drug_id:'20', amount:'31'},

	{branch_id:'1', drug_id:'21', amount:'31'}, 
	{branch_id:'2', drug_id:'21', amount:'1'},
	{branch_id:'3', drug_id:'21', amount:'7'},
	{branch_id:'4', drug_id:'21', amount:'2'},

	{branch_id:'1', drug_id:'22', amount:'0'}, 
	{branch_id:'2', drug_id:'22', amount:'41'},
	{branch_id:'3', drug_id:'22', amount:'15'},
	{branch_id:'4', drug_id:'22', amount:'14'},

	{branch_id:'1', drug_id:'23', amount:'23'}, 
	{branch_id:'2', drug_id:'23', amount:'37'},
	{branch_id:'3', drug_id:'23', amount:'47'},
	{branch_id:'4', drug_id:'23', amount:'50'},

	{branch_id:'1', drug_id:'24', amount:'7'}, 
	{branch_id:'2', drug_id:'24', amount:'3'},
	{branch_id:'3', drug_id:'24', amount:'5'},
	{branch_id:'4', drug_id:'24', amount:'9'},

	{branch_id:'1', drug_id:'25', amount:'11'}, 
	{branch_id:'2', drug_id:'25', amount:'22'},
	{branch_id:'3', drug_id:'25', amount:'33'},
	{branch_id:'4', drug_id:'25', amount:'44'},

	{branch_id:'1', drug_id:'26', amount:'1'}, 
	{branch_id:'2', drug_id:'26', amount:'2'},
	{branch_id:'3', drug_id:'26', amount:'3'},
	{branch_id:'4', drug_id:'26', amount:'4'},

	{branch_id:'1', drug_id:'27', amount:'5'}, 
	{branch_id:'2', drug_id:'27', amount:'6'},
	{branch_id:'3', drug_id:'27', amount:'7'},
	{branch_id:'4', drug_id:'27', amount:'8'},

	{branch_id:'1', drug_id:'28', amount:'9'}, 
	{branch_id:'2', drug_id:'28', amount:'8'},
	{branch_id:'3', drug_id:'28', amount:'7'},
	{branch_id:'4', drug_id:'28', amount:'6'},	

	{branch_id:'1', drug_id:'29', amount:'12'}, 
	{branch_id:'2', drug_id:'29', amount:'16'},
	{branch_id:'3', drug_id:'29', amount:'18'},
	{branch_id:'4', drug_id:'29', amount:'20'},

	{branch_id:'1', drug_id:'30', amount:'13'}, 
	{branch_id:'2', drug_id:'30', amount:'15'},
	{branch_id:'3', drug_id:'30', amount:'16'},
	{branch_id:'4', drug_id:'30', amount:'23'},

	{branch_id:'1', drug_id:'31', amount:'33'}, 
	{branch_id:'2', drug_id:'31', amount:'32'},
	{branch_id:'3', drug_id:'31', amount:'32'},
	{branch_id:'4', drug_id:'31', amount:'31'},

	{branch_id:'1', drug_id:'32', amount:'1'}, 
	{branch_id:'2', drug_id:'32', amount:'1'},
	{branch_id:'3', drug_id:'32', amount:'1'},
	{branch_id:'4', drug_id:'32', amount:'12'},

	{branch_id:'1', drug_id:'33', amount:'33'}, 
	{branch_id:'2', drug_id:'33', amount:'15'},
	{branch_id:'3', drug_id:'33', amount:'18'},
	{branch_id:'4', drug_id:'33', amount:'22'},

	{branch_id:'1', drug_id:'34', amount:'44'}, 
	{branch_id:'2', drug_id:'34', amount:'33'},
	{branch_id:'3', drug_id:'34', amount:'22'},
	{branch_id:'4', drug_id:'34', amount:'23'},

	{branch_id:'1', drug_id:'35', amount:'1'}, 
	{branch_id:'2', drug_id:'35', amount:'2'},
	{branch_id:'3', drug_id:'35', amount:'45'},
	{branch_id:'4', drug_id:'35', amount:'22'},

	{branch_id:'1', drug_id:'36', amount:'11'}, 
	{branch_id:'2', drug_id:'36', amount:'54'},
	{branch_id:'3', drug_id:'36', amount:'22'},
	{branch_id:'4', drug_id:'36', amount:'78'},

	{branch_id:'1', drug_id:'37', amount:'21'}, 
	{branch_id:'2', drug_id:'37', amount:'6'},
	{branch_id:'3', drug_id:'37', amount:'6'},
	{branch_id:'4', drug_id:'37', amount:'2'},

	{branch_id:'1', drug_id:'38', amount:'8'}, 
	{branch_id:'2', drug_id:'38', amount:'8'},
	{branch_id:'3', drug_id:'38', amount:'48'},
	{branch_id:'4', drug_id:'38', amount:'18'},	

	{branch_id:'1', drug_id:'39', amount:'38'}, 
	{branch_id:'2', drug_id:'39', amount:'34'},
	{branch_id:'3', drug_id:'39', amount:'21'},
	{branch_id:'4', drug_id:'39', amount:'12'},

	{branch_id:'1', drug_id:'40', amount:'0'}, 
	{branch_id:'2', drug_id:'40', amount:'1'},
	{branch_id:'3', drug_id:'40', amount:'3'},
	{branch_id:'4', drug_id:'40', amount:'5'},

	{branch_id:'1', drug_id:'41', amount:'8'}, 
	{branch_id:'2', drug_id:'41', amount:'9'},
	{branch_id:'3', drug_id:'41', amount:'0'},
	{branch_id:'4', drug_id:'41', amount:'22'},

	{branch_id:'1', drug_id:'42', amount:'16'}, 
	{branch_id:'2', drug_id:'42', amount:'15'},
	{branch_id:'3', drug_id:'42', amount:'14'},
	{branch_id:'4', drug_id:'42', amount:'13'},

	{branch_id:'1', drug_id:'43', amount:'1'}, 
	{branch_id:'2', drug_id:'43', amount:'3'},
	{branch_id:'3', drug_id:'43', amount:'4'},
	{branch_id:'4', drug_id:'43', amount:'7'},

	{branch_id:'1', drug_id:'44', amount:'11'}, 
	{branch_id:'2', drug_id:'44', amount:'19'},
	{branch_id:'3', drug_id:'44', amount:'30'},
	{branch_id:'4', drug_id:'44', amount:'49'},

	{branch_id:'1', drug_id:'45', amount:'45'}, 
	{branch_id:'2', drug_id:'45', amount:'40'},
	{branch_id:'3', drug_id:'45', amount:'35'},
	{branch_id:'4', drug_id:'45', amount:'30'},

	{branch_id:'1', drug_id:'46', amount:'25'}, 
	{branch_id:'2', drug_id:'46', amount:'20'},
	{branch_id:'3', drug_id:'46', amount:'0'},
	{branch_id:'4', drug_id:'46', amount:'15'},

	{branch_id:'1', drug_id:'47', amount:'5'}, 
	{branch_id:'2', drug_id:'47', amount:'10'},
	{branch_id:'3', drug_id:'47', amount:'0'},
	{branch_id:'4', drug_id:'47', amount:'11'},

	{branch_id:'1', drug_id:'48', amount:'1'}, 
	{branch_id:'2', drug_id:'48', amount:'8'},
	{branch_id:'3', drug_id:'48', amount:'7'},
	{branch_id:'4', drug_id:'48', amount:'6'},	

	{branch_id:'1', drug_id:'49', amount:'10'}, 
	{branch_id:'2', drug_id:'49', amount:'9'},
	{branch_id:'3', drug_id:'49', amount:'7'},
	{branch_id:'4', drug_id:'49', amount:'8'},

	{branch_id:'1', drug_id:'50', amount:'10'}, 
	{branch_id:'2', drug_id:'50', amount:'6'},
	{branch_id:'3', drug_id:'50', amount:'2'},
	{branch_id:'4', drug_id:'50', amount:'8'},

	{branch_id:'1', drug_id:'51', amount:'34'}, 
	{branch_id:'2', drug_id:'51', amount:'0'},
	{branch_id:'3', drug_id:'51', amount:'14'},
	{branch_id:'4', drug_id:'51', amount:'48'},

	{branch_id:'1', drug_id:'52', amount:'3'}, 
	{branch_id:'2', drug_id:'52', amount:'6'},
	{branch_id:'3', drug_id:'52', amount:'9'},
	{branch_id:'4', drug_id:'52', amount:'12'},

	{branch_id:'1', drug_id:'53', amount:'15'}, 
	{branch_id:'2', drug_id:'53', amount:'18'},
	{branch_id:'3', drug_id:'53', amount:'21'},
	{branch_id:'4', drug_id:'53', amount:'24'},

	{branch_id:'1', drug_id:'54', amount:'27'}, 
	{branch_id:'2', drug_id:'54', amount:'30'},
	{branch_id:'3', drug_id:'54', amount:'33'},
	{branch_id:'4', drug_id:'54', amount:'36'},

	{branch_id:'1', drug_id:'55', amount:'2'}, 
	{branch_id:'2', drug_id:'55', amount:'4'},
	{branch_id:'3', drug_id:'55', amount:'6'},
	{branch_id:'4', drug_id:'55', amount:'8'},

	{branch_id:'1', drug_id:'56', amount:'10'}, 
	{branch_id:'2', drug_id:'56', amount:'12'},
	{branch_id:'3', drug_id:'56', amount:'14'},
	{branch_id:'4', drug_id:'56', amount:'16'},

	{branch_id:'1', drug_id:'57', amount:'0'}, 
	{branch_id:'2', drug_id:'57', amount:'4'},
	{branch_id:'3', drug_id:'57', amount:'8'},
	{branch_id:'4', drug_id:'57', amount:'12'},

	{branch_id:'1', drug_id:'58', amount:'12'}, 
	{branch_id:'2', drug_id:'58', amount:'5'},
	{branch_id:'3', drug_id:'58', amount:'4'},
	{branch_id:'4', drug_id:'58', amount:'0'},

	{branch_id:'1', drug_id:'59', amount:'1'}, 
	{branch_id:'2', drug_id:'59', amount:'2'},
	{branch_id:'3', drug_id:'59', amount:'3'},
	{branch_id:'4', drug_id:'59', amount:'4'},

	{branch_id:'1', drug_id:'60', amount:'5'}, 
	{branch_id:'2', drug_id:'60', amount:'6'},
	{branch_id:'3', drug_id:'60', amount:'7'},
	{branch_id:'4', drug_id:'60', amount:'8'},
	
	{branch_id:'1', drug_id:'61', amount:'9'}, 
	{branch_id:'2', drug_id:'61', amount:'8'},
	{branch_id:'3', drug_id:'61', amount:'7'},
	{branch_id:'4', drug_id:'61', amount:'6'},

	{branch_id:'1', drug_id:'62', amount:'16'}, 
	{branch_id:'2', drug_id:'62', amount:'45'},
	{branch_id:'3', drug_id:'62', amount:'12'},
	{branch_id:'4', drug_id:'62', amount:'0'},

	{branch_id:'1', drug_id:'63', amount:'3'}, 
	{branch_id:'2', drug_id:'63', amount:'6'},
	{branch_id:'3', drug_id:'63', amount:'12'},
	{branch_id:'4', drug_id:'63', amount:'24'},

	{branch_id:'1', drug_id:'64', amount:'2'}, 
	{branch_id:'2', drug_id:'64', amount:'4'},
	{branch_id:'3', drug_id:'64', amount:'8'},
	{branch_id:'4', drug_id:'64', amount:'16'},

	{branch_id:'1', drug_id:'65', amount:'32'}, 
	{branch_id:'2', drug_id:'65', amount:'4'},
	{branch_id:'3', drug_id:'65', amount:'8'},
	{branch_id:'4', drug_id:'65', amount:'4'},

	{branch_id:'1', drug_id:'66', amount:'0'}, 
	{branch_id:'2', drug_id:'66', amount:'1'},
	{branch_id:'3', drug_id:'66', amount:'3'},
	{branch_id:'4', drug_id:'66', amount:'7'},

	{branch_id:'1', drug_id:'67', amount:'9'}, 
	{branch_id:'2', drug_id:'67', amount:'11'},
	{branch_id:'3', drug_id:'67', amount:'13'},
	{branch_id:'4', drug_id:'67', amount:'15'},

	{branch_id:'1', drug_id:'68', amount:'12'}, 
	{branch_id:'2', drug_id:'68', amount:'11'},
	{branch_id:'3', drug_id:'68', amount:'13'},
	{branch_id:'4', drug_id:'68', amount:'10'},	

	{branch_id:'1', drug_id:'69', amount:'0'}, 
	{branch_id:'2', drug_id:'69', amount:'0'},
	{branch_id:'3', drug_id:'69', amount:'0'},
	{branch_id:'4', drug_id:'69', amount:'0'},

	{branch_id:'1', drug_id:'70', amount:'12'}, 
	{branch_id:'2', drug_id:'70', amount:'13'},
	{branch_id:'3', drug_id:'70', amount:'14'},
	{branch_id:'4', drug_id:'70', amount:'15'},

	{branch_id:'1', drug_id:'71', amount:'55'}, 
	{branch_id:'2', drug_id:'71', amount:'54'},
	{branch_id:'3', drug_id:'71', amount:'53'},
	{branch_id:'4', drug_id:'71', amount:'52'},

	{branch_id:'1', drug_id:'72', amount:'9'}, 
	{branch_id:'2', drug_id:'72', amount:'8'},
	{branch_id:'3', drug_id:'72', amount:'11'},
	{branch_id:'4', drug_id:'72', amount:'41'},

	{branch_id:'1', drug_id:'73', amount:'1'}, 
	{branch_id:'2', drug_id:'73', amount:'0'},
	{branch_id:'3', drug_id:'73', amount:'22'},
	{branch_id:'4', drug_id:'73', amount:'12'},

	{branch_id:'1', drug_id:'74', amount:'3'}, 
	{branch_id:'2', drug_id:'74', amount:'5'},
	{branch_id:'3', drug_id:'74', amount:'8'},
	{branch_id:'4', drug_id:'74', amount:'9'},

	{branch_id:'1', drug_id:'75', amount:'1'}, 
	{branch_id:'2', drug_id:'75', amount:'0'},
	{branch_id:'3', drug_id:'75', amount:'6'},
	{branch_id:'4', drug_id:'75', amount:'7'},

	{branch_id:'1', drug_id:'76', amount:'8'}, 
	{branch_id:'2', drug_id:'76', amount:'9'},
	{branch_id:'3', drug_id:'76', amount:'7'},
	{branch_id:'4', drug_id:'76', amount:'2'},

	{branch_id:'1', drug_id:'77', amount:'12'}, 
	{branch_id:'2', drug_id:'77', amount:'32'},
	{branch_id:'3', drug_id:'77', amount:'12'},
	{branch_id:'4', drug_id:'77', amount:'77'},

	{branch_id:'1', drug_id:'78', amount:'10'}, 
	{branch_id:'2', drug_id:'78', amount:'6'},
	{branch_id:'3', drug_id:'78', amount:'22'},
	{branch_id:'4', drug_id:'78', amount:'24'},	

	{branch_id:'1', drug_id:'79', amount:'32'}, 
	{branch_id:'2', drug_id:'79', amount:'23'},
	{branch_id:'3', drug_id:'79', amount:'2'},
	{branch_id:'4', drug_id:'79', amount:'7'},

	{branch_id:'1', drug_id:'80', amount:'6'}, 
	{branch_id:'2', drug_id:'80', amount:'7'},
	{branch_id:'3', drug_id:'80', amount:'1'},
	{branch_id:'4', drug_id:'80', amount:'2'},

	{branch_id:'1', drug_id:'81', amount:'0'}, 
	{branch_id:'2', drug_id:'81', amount:'3'},
	{branch_id:'3', drug_id:'81', amount:'0'},
	{branch_id:'4', drug_id:'81', amount:'7'},

	{branch_id:'1', drug_id:'82', amount:'1'}, 
	{branch_id:'2', drug_id:'82', amount:'2'},
	{branch_id:'3', drug_id:'82', amount:'3'},
	{branch_id:'4', drug_id:'82', amount:'4'},

	{branch_id:'1', drug_id:'83', amount:'22'}, 
	{branch_id:'2', drug_id:'83', amount:'8'},
	{branch_id:'3', drug_id:'83', amount:'15'},
	{branch_id:'4', drug_id:'83', amount:'9'},

	{branch_id:'1', drug_id:'84', amount:'39'}, 
	{branch_id:'2', drug_id:'84', amount:'29'},
	{branch_id:'3', drug_id:'84', amount:'19'},
	{branch_id:'4', drug_id:'84', amount:'9'},

	{branch_id:'1', drug_id:'85', amount:'12'}, 
	{branch_id:'2', drug_id:'85', amount:'11'},
	{branch_id:'3', drug_id:'85', amount:'33'},
	{branch_id:'4', drug_id:'85', amount:'4'},

	{branch_id:'1', drug_id:'86', amount:'0'}, 
	{branch_id:'2', drug_id:'86', amount:'0'},
	{branch_id:'3', drug_id:'86', amount:'0'},
	{branch_id:'4', drug_id:'86', amount:'1'},

	{branch_id:'1', drug_id:'87', amount:'1'}, 
	{branch_id:'2', drug_id:'87', amount:'0'},
	{branch_id:'3', drug_id:'87', amount:'0'},
	{branch_id:'4', drug_id:'87', amount:'1'},

	{branch_id:'1', drug_id:'88', amount:'2'}, 
	{branch_id:'2', drug_id:'88', amount:'8'},
	{branch_id:'3', drug_id:'88', amount:'6'},
	{branch_id:'4', drug_id:'88', amount:'32'},	

	{branch_id:'1', drug_id:'89', amount:'14'}, 
	{branch_id:'2', drug_id:'89', amount:'16'},
	{branch_id:'3', drug_id:'89', amount:'18'},
	{branch_id:'4', drug_id:'89', amount:'11'},

	{branch_id:'1', drug_id:'90', amount:'1'}, 
	{branch_id:'2', drug_id:'90', amount:'2'},
	{branch_id:'3', drug_id:'90', amount:'3'},
	{branch_id:'4', drug_id:'90', amount:'3'},

	{branch_id:'1', drug_id:'91', amount:'3'}, 
	{branch_id:'2', drug_id:'91', amount:'3'},
	{branch_id:'3', drug_id:'91', amount:'3'},
	{branch_id:'4', drug_id:'91', amount:'3'},

	{branch_id:'1', drug_id:'92', amount:'8'}, 
	{branch_id:'2', drug_id:'92', amount:'8'},
	{branch_id:'3', drug_id:'92', amount:'9'},
	{branch_id:'4', drug_id:'92', amount:'9'},

	{branch_id:'1', drug_id:'93', amount:'8'}, 
	{branch_id:'2', drug_id:'93', amount:'12'},
	{branch_id:'3', drug_id:'93', amount:'32'},
	{branch_id:'4', drug_id:'93', amount:'31'},

	{branch_id:'1', drug_id:'94', amount:'37'}, 
	{branch_id:'2', drug_id:'94', amount:'42'},
	{branch_id:'3', drug_id:'94', amount:'18'},
	{branch_id:'4', drug_id:'94', amount:'28'},

	{branch_id:'1', drug_id:'95', amount:'2'}, 
	{branch_id:'2', drug_id:'95', amount:'3'},
	{branch_id:'3', drug_id:'95', amount:'6'},
	{branch_id:'4', drug_id:'95', amount:'9'},

	{branch_id:'1', drug_id:'96', amount:'8'}, 
	{branch_id:'2', drug_id:'96', amount:'4'},
	{branch_id:'3', drug_id:'96', amount:'12'},
	{branch_id:'4', drug_id:'96', amount:'15'},

	{branch_id:'1', drug_id:'97', amount:'13'}, 
	{branch_id:'2', drug_id:'97', amount:'35'},
	{branch_id:'3', drug_id:'97', amount:'25'},
	{branch_id:'4', drug_id:'97', amount:'37'},

	{branch_id:'1', drug_id:'98', amount:'0'}, 
	{branch_id:'2', drug_id:'98', amount:'2'},
	{branch_id:'3', drug_id:'98', amount:'4'},
	{branch_id:'4', drug_id:'98', amount:'6'},	

	{branch_id:'1', drug_id:'99', amount:'8'}, 
	{branch_id:'2', drug_id:'99', amount:'10'},
	{branch_id:'3', drug_id:'99', amount:'12'},
	{branch_id:'4', drug_id:'99', amount:'14'},

	{branch_id:'1', drug_id:'100', amount:'20'}, 
	{branch_id:'2', drug_id:'100', amount:'19'},
	{branch_id:'3', drug_id:'100', amount:'18'},
	{branch_id:'4', drug_id:'100', amount:'17'}
])
Contribution.create([
	{insurer_id:'1',drug_id:'1',amount:'50'},
	{insurer_id:'2',drug_id:'1',amount:'49'},
	{insurer_id:'3',drug_id:'1',amount:'48'},
	{insurer_id:'4',drug_id:'1',amount:'47'},
	{insurer_id:'5',drug_id:'1',amount:'46'},
	{insurer_id:'1',drug_id:'6',amount:'45'},
	{insurer_id:'2',drug_id:'6',amount:'44'},
	{insurer_id:'3',drug_id:'6',amount:'43'},
	{insurer_id:'4',drug_id:'6',amount:'42'},
	{insurer_id:'5',drug_id:'6',amount:'41'},
	{insurer_id:'1',drug_id:'7',amount:'40'},
	{insurer_id:'2',drug_id:'7',amount:'39'},
	{insurer_id:'3',drug_id:'7',amount:'38'},
	{insurer_id:'4',drug_id:'7',amount:'37'},
	{insurer_id:'5',drug_id:'7',amount:'36'},
	{insurer_id:'1',drug_id:'8',amount:'35'},
	{insurer_id:'2',drug_id:'8',amount:'33'},
	{insurer_id:'3',drug_id:'8',amount:'32'},
	{insurer_id:'4',drug_id:'8',amount:'31'},
	{insurer_id:'5',drug_id:'8',amount:'30'},
	{insurer_id:'1',drug_id:'9',amount:'29'},
	{insurer_id:'2',drug_id:'9',amount:'28'},
	{insurer_id:'3',drug_id:'9',amount:'27'},
	{insurer_id:'4',drug_id:'9',amount:'26'},
	{insurer_id:'5',drug_id:'9',amount:'25'},
	{insurer_id:'1',drug_id:'10',amount:'24'},
	{insurer_id:'2',drug_id:'10',amount:'23'},
	{insurer_id:'3',drug_id:'10',amount:'22'},
	{insurer_id:'4',drug_id:'10',amount:'21'},
	{insurer_id:'5',drug_id:'10',amount:'20'},

	{insurer_id:'1',drug_id:'11',amount:'20'},
	{insurer_id:'2',drug_id:'11',amount:'21'},
	{insurer_id:'3',drug_id:'11',amount:'22'},
	{insurer_id:'4',drug_id:'11',amount:'23'},
	{insurer_id:'5',drug_id:'11',amount:'24'},
	{insurer_id:'1',drug_id:'16',amount:'25'},
	{insurer_id:'2',drug_id:'16',amount:'26'},
	{insurer_id:'3',drug_id:'16',amount:'27'},
	{insurer_id:'4',drug_id:'16',amount:'28'},
	{insurer_id:'5',drug_id:'16',amount:'29'},
	{insurer_id:'1',drug_id:'17',amount:'30'},
	{insurer_id:'2',drug_id:'17',amount:'31'},
	{insurer_id:'3',drug_id:'17',amount:'32'},
	{insurer_id:'4',drug_id:'17',amount:'33'},
	{insurer_id:'5',drug_id:'17',amount:'34'},
	{insurer_id:'1',drug_id:'18',amount:'35'},
	{insurer_id:'2',drug_id:'18',amount:'33'},
	{insurer_id:'3',drug_id:'18',amount:'36'},
	{insurer_id:'4',drug_id:'18',amount:'37'},
	{insurer_id:'5',drug_id:'18',amount:'38'},
	{insurer_id:'1',drug_id:'19',amount:'39'},
	{insurer_id:'2',drug_id:'19',amount:'40'},
	{insurer_id:'3',drug_id:'19',amount:'0'},
	{insurer_id:'4',drug_id:'19',amount:'0'},
	{insurer_id:'5',drug_id:'19',amount:'14'},
	{insurer_id:'1',drug_id:'20',amount:'50'},
	{insurer_id:'2',drug_id:'20',amount:'49'},
	{insurer_id:'3',drug_id:'20',amount:'48'},
	{insurer_id:'4',drug_id:'20',amount:'47'},
	{insurer_id:'5',drug_id:'20',amount:'46'},

	{insurer_id:'1',drug_id:'21',amount:'0'},
	{insurer_id:'2',drug_id:'21',amount:'2'},
	{insurer_id:'3',drug_id:'21',amount:'4'},
	{insurer_id:'4',drug_id:'21',amount:'6'},
	{insurer_id:'5',drug_id:'21',amount:'8'},
	{insurer_id:'1',drug_id:'26',amount:'10'},
	{insurer_id:'2',drug_id:'26',amount:'12'},
	{insurer_id:'3',drug_id:'26',amount:'14'},
	{insurer_id:'4',drug_id:'26',amount:'16'},
	{insurer_id:'5',drug_id:'26',amount:'18'},
	{insurer_id:'1',drug_id:'27',amount:'20'},
	{insurer_id:'2',drug_id:'27',amount:'22'},
	{insurer_id:'3',drug_id:'27',amount:'24'},
	{insurer_id:'4',drug_id:'27',amount:'26'},
	{insurer_id:'5',drug_id:'27',amount:'27'},
	{insurer_id:'1',drug_id:'28',amount:'28'},
	{insurer_id:'2',drug_id:'28',amount:'30'},
	{insurer_id:'3',drug_id:'28',amount:'32'},
	{insurer_id:'4',drug_id:'28',amount:'34'},
	{insurer_id:'5',drug_id:'28',amount:'36'},
	{insurer_id:'1',drug_id:'29',amount:'38'},
	{insurer_id:'2',drug_id:'29',amount:'40'},
	{insurer_id:'3',drug_id:'29',amount:'42'},
	{insurer_id:'4',drug_id:'29',amount:'44'},
	{insurer_id:'5',drug_id:'29',amount:'46'},
	{insurer_id:'1',drug_id:'30',amount:'48'},
	{insurer_id:'2',drug_id:'30',amount:'50'},
	{insurer_id:'3',drug_id:'30',amount:'50'},
	{insurer_id:'4',drug_id:'30',amount:'50'},
	{insurer_id:'5',drug_id:'30',amount:'50'},

	{insurer_id:'1',drug_id:'31',amount:'50'},
	{insurer_id:'2',drug_id:'31',amount:'49'},
	{insurer_id:'3',drug_id:'31',amount:'48'},
	{insurer_id:'4',drug_id:'31',amount:'47'},
	{insurer_id:'5',drug_id:'31',amount:'46'},
	{insurer_id:'1',drug_id:'36',amount:'45'},
	{insurer_id:'2',drug_id:'36',amount:'44'},
	{insurer_id:'3',drug_id:'36',amount:'43'},
	{insurer_id:'4',drug_id:'36',amount:'42'},
	{insurer_id:'5',drug_id:'36',amount:'41'},
	{insurer_id:'1',drug_id:'37',amount:'40'},
	{insurer_id:'2',drug_id:'37',amount:'39'},
	{insurer_id:'3',drug_id:'37',amount:'38'},
	{insurer_id:'4',drug_id:'37',amount:'37'},
	{insurer_id:'5',drug_id:'37',amount:'36'},
	{insurer_id:'1',drug_id:'38',amount:'35'},
	{insurer_id:'2',drug_id:'38',amount:'34'},
	{insurer_id:'3',drug_id:'38',amount:'33'},
	{insurer_id:'4',drug_id:'38',amount:'32'},
	{insurer_id:'5',drug_id:'38',amount:'31'},
	{insurer_id:'1',drug_id:'39',amount:'30'},
	{insurer_id:'2',drug_id:'39',amount:'29'},
	{insurer_id:'3',drug_id:'39',amount:'28'},
	{insurer_id:'4',drug_id:'39',amount:'27'},
	{insurer_id:'5',drug_id:'39',amount:'26'},
	{insurer_id:'1',drug_id:'40',amount:'25'},
	{insurer_id:'2',drug_id:'40',amount:'24'},
	{insurer_id:'3',drug_id:'40',amount:'23'},
	{insurer_id:'4',drug_id:'40',amount:'22'},
	{insurer_id:'5',drug_id:'40',amount:'21'},

	{insurer_id:'1',drug_id:'41',amount:'50'},
	{insurer_id:'2',drug_id:'41',amount:'40'},
	{insurer_id:'3',drug_id:'41',amount:'30'},
	{insurer_id:'4',drug_id:'41',amount:'20'},
	{insurer_id:'5',drug_id:'41',amount:'20'},
	{insurer_id:'1',drug_id:'46',amount:'30'},
	{insurer_id:'2',drug_id:'46',amount:'40'},
	{insurer_id:'3',drug_id:'46',amount:'50'},
	{insurer_id:'4',drug_id:'46',amount:'50'},
	{insurer_id:'5',drug_id:'46',amount:'40'},
	{insurer_id:'1',drug_id:'47',amount:'30'},
	{insurer_id:'2',drug_id:'47',amount:'20'},
	{insurer_id:'3',drug_id:'47',amount:'20'},
	{insurer_id:'4',drug_id:'47',amount:'30'},
	{insurer_id:'5',drug_id:'47',amount:'40'},
	{insurer_id:'1',drug_id:'48',amount:'50'},
	{insurer_id:'2',drug_id:'48',amount:'50'},
	{insurer_id:'3',drug_id:'48',amount:'40'},
	{insurer_id:'4',drug_id:'48',amount:'30'},
	{insurer_id:'5',drug_id:'48',amount:'20'},
	{insurer_id:'1',drug_id:'49',amount:'20'},
	{insurer_id:'2',drug_id:'49',amount:'20'},
	{insurer_id:'3',drug_id:'49',amount:'50'},
	{insurer_id:'4',drug_id:'49',amount:'40'},
	{insurer_id:'5',drug_id:'49',amount:'30'},
	{insurer_id:'1',drug_id:'50',amount:'30'},
	{insurer_id:'2',drug_id:'50',amount:'30'},
	{insurer_id:'3',drug_id:'50',amount:'50'},
	{insurer_id:'4',drug_id:'50',amount:'40'},
	{insurer_id:'5',drug_id:'50',amount:'40'},

	{insurer_id:'1',drug_id:'51',amount:'5'},
	{insurer_id:'2',drug_id:'51',amount:'10'},
	{insurer_id:'3',drug_id:'51',amount:'0'},
	{insurer_id:'4',drug_id:'51',amount:'15'},
	{insurer_id:'5',drug_id:'51',amount:'20'},
	{insurer_id:'1',drug_id:'56',amount:'25'},
	{insurer_id:'2',drug_id:'56',amount:'35'},
	{insurer_id:'3',drug_id:'56',amount:'45'},
	{insurer_id:'4',drug_id:'56',amount:'50'},
	{insurer_id:'5',drug_id:'56',amount:'45'},
	{insurer_id:'1',drug_id:'57',amount:'45'},
	{insurer_id:'2',drug_id:'57',amount:'35'},
	{insurer_id:'3',drug_id:'57',amount:'35'},
	{insurer_id:'4',drug_id:'57',amount:'25'},
	{insurer_id:'5',drug_id:'57',amount:'15'},
	{insurer_id:'1',drug_id:'58',amount:'5'},
	{insurer_id:'2',drug_id:'58',amount:'20'},
	{insurer_id:'3',drug_id:'58',amount:'0'},
	{insurer_id:'4',drug_id:'58',amount:'0'},
	{insurer_id:'5',drug_id:'58',amount:'10'},
	{insurer_id:'1',drug_id:'59',amount:'15'},
	{insurer_id:'2',drug_id:'59',amount:'20'},
	{insurer_id:'3',drug_id:'59',amount:'25'},
	{insurer_id:'4',drug_id:'59',amount:'30'},
	{insurer_id:'5',drug_id:'59',amount:'32'},
	{insurer_id:'1',drug_id:'60',amount:'15'},
	{insurer_id:'2',drug_id:'60',amount:'35'},
	{insurer_id:'3',drug_id:'60',amount:'11'},
	{insurer_id:'4',drug_id:'60',amount:'2'},
	{insurer_id:'5',drug_id:'60',amount:'0'},

	{insurer_id:'1',drug_id:'61',amount:'20'},
	{insurer_id:'2',drug_id:'61',amount:'22'},
	{insurer_id:'3',drug_id:'61',amount:'24'},
	{insurer_id:'4',drug_id:'61',amount:'26'},
	{insurer_id:'5',drug_id:'61',amount:'28'},
	{insurer_id:'1',drug_id:'66',amount:'30'},
	{insurer_id:'2',drug_id:'66',amount:'30'},
	{insurer_id:'3',drug_id:'66',amount:'28'},
	{insurer_id:'4',drug_id:'66',amount:'26'},
	{insurer_id:'5',drug_id:'66',amount:'24'},
	{insurer_id:'1',drug_id:'67',amount:'22'},
	{insurer_id:'2',drug_id:'67',amount:'20'},
	{insurer_id:'3',drug_id:'67',amount:'20'},
	{insurer_id:'4',drug_id:'67',amount:'22'},
	{insurer_id:'5',drug_id:'67',amount:'24'},
	{insurer_id:'1',drug_id:'68',amount:'29'},
	{insurer_id:'2',drug_id:'68',amount:'26'},
	{insurer_id:'3',drug_id:'68',amount:'28'},
	{insurer_id:'4',drug_id:'68',amount:'30'},
	{insurer_id:'5',drug_id:'68',amount:'30'},
	{insurer_id:'1',drug_id:'69',amount:'32'},
	{insurer_id:'2',drug_id:'69',amount:'34'},
	{insurer_id:'3',drug_id:'69',amount:'36'},
	{insurer_id:'4',drug_id:'69',amount:'34'},
	{insurer_id:'5',drug_id:'69',amount:'32'},
	{insurer_id:'1',drug_id:'70',amount:'20'},
	{insurer_id:'2',drug_id:'70',amount:'30'},
	{insurer_id:'3',drug_id:'70',amount:'28'},
	{insurer_id:'4',drug_id:'70',amount:'26'},
	{insurer_id:'5',drug_id:'70',amount:'24'},	

	{insurer_id:'1',drug_id:'71',amount:'0'},
	{insurer_id:'2',drug_id:'71',amount:'5'},
	{insurer_id:'3',drug_id:'71',amount:'0'},
	{insurer_id:'4',drug_id:'71',amount:'10'},
	{insurer_id:'5',drug_id:'71',amount:'15'},
	{insurer_id:'1',drug_id:'76',amount:'20'},
	{insurer_id:'2',drug_id:'76',amount:'32'},
	{insurer_id:'3',drug_id:'76',amount:'21'},
	{insurer_id:'4',drug_id:'76',amount:'21'},
	{insurer_id:'5',drug_id:'76',amount:'51'},
	{insurer_id:'1',drug_id:'77',amount:'23'},
	{insurer_id:'2',drug_id:'77',amount:'22'},
	{insurer_id:'3',drug_id:'77',amount:'11'},
	{insurer_id:'4',drug_id:'77',amount:'36'},
	{insurer_id:'5',drug_id:'77',amount:'37'},
	{insurer_id:'1',drug_id:'78',amount:'38'},
	{insurer_id:'2',drug_id:'78',amount:'28'},
	{insurer_id:'3',drug_id:'78',amount:'10'},
	{insurer_id:'4',drug_id:'78',amount:'20'},
	{insurer_id:'5',drug_id:'78',amount:'35'},
	{insurer_id:'1',drug_id:'79',amount:'30'},
	{insurer_id:'2',drug_id:'79',amount:'30'},
	{insurer_id:'3',drug_id:'79',amount:'25'},
	{insurer_id:'4',drug_id:'79',amount:'24'},
	{insurer_id:'5',drug_id:'79',amount:'23'},
	{insurer_id:'1',drug_id:'80',amount:'22'},
	{insurer_id:'2',drug_id:'80',amount:'21'},
	{insurer_id:'3',drug_id:'80',amount:'20'},
	{insurer_id:'4',drug_id:'80',amount:'20'},
	{insurer_id:'5',drug_id:'80',amount:'20'},

	{insurer_id:'1',drug_id:'81',amount:'50'},
	{insurer_id:'2',drug_id:'81',amount:'49'},
	{insurer_id:'3',drug_id:'81',amount:'48'},
	{insurer_id:'4',drug_id:'81',amount:'47'},
	{insurer_id:'5',drug_id:'81',amount:'46'},
	{insurer_id:'1',drug_id:'86',amount:'45'},
	{insurer_id:'2',drug_id:'86',amount:'44'},
	{insurer_id:'3',drug_id:'86',amount:'43'},
	{insurer_id:'4',drug_id:'86',amount:'42'},
	{insurer_id:'5',drug_id:'86',amount:'41'},
	{insurer_id:'1',drug_id:'87',amount:'40'},
	{insurer_id:'2',drug_id:'87',amount:'39'},
	{insurer_id:'3',drug_id:'87',amount:'38'},
	{insurer_id:'4',drug_id:'87',amount:'37'},
	{insurer_id:'5',drug_id:'87',amount:'36'},
	{insurer_id:'1',drug_id:'88',amount:'35'},
	{insurer_id:'2',drug_id:'88',amount:'34'},
	{insurer_id:'3',drug_id:'88',amount:'33'},
	{insurer_id:'4',drug_id:'88',amount:'32'},
	{insurer_id:'5',drug_id:'88',amount:'31'},
	{insurer_id:'1',drug_id:'89',amount:'30'},
	{insurer_id:'2',drug_id:'89',amount:'29'},
	{insurer_id:'3',drug_id:'89',amount:'28'},
	{insurer_id:'4',drug_id:'89',amount:'27'},
	{insurer_id:'5',drug_id:'89',amount:'26'},
	{insurer_id:'1',drug_id:'90',amount:'25'},
	{insurer_id:'2',drug_id:'90',amount:'24'},
	{insurer_id:'3',drug_id:'90',amount:'23'},
	{insurer_id:'4',drug_id:'90',amount:'22'},
	{insurer_id:'5',drug_id:'90',amount:'21'},

	{insurer_id:'1',drug_id:'91',amount:'8'},
	{insurer_id:'2',drug_id:'91',amount:'7'},
	{insurer_id:'3',drug_id:'91',amount:'6'},
	{insurer_id:'4',drug_id:'91',amount:'5'},
	{insurer_id:'5',drug_id:'91',amount:'4'},
	{insurer_id:'1',drug_id:'96',amount:'3'},
	{insurer_id:'2',drug_id:'96',amount:'2'},
	{insurer_id:'3',drug_id:'96',amount:'5'},
	{insurer_id:'4',drug_id:'96',amount:'1'},
	{insurer_id:'5',drug_id:'96',amount:'0'},
	{insurer_id:'1',drug_id:'97',amount:'1'},
	{insurer_id:'2',drug_id:'97',amount:'2'},
	{insurer_id:'3',drug_id:'97',amount:'3'},
	{insurer_id:'4',drug_id:'97',amount:'4'},
	{insurer_id:'5',drug_id:'97',amount:'5'},
	{insurer_id:'1',drug_id:'98',amount:'6'},
	{insurer_id:'2',drug_id:'98',amount:'7'},
	{insurer_id:'3',drug_id:'98',amount:'8'},
	{insurer_id:'4',drug_id:'98',amount:'9'},
	{insurer_id:'5',drug_id:'98',amount:'10'},
	{insurer_id:'1',drug_id:'99',amount:'11'},
	{insurer_id:'2',drug_id:'99',amount:'12'},
	{insurer_id:'3',drug_id:'99',amount:'13'},
	{insurer_id:'4',drug_id:'99',amount:'14'},
	{insurer_id:'5',drug_id:'99',amount:'15'},
	{insurer_id:'1',drug_id:'90',amount:'16'},
	{insurer_id:'2',drug_id:'100',amount:'17'},
	{insurer_id:'3',drug_id:'100',amount:'18'},
	{insurer_id:'4',drug_id:'100',amount:'19'},
	{insurer_id:'5',drug_id:'100',amount:'20'}
])

ReservationDrug.new(reservation_id:'1',drug_id:'5', amount:'1').save(validate: false)
ReservationDrug.new(reservation_id:'2',drug_id:'10', amount: '2').save(validate: false)
ReservationDrug.new(reservation_id:'2',drug_id:'15',amount: '3').save(validate: false)
ReservationDrug.new(reservation_id:'3',drug_id:'20', amount:'4').save(validate: false)
ReservationDrug.new(reservation_id:'3',drug_id:'30', amount: '5').save(validate: false)
ReservationDrug.new(reservation_id:'3',drug_id:'35',amount: '4').save(validate: false)
ReservationDrug.new(reservation_id:'4',drug_id:'36', amount:'3').save(validate: false)
ReservationDrug.new(reservation_id:'4',drug_id:'40', amount: '2').save(validate: false)
ReservationDrug.new(reservation_id:'4',drug_id:'45',amount: '1').save(validate: false)
ReservationDrug.new(reservation_id:'4',drug_id:'50', amount:'2').save(validate: false)
ReservationDrug.new(reservation_id:'5',drug_id:'51', amount: '3').save(validate: false)
ReservationDrug.new(reservation_id:'5',drug_id:'56',amount: '4').save(validate: false)
ReservationDrug.new(reservation_id:'5',drug_id:'60', amount: '5').save(validate: false)
ReservationDrug.new(reservation_id:'5',drug_id:'62',amount: '6').save(validate: false)
ReservationDrug.new(reservation_id:'5',drug_id:'65', amount: '5').save(validate: false)
ReservationDrug.new(reservation_id:'6',drug_id:'66', amount:'4').save(validate: false)
ReservationDrug.new(reservation_id:'7',drug_id:'68', amount: '3').save(validate: false)
ReservationDrug.new(reservation_id:'7',drug_id:'70',amount: '2').save(validate: false)
ReservationDrug.new(reservation_id:'8',drug_id:'78', amount:'1').save(validate: false)
ReservationDrug.new(reservation_id:'8',drug_id:'86', amount: '2').save(validate: false)
ReservationDrug.new(reservation_id:'8',drug_id:'66',amount: '3').save(validate: false)
ReservationDrug.new(reservation_id:'9',drug_id:'14', amount:'4').save(validate: false)
ReservationDrug.new(reservation_id:'9',drug_id:'35', amount: '5').save(validate: false)
ReservationDrug.new(reservation_id:'9',drug_id:'5',amount: '4').save(validate: false)
ReservationDrug.new(reservation_id:'9',drug_id:'10', amount:'3').save(validate: false)
ReservationDrug.new(reservation_id:'10',drug_id:'9', amount: '2').save(validate: false)
ReservationDrug.new(reservation_id:'10',drug_id:'99',amount: '3').save(validate: false)
ReservationDrug.new(reservation_id:'10',drug_id:'86', amount: '2').save(validate: false)
ReservationDrug.new(reservation_id:'10',drug_id:'67',amount: '1').save(validate: false)
ReservationDrug.new(reservation_id:'10',drug_id:'69', amount: '1').save(validate: false)
ReservationDrug.new(reservation_id:'11',drug_id:'42', amount:'1').save(validate: false)
ReservationDrug.new(reservation_id:'12',drug_id:'13', amount:'1').save(validate: false)
ReservationDrug.new(reservation_id:'13',drug_id:'88', amount:'2').save(validate: false)
ReservationDrug.new(reservation_id:'14',drug_id:'66', amount:'3').save(validate: false)


Order.new(pending:'true', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Order.new(pending:'true', dateOrdered:Time.strptime('06/1/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Order.new(pending:'false', dateOrdered:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Order.new(pending:'true', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Order.new(pending:'false', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Order.new(pending:'false', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Order.new(pending:'true', dateOrdered:Time.strptime('06/30/2018 00:00', '%m/%d/%Y %H:%M'), branch_id:'2').save(validate: false)
Order.new(pending:'true', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'2').save(validate: false)
Order.new(pending:'true', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'3').save(validate: false)
Order.new(pending:'false', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'4').save(validate: false)
Order.new(pending:'false', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Order.new(pending:'false',dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'1').save(validate: false)
Order.new(pending:'false', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'2').save(validate: false)
Order.new(pending:'false', dateOrdered:Time.strptime('06/30/2017 00:00', '%m/%d/%Y %H:%M'), branch_id:'3').save(validate: false)


OrderDrug.new(order_id:'1',drug_id:'5', amount:'1').save(validate: false)
OrderDrug.new(order_id:'2',drug_id:'10', amount: '2').save(validate: false)
OrderDrug.new(order_id:'2',drug_id:'15',amount: '3').save(validate: false)
OrderDrug.new(order_id:'3',drug_id:'20', amount:'4').save(validate: false)
OrderDrug.new(order_id:'3',drug_id:'30', amount: '5').save(validate: false)
OrderDrug.new(order_id:'3',drug_id:'35',amount: '4').save(validate: false)
OrderDrug.new(order_id:'4',drug_id:'36', amount:'3').save(validate: false)
OrderDrug.new(order_id:'4',drug_id:'40', amount: '2').save(validate: false)
OrderDrug.new(order_id:'4',drug_id:'45',amount: '1').save(validate: false)
OrderDrug.new(order_id:'4',drug_id:'50', amount:'2').save(validate: false)
OrderDrug.new(order_id:'5',drug_id:'51', amount: '3').save(validate: false)
OrderDrug.new(order_id:'5',drug_id:'56',amount: '4').save(validate: false)
OrderDrug.new(order_id:'5',drug_id:'60', amount: '5').save(validate: false)
OrderDrug.new(order_id:'5',drug_id:'62',amount: '6').save(validate: false)
OrderDrug.new(order_id:'5',drug_id:'65', amount: '5').save(validate: false)
OrderDrug.new(order_id:'6',drug_id:'66', amount:'4').save(validate: false)
OrderDrug.new(order_id:'7',drug_id:'68', amount: '3').save(validate: false)
OrderDrug.new(order_id:'7',drug_id:'70',amount: '2').save(validate: false)
OrderDrug.new(order_id:'8',drug_id:'78', amount:'1').save(validate: false)
OrderDrug.new(order_id:'8',drug_id:'86', amount: '2').save(validate: false)
OrderDrug.new(order_id:'8',drug_id:'66',amount: '3').save(validate: false)
OrderDrug.new(order_id:'9',drug_id:'14', amount:'4').save(validate: false)
OrderDrug.new(order_id:'9',drug_id:'35', amount: '5').save(validate: false)
OrderDrug.new(order_id:'9',drug_id:'5',amount: '4').save(validate: false)
OrderDrug.new(order_id:'9',drug_id:'10', amount:'3').save(validate: false)
OrderDrug.new(order_id:'10',drug_id:'9', amount: '2').save(validate: false)
OrderDrug.new(order_id:'10',drug_id:'99',amount: '3').save(validate: false)
OrderDrug.new(order_id:'10',drug_id:'86', amount: '2').save(validate: false)
OrderDrug.new(order_id:'10',drug_id:'67',amount: '1').save(validate: false)
OrderDrug.new(order_id:'10',drug_id:'69', amount: '1').save(validate: false)
OrderDrug.new(order_id:'11',drug_id:'42', amount:'1').save(validate: false)
OrderDrug.new(order_id:'12',drug_id:'13', amount:'1').save(validate: false)
OrderDrug.new(order_id:'13',drug_id:'88', amount:'2').save(validate: false)
OrderDrug.new(order_id:'14',drug_id:'66', amount:'3').save(validate: false)

Sale.new(insurer_id:'1',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'1',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'2',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'3',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'1',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'2',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'3',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'4',branch_id:'4',rc:'123123123').save(validate: false)
Sale.new(insurer_id:'5',branch_id:'4',rc:'123123123').save(validate: false)


SaleDrug.new(sale_id:'1',drug_id:'1',amount:'50').save(validate: false)
SaleDrug.new(sale_id:'2',drug_id:'1',amount:'49').save(validate: false)
SaleDrug.new(sale_id:'3',drug_id:'1',amount:'48').save(validate: false)
SaleDrug.new(sale_id:'4',drug_id:'1',amount:'47').save(validate: false)
SaleDrug.new(sale_id:'5',drug_id:'1',amount:'46').save(validate: false)
SaleDrug.new(sale_id:'6',drug_id:'6',amount:'45').save(validate: false)
SaleDrug.new(sale_id:'7',drug_id:'6',amount:'44').save(validate: false)
SaleDrug.new(sale_id:'8',drug_id:'6',amount:'43').save(validate: false)
SaleDrug.new(sale_id:'9',drug_id:'6',amount:'42').save(validate: false)
SaleDrug.new(sale_id:'10',drug_id:'6',amount:'41').save(validate: false)
SaleDrug.new(sale_id:'11',drug_id:'7',amount:'40').save(validate: false)
SaleDrug.new(sale_id:'12',drug_id:'7',amount:'39').save(validate: false)
SaleDrug.new(sale_id:'13',drug_id:'7',amount:'38').save(validate: false)
SaleDrug.new(sale_id:'14',drug_id:'7',amount:'37').save(validate: false)
SaleDrug.new(sale_id:'15',drug_id:'7',amount:'36').save(validate: false)
SaleDrug.new(sale_id:'16',drug_id:'8',amount:'35').save(validate: false)
SaleDrug.new(sale_id:'17',drug_id:'8',amount:'33').save(validate: false)
SaleDrug.new(sale_id:'18',drug_id:'8',amount:'32').save(validate: false)
SaleDrug.new(sale_id:'19',drug_id:'8',amount:'31').save(validate: false)
SaleDrug.new(sale_id:'20',drug_id:'8',amount:'30').save(validate: false)
SaleDrug.new(sale_id:'21',drug_id:'9',amount:'29').save(validate: false)
SaleDrug.new(sale_id:'22',drug_id:'9',amount:'28').save(validate: false)
SaleDrug.new(sale_id:'23',drug_id:'9',amount:'27').save(validate: false)
SaleDrug.new(sale_id:'24',drug_id:'9',amount:'26').save(validate: false)
SaleDrug.new(sale_id:'25',drug_id:'9',amount:'25').save(validate: false)
SaleDrug.new(sale_id:'26',drug_id:'10',amount:'24').save(validate: false)
SaleDrug.new(sale_id:'27',drug_id:'10',amount:'23').save(validate: false)
SaleDrug.new(sale_id:'28',drug_id:'10',amount:'22').save(validate: false)
SaleDrug.new(sale_id:'29',drug_id:'10',amount:'21').save(validate: false)
SaleDrug.new(sale_id:'30',drug_id:'10',amount:'20').save(validate: false)

SaleDrug.new(sale_id:'31',drug_id:'11',amount:'20').save(validate: false)
SaleDrug.new(sale_id:'32',drug_id:'11',amount:'21').save(validate: false)
SaleDrug.new(sale_id:'33',drug_id:'11',amount:'22').save(validate: false)
SaleDrug.new(sale_id:'34',drug_id:'11',amount:'23').save(validate: false)
SaleDrug.new(sale_id:'35',drug_id:'11',amount:'24').save(validate: false)
SaleDrug.new(sale_id:'36',drug_id:'16',amount:'25').save(validate: false)
SaleDrug.new(sale_id:'37',drug_id:'16',amount:'26').save(validate: false)
SaleDrug.new(sale_id:'38',drug_id:'16',amount:'27').save(validate: false)
SaleDrug.new(sale_id:'39',drug_id:'16',amount:'28').save(validate: false)
SaleDrug.new(sale_id:'40',drug_id:'16',amount:'29').save(validate: false)
SaleDrug.new(sale_id:'41',drug_id:'17',amount:'30').save(validate: false)
SaleDrug.new(sale_id:'42',drug_id:'17',amount:'31').save(validate: false)
SaleDrug.new(sale_id:'43',drug_id:'17',amount:'32').save(validate: false)
SaleDrug.new(sale_id:'44',drug_id:'17',amount:'33').save(validate: false)
SaleDrug.new(sale_id:'45',drug_id:'17',amount:'34').save(validate: false)
SaleDrug.new(sale_id:'46',drug_id:'18',amount:'35').save(validate: false)
SaleDrug.new(sale_id:'47',drug_id:'18',amount:'33').save(validate: false)
SaleDrug.new(sale_id:'48',drug_id:'18',amount:'36').save(validate: false)
SaleDrug.new(sale_id:'49',drug_id:'18',amount:'37').save(validate: false)
SaleDrug.new(sale_id:'50',drug_id:'18',amount:'38').save(validate: false)
SaleDrug.new(sale_id:'51',drug_id:'19',amount:'39').save(validate: false)
SaleDrug.new(sale_id:'52',drug_id:'19',amount:'40').save(validate: false)
SaleDrug.new(sale_id:'53',drug_id:'19',amount:'0').save(validate: false)
SaleDrug.new(sale_id:'54',drug_id:'19',amount:'0').save(validate: false)
SaleDrug.new(sale_id:'55',drug_id:'19',amount:'14').save(validate: false)
SaleDrug.new(sale_id:'56',drug_id:'20',amount:'50').save(validate: false)
SaleDrug.new(sale_id:'57',drug_id:'20',amount:'49').save(validate: false)
SaleDrug.new(sale_id:'58',drug_id:'20',amount:'48').save(validate: false)
SaleDrug.new(sale_id:'59',drug_id:'20',amount:'47').save(validate: false)
SaleDrug.new(sale_id:'60',drug_id:'20',amount:'46').save(validate: false)

SaleDrug.new(sale_id:'1',drug_id:'21',amount:'0').save(validate: false)
SaleDrug.new(sale_id:'2',drug_id:'21',amount:'2').save(validate: false)
SaleDrug.new(sale_id:'3',drug_id:'21',amount:'4').save(validate: false)
SaleDrug.new(sale_id:'4',drug_id:'21',amount:'6').save(validate: false)
SaleDrug.new(sale_id:'5',drug_id:'21',amount:'8').save(validate: false)
SaleDrug.new(sale_id:'6',drug_id:'26',amount:'10').save(validate: false)
SaleDrug.new(sale_id:'7',drug_id:'26',amount:'12').save(validate: false)
SaleDrug.new(sale_id:'8',drug_id:'26',amount:'14').save(validate: false)
SaleDrug.new(sale_id:'9',drug_id:'26',amount:'16').save(validate: false)
SaleDrug.new(sale_id:'10',drug_id:'26',amount:'18').save(validate: false)
SaleDrug.new(sale_id:'11',drug_id:'27',amount:'20').save(validate: false)
SaleDrug.new(sale_id:'12',drug_id:'27',amount:'22').save(validate: false)
SaleDrug.new(sale_id:'13',drug_id:'27',amount:'24').save(validate: false)
SaleDrug.new(sale_id:'14',drug_id:'27',amount:'26').save(validate: false)
SaleDrug.new(sale_id:'4',drug_id:'27',amount:'27').save(validate: false)
SaleDrug.new(sale_id:'11',drug_id:'28',amount:'28').save(validate: false)
SaleDrug.new(sale_id:'5',drug_id:'28',amount:'30').save(validate: false)
SaleDrug.new(sale_id:'8',drug_id:'28',amount:'32').save(validate: false)
SaleDrug.new(sale_id:'20',drug_id:'28',amount:'34').save(validate: false)
SaleDrug.new(sale_id:'15',drug_id:'28',amount:'36').save(validate: false)
SaleDrug.new(sale_id:'16',drug_id:'29',amount:'38').save(validate: false)
SaleDrug.new(sale_id:'15',drug_id:'29',amount:'40').save(validate: false)
SaleDrug.new(sale_id:'16',drug_id:'29',amount:'42').save(validate: false)
SaleDrug.new(sale_id:'17',drug_id:'29',amount:'44').save(validate: false)
SaleDrug.new(sale_id:'18',drug_id:'29',amount:'46').save(validate: false)
SaleDrug.new(sale_id:'19',drug_id:'30',amount:'48').save(validate: false)
SaleDrug.new(sale_id:'20',drug_id:'30',amount:'50').save(validate: false)
SaleDrug.new(sale_id:'21',drug_id:'30',amount:'50').save(validate: false)
SaleDrug.new(sale_id:'22',drug_id:'30',amount:'50').save(validate: false)
SaleDrug.new(sale_id:'23',drug_id:'30',amount:'50').save(validate: false)

SaleDrug.new(sale_id:'24',drug_id:'31',amount:'50').save(validate: false)
SaleDrug.new(sale_id:'25',drug_id:'31',amount:'49').save(validate: false)
SaleDrug.new(sale_id:'26',drug_id:'31',amount:'48').save(validate: false)
SaleDrug.new(sale_id:'27',drug_id:'31',amount:'47').save(validate: false)
SaleDrug.new(sale_id:'28',drug_id:'31',amount:'46').save(validate: false)
SaleDrug.new(sale_id:'29',drug_id:'36',amount:'45').save(validate: false)
SaleDrug.new(sale_id:'30',drug_id:'36',amount:'44').save(validate: false)
SaleDrug.new(sale_id:'31',drug_id:'36',amount:'43').save(validate: false)
SaleDrug.new(sale_id:'32',drug_id:'36',amount:'42').save(validate: false)
SaleDrug.new(sale_id:'33',drug_id:'36',amount:'41').save(validate: false)
SaleDrug.new(sale_id:'24',drug_id:'37',amount:'40').save(validate: false)
SaleDrug.new(sale_id:'34',drug_id:'37',amount:'39').save(validate: false)
SaleDrug.new(sale_id:'35',drug_id:'37',amount:'38').save(validate: false)
SaleDrug.new(sale_id:'36',drug_id:'37',amount:'37').save(validate: false)
SaleDrug.new(sale_id:'37',drug_id:'37',amount:'36').save(validate: false)
SaleDrug.new(sale_id:'38',drug_id:'38',amount:'35').save(validate: false)
SaleDrug.new(sale_id:'39',drug_id:'38',amount:'34').save(validate: false)
SaleDrug.new(sale_id:'40',drug_id:'38',amount:'33').save(validate: false)
SaleDrug.new(sale_id:'41',drug_id:'38',amount:'32').save(validate: false)
SaleDrug.new(sale_id:'42',drug_id:'38',amount:'31').save(validate: false)
SaleDrug.new(sale_id:'43',drug_id:'39',amount:'30').save(validate: false)
SaleDrug.new(sale_id:'44',drug_id:'39',amount:'29').save(validate: false)
SaleDrug.new(sale_id:'45',drug_id:'39',amount:'28').save(validate: false)
SaleDrug.new(sale_id:'46',drug_id:'39',amount:'27').save(validate: false)
SaleDrug.new(sale_id:'47',drug_id:'39',amount:'26').save(validate: false)
SaleDrug.new(sale_id:'48',drug_id:'40',amount:'25').save(validate: false)
SaleDrug.new(sale_id:'49',drug_id:'40',amount:'24').save(validate: false)
SaleDrug.new(sale_id:'50',drug_id:'40',amount:'23').save(validate: false)
SaleDrug.new(sale_id:'51',drug_id:'40',amount:'22').save(validate: false)
SaleDrug.new(sale_id:'52',drug_id:'40',amount:'21').save(validate: false)

User.create!([
	{:name => 'admin', :email => 'admin@drmin.com', :password => 'adminpass', :password_confirmation => 'adminpass', :branch_id => '1', :role => 'admin'},

	{:name => 'managerPraha', :email => 'managerPraha@drmin.com', :password => 'managerpass', :password_confirmation => 'managerpass', :branch_id => '1', :role => 'manažer'},
	{:name => 'managerBrno', :email => 'managerBrno@drmin.com', :password => 'managerpass', :password_confirmation => 'managerpass', :branch_id => '2', :role => 'manažer'},
	{:name => 'managerOstrava', :email => 'managerOstrava@drmin.com', :password => 'managerpass', :password_confirmation => 'managerpass', :branch_id => '3', :role => 'manažer'},
	{:name => 'managerOlomouc', :email => 'managerOlomouc@drmin.com', :password => 'managerpass', :password_confirmation => 'managerpass', :branch_id => '4', :role => 'manažer'},

	{:name => 'workerPraha', :email => 'workerPraha@drmin.com', :password => 'workerpass', :password_confirmation => 'workerpass', :branch_id => '1', :role => 'pracovník'},
	{:name => 'workerBrno', :email => 'workerBrno@drmin.com', :password => 'workerpass', :password_confirmation => 'workerpass', :branch_id => '2', :role => 'pracovník'},
	{:name => 'workerOstrava', :email => 'workerOstrava@drmin.com', :password => 'workerpass', :password_confirmation => 'workerpass', :branch_id => '3', :role => 'pracovník'},
	{:name => 'workerOlomouc', :email => 'workerOlomouc@drmin.com', :password => 'workerpass', :password_confirmation => 'workerpass', :branch_id => '4', :role => 'pracovník'}
])