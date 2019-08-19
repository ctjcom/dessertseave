SET NAMES UTF8;
DROP DATABASE IF EXISTS dessert;
CREATE DATABASE dessert CHARSET=UTF8;
USE dessert;
/**创建用户表**/
CREATE TABLE user(
uid INT PRIMARY KEY AUTO_INCREMENT,
uname VARCHAR(20),
upwd VARCHAR(15)
);
INSERT INTO user VALUES(null,"root","123456");
/**创建类别表**/
CREATE TABLE type(
tid INT PRIMARY KEY AUTO_INCREMENT,
tname VARCHAR(20)#类别名称
);
INSERT INTO type VALUES(null,"早餐");
INSERT INTO type VALUES(null,"川菜");
INSERT INTO type VALUES(null,"湘菜");
INSERT INTO type VALUES(null,"粤菜");
INSERT INTO type VALUES(null,"甜点");
/**创建菜单表**/
CREATE TABLE menu(
mid INT PRIMARY KEY AUTO_INCREMENT,
mname VARCHAR(20),#菜单名称
type INT,#菜单所属分类
mimg VARCHAR(100),#成品图片
tips VARCHAR(100),#小贴士/注意事项
collect INT,#收藏
browse INT#浏览人数
);
/*早餐*/
INSERT INTO menu VALUES(null,"早餐鸡蛋饼",1,"http://i2.chuimg.com/1c83091c273a11e7947d0242ac110002_1775w_2394h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","慢慢卷起来就好了（注意:饼很烫！！！）。",0,0);
INSERT INTO menu VALUES(null,"牛油果三明治",1,"http://i1.chuimg.com/573a093d005c41c99cbefab1bac9dddf_1124w_1124h.jpg@2o_50sh_1pr_1l_640w_520h_1c_1e_90q_1wh.jpg",null,0,0);
INSERT INTO menu VALUES(null,"淡奶油软面包",1,"http://i2.chuimg.com/f58395aa882b11e6b87c0242ac110003_584w_560h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg"," 1.大家在制作的过程中也可以加入葡萄干或内馅，如果把淡奶油换成牛奶要减量，否则会使面团太湿，糖可以结合自己的喜好适当增减，本人不喜欢太甜。2.有厨友提问如何鉴别面包是否熟了，从烤箱取出之前，用一个钢勺背压一下面包侧面，如果回弹证明熟了。",0,0);
INSERT INTO menu VALUES(null,"快手煎饺",1,"http://i2.chuimg.com/289dce20888f11e6b87c0242ac110003_3894w_2386h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg"," 1.最初无水煎时火不要太小2.焖煮时不要随意翻动，容易破",0,0);
INSERT INTO menu VALUES(null,"黄瓜奶香燕麦豆浆",1,"http://i2.chuimg.com/bb8a8d0b422d4d638bf21e3ed5a96415_817w_817h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","1、甜度根据喜好，燕麦也根据喜好，多放点就浓郁些，不喜欢浓郁的就少放点燕麦2、放炼乳味道会更好哦",0,0);
INSERT INTO menu VALUES(null,"开胃早餐面",1,"http://i2.chuimg.com/929c47fa88c311e6b87c0242ac110003_640w_640h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg",null,0,0);
INSERT INTO menu VALUES(null,"老油条之一学就会",1,"http://i2.chuimg.com/ca442ee856cb4cc69da5aa0163dc7ebd_640w_565h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","面团一定要发至面团的两倍大，炸时要不停地翻动。",0,0);
INSERT INTO menu VALUES(null,"双色红薯杂粮包",1,"http://i2.chuimg.com/7145ddb96e63433fb1d420a2c5dd5d96_1126w_1500h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","这个配方可以做20多个馒头，还是一样的冷冻保存，给每日早餐增加新花样！简单易上手，关键是颜值担当！",0,0);
INSERT INTO menu VALUES(null,"滑腻柔软的美式炒蛋",1,"http://i2.chuimg.com/7443250aa4954e2cb2b148b0668a4020_1500w_1124h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","炒蛋的时候火一定要小一点，可以一边冥想一边等待。在蛋液没有全部凝结的时候一定要离火，这样炒出来的蛋才能滑腻柔软，因为蛋液从熟到老，真的只是如同人生一般的匆匆一瞬间哦。",0,0);
INSERT INTO menu VALUES(null,"土豆丝鸡蛋饼",1,"http://i2.chuimg.com/9622c1568b8911e6a9a10242ac110002_1920w_1080h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","普通面粉、饺子粉、小麦粉之类的都可以；高粉、低粉、淀粉我没有试过哈，尝试过的小伙伴可以留言参考吖。",0,0);
/*川菜*/
INSERT INTO menu VALUES(null,"麻婆豆腐",2,"http://i2.chuimg.com/ab03619633db4b4d8d3ece0750c18e70_2016w_1008h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","大家记得收藏点赞关注哦",0,0);
INSERT INTO menu VALUES(null,"川菜鱼香肉丝",2,"http://i2.chuimg.com/7a756ebc882911e6b87c0242ac110003_650w_650h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","青菜，肉的量可以根据自己的口味随意增减 ，这道菜非常简单，非常好吃，极力推荐大家试试～",0,0);
INSERT INTO menu VALUES(null,"宫保鸡丁",2,"http://i2.chuimg.com/fada9853311d4a9ca3f9aaab4d3dcd9e_1080w_864h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","1.这里可以把配菜换成：1、莴笋丁、黄葱、干辣椒;2、炸过的土豆丁和洋葱，料汁不换，味道都很不错。
2，翻炒可以快一点，因为鸡丁也是滑油过了，其他也要保持脆度，这样鸡丁才会入口特别嫩。
3.不建议用鸡腿，用鸡腿代替鸡胸这个菜谱会比较腻。",0,0);
INSERT INTO menu VALUES(null,"麻辣水煮鱼",2,"http://i2.chuimg.com/44f69a40889c11e6a9a10242ac110002_638w_640h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","买鱼时注意把鱼肉和鱼头骨分开装,先将豆芽和鱼骨捞出是为了更好的煮鱼片，不然一大锅煮，太满会把鱼片弄碎，而且豆芽就是做底菜用，所以提前捞出,注意鱼片不要煮太长时间，放入鱼片后水开一会儿就可以了",0,0);
INSERT INTO menu VALUES(null,"水煮肉片",2,"http://i2.chuimg.com/b9e01a07f78e443e8640b295f7c6227b_1080w_810h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg",null,0,0);
INSERT INTO menu VALUES(null,"夫妻肺片",2,"http://i2.chuimg.com/b801635dbe244743bc2f9fc087cd2168_4464w_2976h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","1. 煮好的牛腱、牛杂浸在卤水中直至冷却，可以更好地入味。<br>2. 辣椒碎比较容易糊，要放在最下面，避免与热油直接接触。",0,0);
INSERT INTO menu VALUES(null,"辣子鸡丁",2,"http://i1.chuimg.com/85f1baa954f340adbfe794bc838d7935_2048w_2048h.jpg@2o_50sh_1pr_1l_640w_520h_1c_1e_90q_1wh.jpg",null,0,0);
INSERT INTO menu VALUES(null,"回锅肉",2,"http://i1.chuimg.com/c60f7fc5f1f9417faaa572b454e56101_1152w_864h.jpg@2o_50sh_1pr_1l_640w_520h_1c_1e_90q_1wh.jpg","1.豆瓣酱选用郫县豆瓣酱<br>2.肉选五花肉，肥瘦相间口感佳。<br>3.肉片要煎过就不会很油腻了。<br>4.除了煮五花肉，其它步骤不能加水。<br>5.青椒可以选择自己喜欢的任意辣度的品种。",0,0);
INSERT INTO menu VALUES(null,"东坡肘子",2,"http://i1.chuimg.com/ba4b222a2d6b4367ad68b3a3b7423756_1146w_960h.jpg@2o_50sh_1pr_1l_640w_520h_1c_1e_90q_1wh.jpg",null,0,0);
INSERT INTO menu VALUES(null,"钵钵鸡",2,"http://i2.chuimg.com/928d51eaa7e5457c9b362f5b5ad91126_4464w_2976h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg","1. 把油烧热后直接浇在辣椒面上，如果担心这样香气不够或者不好控制温度的话，可以分多次浇油，一次比一次温度高。这样对辣椒有所控制性，不至于糊或者程度不够，并且味道比普通的做法香很多。<br>2. 不建议汤里加酱油、蚝油等颜色较深的调料，要的就是清透的汤底和纯正的红油色。<br>3. 食材和鸡汤一定要放凉再拌，汤里盐一定要加够，蔬菜的浸泡时间可以稍微长一点，食材才能更入味。<br>4. 配菜可以替换成自己喜欢的。",0,0);
/*湘菜*/
INSERT INTO menu VALUES(null,"湘菜经典辣椒小炒肉",3,"http://i1.chuimg.com/5b05cbd80c4840e6a2edf5345b70e537_1836w_2448h.jpg@2o_50sh_1pr_1l_640w_520h_1c_1e_90q_1wh.jpg","大家记得收藏点赞关注哦",0,0);
INSERT INTO menu VALUES(null,"湘味腊鸭",3,"http://i2.chuimg.com/395ac0208a8c11e6a9a10242ac110002_1125w_1125h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg",null,0,0);
INSERT INTO menu VALUES(null,"湘菜~紫苏煎黄瓜",3,"http://i2.chuimg.com/76de42fec2924c1b95765d5aaec6a497_1242w_1656h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg",null,0,0);
INSERT INTO menu VALUES(null,"辣子鸡丁",3,"http://i2.chuimg.com/b7a37d191bb6493c90122a933d280e3b_1242w_994h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg",null,0,0);
INSERT INTO menu VALUES(null,"家常牛蛙",3,"http://i2.chuimg.com/186f9017d6ee4ff3931556c1b9dd8631_1242w_1656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",null,0,0);
INSERT INTO menu VALUES(null,"麻辣小龙虾",3,"http://i2.chuimg.com/e55937298f2549b3ab87550bed33ec40_1035w_827h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg",null,0,0);
INSERT INTO menu VALUES(null,"水煮牛肉",3,"http://i1.chuimg.com/93a9aaddbb1049b7ab91299384bb3901_750w_1000h.jpg@2o_50sh_1pr_1l_640w_520h_1c_1e_90q_1wh.jpg",null,0,0);
INSERT INTO menu VALUES(null,"干锅香辣虾",3,"http://i2.chuimg.com/33389c92876411e6b87c0242ac110003_384w_512h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg",null,0,0);
INSERT INTO menu VALUES(null,"香煎土豆片",3,"http://i2.chuimg.com/571701c609884df0aa79a753297829a0_750w_1000h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg",null,0,0);
INSERT INTO menu VALUES(null,"剁椒鱼头",3,"http://i2.chuimg.com/529d5add5ea6459390fcb6c114b1a947_1080w_864h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg",null,0,0);
/*4粤菜*/
INSERT INTO menu VALUES(null,"香香排骨煲","4","http://i2.chuimg.com/e5568eb79dfe41f39092bf9abb9d4d39_640w_360h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",null,"0","0");
INSERT INTO menu VALUES(null,"广式糯米卷","4","http://i2.chuimg.com/446ccd9511814adb8e546242516172ce_1215w_2160h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",null,"0","0");
INSERT INTO menu VALUES(null,"广式鸡煲","4","http://i2.chuimg.com/2d4f90f36fad4fe9b650a8ed92f30718_5184w_3456h.jpg?imageView2/2/w/660/interlace/1/q/90",null,"0","0");
INSERT INTO menu VALUES(null,"广式腊味煲仔饭","4","http://i2.chuimg.com/0ca3bff2311f4ac39d00ed4ea6554ebe_750w_760h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",null,"0","0");
INSERT INTO menu VALUES(null,"广式猪脚姜","4","http://i2.chuimg.com/416fa74d2faa40df878cc4a261003a9b_750w_600h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",null,"0","0");
INSERT INTO menu VALUES(null,"红烧乳鸽","4","http://i2.chuimg.com/4ea3f6d5b44b43c8be273632849935e9_550w_440h.jpg?imageView2/2/w/660/interlace/1/q/90",null,"0","0");
INSERT INTO menu VALUES(null,"广式凉拌莲藕","4","http://i1.chuimg.com/bed9c7007c8d4e9daaf1d18568ac261f_750w_1000h.jpg@2o_50sh_1pr_1l_215w_136h_1c_1e_90q_1wh",null,"0","0");
INSERT INTO menu VALUES(null,"柠檬鸡翅","4","http://i2.chuimg.com/0ffe98fa25ff4f9b983a4b3c0ea4c197_2048w_1536h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",null,"0","0");
INSERT INTO menu VALUES(null,"广式猪骨汤","4","http://i1.chuimg.com/821211388a4b49f8b6a49c3f8a4c05a5_2886w_3072h.jpg@2o_50sh_1pr_1l_215w_136h_1c_1e_90q_1wh",null,"0","0");
INSERT INTO menu VALUES(null,"广式脆皮烧肉","4","http://i2.chuimg.com/43ddc2e1d8764287a5b2f02f5a54a473_1080w_864h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",null,"0","0");
/*5甜点*/
INSERT INTO menu VALUES(null, '秒杀哈根达斯无冰渣冰激凌',5,'http://i2.chuimg.com/f7ee4cb431f5454788c6b8c761020008_1280w_1024h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90','原方来自哈尼K克，她的是50克糖，我觉得太甜了，减了10克，最后蛋黄糊和淡奶油混合后再打发一下，这样做出来的冰激凌才能真正无冰渣，你们也试试吧，孩子很爱吃',0,0);
INSERT INTO menu VALUES(null, '雪媚娘（超详细）',5,'http://i2.chuimg.com/2bc96a728aca11e6a9a10242ac110002_1242w_1221h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg','糯米粉买水磨的，奶油选择动物性淡奶油',0,0);
INSERT INTO menu VALUES(null, '冻酸奶芝士蛋糕',5,'http://i1.chuimg.com/2e023d4c874511e6a9a10242ac110002_800w_533h.jpg@2o_50sh_1pr_1l_640w_520h_1c_1e_90q_1wh.jpg','1. 这款冻芝士是可以不用烤箱的，不过我做的时候还是用烤箱烤了戚风蛋糕代替了饼底，我觉得消化饼干太硬了，还是绵软的蛋糕配上芝士口感更好。<br>
2. 家里没有朗姆酒可以用白葡萄酒代替，味道也不错～<br>
3. 柠檬汁的量可以自己控制，如果想酸一点就多加那么点 <br>
4. 这是6寸蛋糕的量',0,0);
INSERT INTO menu VALUES(null, '双皮奶',5,'http://i1.chuimg.com/66477c7886f811e6b87c0242ac110003_457w_685h.jpg@2o_50sh_1pr_1l_280w_190h_1c_1e_90q_1wh','1.做双皮奶用了几个蛋清，那剩下的蛋黄怎么办呢？我用它们做了香酥的朗姆蛋黄小饼干。<br>
2.选奶很关键！在广州做双皮奶大多使用水牛奶，因为水牛奶的蛋白质含量很高，所以容易形成较厚的奶皮。没有水牛奶也没有关系，我们用普通的牛奶也可以做到，但是要注意要选全脂鲜奶。<br>
3.结第一次奶皮。这一步很关键，可以把牛奶煮一下，不过不能煮开，烧久了会破坏蛋白质，也结不起奶皮了，如果你向我一样不能把握好时间的话，可以把鲜牛奶盖上一层保鲜膜后放在蒸锅里蒸十分钟。注意一定呀盖上保鲜膜或者碗盖，不然蒸锅里的水滴到牛奶中就不会结奶皮了。<br>
4.奶不倒净，碗底留奶。奶凉晾后会形成一层奶皮，用尖刀沿着碗边划大概十厘米左右的口。倒出大部分牛奶，碗底留点底不要倒净，不然奶皮容易粘在碗上，待会儿就浮不起来了。<br>
5.快速搅拌蛋奶液，过筛，撇沫。鸡蛋清先用筷子搅拌均匀后倒入牛奶中加糖，搅匀后过筛。筛掉蛋清中尚未打发的部分。如果蛋奶液中有气泡和奶沫用勺子撇去，以免影响双皮奶的成型。<br>
6.回倒要耐心。把蛋清奶液缓缓沿着刚才划破的奶皮缺口倒会碗里，让奶皮浮在上面。做这一步的时候要沉得住气，别急，手稳。<br>
7.控制好火候。再次敷上保鲜膜上锅蒸，中火蒸十分钟后关火，此时不要掀开盖子焖五分钟让余温继续加热，五分钟后再取出。',0,0);
INSERT INTO menu VALUES(null, '红糖姜番薯糖水',5,'http://i2.chuimg.com/d15b71bb173745578a6ec08257889350_1080w_1440h.jpg?imageView2/1/w/280/h/190/interlace/1/q/90',null,0,0);
INSERT INTO menu VALUES(null, '无油无糖无面粉蛋糕~健康甜品??的做法',5,'http://i1.chuimg.com/b10de7c640f74a35ab82e1ce034fd182_1080w_810h.jpg@2o_50sh_1pr_1l_640w_520h_1c_1e_90q_1wh.jpg','配料不固定，爱吃什么放什么 <br>
快手好吃低脂健康的小甜品 <br>
期待开发更多的好吃的吧??',0,0);
INSERT INTO menu VALUES(null, '蜜桃少女心（渐变气泡酒）',5,'http://i2.chuimg.com/7efb6bb489a311e6a9a10242ac110002_640w_640h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90','如果雪碧或者rio是提前冷藏过的话，倒出来杯壁上雾蒙蒙的会更梦幻~',0,0);
INSERT INTO menu VALUES(null, '玉米杯',5,'http://i1.chuimg.com/ded9a5a7d42242ff850d14ac2bfe5b28_1080w_864h.jpg@2o_50sh_1pr_1l_660w_90q_1wh','1. 其实速冻玉米粒也是可以的！只是新鲜玉米味道更香，吃起来和速冻玉米还是有很大的不同的。<br>
2. 教大家一个印尼玉米杯吃法，可以給搅拌好的玉米淋上巧克力酱、沙拉酱，或是放上起司，也是很美味的吃法喔。<br>
3. 用新鲜玉米的话，剥掉玉米剩下的杆也可以拿来炖汤喔。',0,0);
INSERT INTO menu VALUES(null, '提拉米苏',5,'http://i2.chuimg.com/637971136528478e931c6f0067d3f329_1922w_1081h.png?imageView2/1/w/215/h/136/interlace/1/q/90','提拉米苏的配比要求很低，奶油、奶酪、糖、利口酒、手指饼干这些食材在固定的比例里面都可以增加减少。<br>
我一般都是做sabayon，就是水浴加热，差不多83度蛋黄就熟了，这样可以保存时间较久。<br>
这次用的炸弹面糊，是一个甜品师朋友推荐的，相对于其他做法，口感会更加轻盈丝滑。<br>
而且因为糖浆的温度高，在搅拌的时候能将蛋黄煮熟，所以在冷却时它的结构会更稳定，保存时间也更久。',0,0);
INSERT INTO menu VALUES(null, '椰奶冻',5,'http://i2.chuimg.com/dd016f3c872911e6a9a10242ac110002_690w_458h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90','冷天的话，步骤6时不用放冰箱，室温就行。<br> 
另外，放在冰箱大概5个小时左右即可。',0,0);
/**创建用料表**/
CREATE TABLE materials(
tid INT PRIMARY KEY AUTO_INCREMENT,
mid INT,#所属菜单
tname VARCHAR(20),#材料名称
dosage VARCHAR(20)#用量
);
INSERT INTO materials VALUES(null,1,"面粉","50克");
INSERT INTO materials VALUES(null,1,"冷水","100克");
INSERT INTO materials VALUES(null,1,"小葱","少许");
INSERT INTO materials VALUES(null,1,"熟黑芝麻","一把");
INSERT INTO materials VALUES(null,1,"甜面酱","一勺");
INSERT INTO materials VALUES(null,1,"香菜","少许");
INSERT INTO materials VALUES(null,1,"生菜","一大片");
INSERT INTO materials VALUES(null,1,"鸡蛋","一个");
/*****************************************/
INSERT INTO materials VALUES(null,2,"牛油果","半个");
INSERT INTO materials VALUES(null,2,"鸡蛋","1个");
INSERT INTO materials VALUES(null,2,"面包","1片");
INSERT INTO materials VALUES(null,2,"黑胡椒","少许");
INSERT INTO materials VALUES(null,2,"酸奶","180克");
INSERT INTO materials VALUES(null,2,"水果","若干");
INSERT INTO materials VALUES(null,2,"花生酱","1勺");
/***************************************/
INSERT INTO materials VALUES(null,3,"高筋粉","300g");
INSERT INTO materials VALUES(null,3,"低筋粉","120g");
INSERT INTO materials VALUES(null,3,"干酵母","4g");
INSERT INTO materials VALUES(null,3,"细砂糖","60g-70g");
INSERT INTO materials VALUES(null,3,"盐","5g");
INSERT INTO materials VALUES(null,3,"全蛋液","40g");
INSERT INTO materials VALUES(null,3,"淡奶油","120g");
INSERT INTO materials VALUES(null,3,"牛奶","120g");
INSERT INTO materials VALUES(null,3,"黄油","35g");
INSERT INTO materials VALUES(null,3,"28*28不粘烤盘","一个");
INSERT INTO materials VALUES(null,3,"表面装饰","蛋液，杏仁片一小勺");
/**************************************/
INSERT INTO materials VALUES(null,4,"饺子","新鲜包的和速冻的皆可，根据自己的量");
INSERT INTO materials VALUES(null,4,"油","适量");
INSERT INTO materials VALUES(null,4,"芝麻","选择性");
INSERT INTO materials VALUES(null,4,"葱花","少许");
/****************************************/
INSERT INTO materials VALUES(null,5,"黄瓜","1根");
INSERT INTO materials VALUES(null,5,"即食麦片","20克");
INSERT INTO materials VALUES(null,5,"牛奶","30克");
INSERT INTO materials VALUES(null,5,"炼乳","少量");
INSERT INTO materials VALUES(null,5,"白开水","400毫升");
/************************************/
INSERT INTO materials VALUES(null,6,"湿面条/干面条/挂面","1碗");
INSERT INTO materials VALUES(null,6,"鸡蛋","一个");
INSERT INTO materials VALUES(null,6,"小油菜","一颗");
INSERT INTO materials VALUES(null,6,"海苔或紫菜","三片");
INSERT INTO materials VALUES(null,6,"火腿","一片");
INSERT INTO materials VALUES(null,6,"葱姜末","若干");
/******************************/
INSERT INTO materials VALUES(null,7,"中筋面粉","500克");
INSERT INTO materials VALUES(null,7,"无铝泡打粉","4克");
INSERT INTO materials VALUES(null,7,"小苏打","4克");
INSERT INTO materials VALUES(null,7,"酵母","1克");
INSERT INTO materials VALUES(null,7,"盐","8克");
INSERT INTO materials VALUES(null,7,"鸡蛋","1个");
INSERT INTO materials VALUES(null,7,"纯牛奶","300克");
/***************************/
INSERT INTO materials VALUES(null,8,"面粉","1000克");
INSERT INTO materials VALUES(null,8,"水","380克");
INSERT INTO materials VALUES(null,8,"牛奶","400克");
INSERT INTO materials VALUES(null,8,"酵母","10克");
INSERT INTO materials VALUES(null,8,"杂粮/芝麻","100克");
INSERT INTO materials VALUES(null,8,"紫薯","适量");
INSERT INTO materials VALUES(null,8,"红薯","适量");
INSERT INTO materials VALUES(null,8,"糯米粉","适量");
INSERT INTO materials VALUES(null,8,"黄油","100克");
INSERT INTO materials VALUES(null,8,"蜂蜜","适量");
/*********************/
INSERT INTO materials VALUES(null,9,"鸡蛋","2个");
INSERT INTO materials VALUES(null,9,"牛奶","10毫升");
INSERT INTO materials VALUES(null,9,"盐","适量");
INSERT INTO materials VALUES(null,9,"胡椒","若干");
INSERT INTO materials VALUES(null,9,"椰子油","一小勺");
/**************************/
INSERT INTO materials VALUES(null,10,"鸡蛋","1个");
INSERT INTO materials VALUES(null,10,"土豆","1只");
INSERT INTO materials VALUES(null,10,"普通面粉","少许");
INSERT INTO materials VALUES(null,10,"盐","少许");
INSERT INTO materials VALUES(null,10,"油","锅底一层");
/*麻婆豆腐*/
INSERT INTO materials VALUES(null,21,"嫩豆腐","1块");
INSERT INTO materials VALUES(null,21,"豆瓣酱","1勺半");
INSERT INTO materials VALUES(null,21,"花椒粉","少许");
INSERT INTO materials VALUES(null,21,"生抽","少许");
INSERT INTO materials VALUES(null,21,"肉末","200克");
INSERT INTO materials VALUES(null,21,"糖","3g左右");
INSERT INTO materials VALUES(null,21,"老抽","几滴即可");
INSERT INTO materials VALUES(null,21,"料酒","适量");
INSERT INTO materials VALUES(null,21,"葱姜蒜","适量");
INSERT INTO materials VALUES(null,21,"汁水","勾芡(下面有介绍怎么调汁)");
INSERT INTO materials VALUES(null,21,"鸡精","适量");
INSERT INTO materials VALUES(null,21,"小米椒","2个");
/*川菜鱼香肉丝*/
INSERT INTO materials VALUES(null,22,"猪肉","500g");
INSERT INTO materials VALUES(null,22,"胡萝卜","半根");
INSERT INTO materials VALUES(null,22,"青椒","1个");
INSERT INTO materials VALUES(null,22,"水发木耳","适量");
INSERT INTO materials VALUES(null,22,"香菜","适量");
INSERT INTO materials VALUES(null,22,"郫县豆瓣酱","少许");
INSERT INTO materials VALUES(null,22,"料酒","少许");
INSERT INTO materials VALUES(null,22,"糖","少许");
INSERT INTO materials VALUES(null,22,"醋","少许");
INSERT INTO materials VALUES(null,22,"生抽","少许");
INSERT INTO materials VALUES(null,22,"耗油","少许");
INSERT INTO materials VALUES(null,22,"葱，蒜","少许");
/*宫保鸡丁*/
INSERT INTO materials VALUES(null,23,"鸡胸肉","1块");
INSERT INTO materials VALUES(null,23,"黄瓜","半根");
INSERT INTO materials VALUES(null,23,"胡萝卜","半根");
INSERT INTO materials VALUES(null,23,"花生米","1把");
INSERT INTO materials VALUES(null,23,"黄葱","1根");
INSERT INTO materials VALUES(null,23,"豆瓣","1勺");
INSERT INTO materials VALUES(null,23,"干辣椒","6个");
INSERT INTO materials VALUES(null,23,"花椒","10粒");
INSERT INTO materials VALUES(null,23,"花椒","10粒");
/*麻辣水煮鱼*/
INSERT INTO materials VALUES(null,24,"大蒜","若干");
INSERT INTO materials VALUES(null,24,"生姜","若干");
INSERT INTO materials VALUES(null,24,"鸡蛋","一枚");
INSERT INTO materials VALUES(null,24,"花椒","若干");
INSERT INTO materials VALUES(null,24,"干辣椒","若干");
INSERT INTO materials VALUES(null,24,"郫县豆瓣酱","一勺");
INSERT INTO materials VALUES(null,24,"草鱼","一条（约2.5斤)");
INSERT INTO materials VALUES(null,24,"料酒","若干");
INSERT INTO materials VALUES(null,24,"豆芽","若干");
/*水煮肉片*/
INSERT INTO materials VALUES(null,25,"里脊肉","一块");
INSERT INTO materials VALUES(null,25,"郫县豆瓣酱","4-5勺");
INSERT INTO materials VALUES(null,25,"辣椒面","1勺");
INSERT INTO materials VALUES(null,25,"花椒","2勺");
INSERT INTO materials VALUES(null,25,"蚝油","1勺");
INSERT INTO materials VALUES(null,25,"盐","2勺");
INSERT INTO materials VALUES(null,25,"糖","3勺");
INSERT INTO materials VALUES(null,25,"干辣椒","1个");
INSERT INTO materials VALUES(null,25,"生菜、豆芽、木耳、洋葱","依自己喜好");
INSERT INTO materials VALUES(null,25,"蒜","5瓣");
INSERT INTO materials VALUES(null,25,"葱花","1把");
INSERT INTO materials VALUES(null,25,"白芝麻","1把");
INSERT INTO materials VALUES(null,25,"鸡蛋","1个");
INSERT INTO materials VALUES(null,25,"料酒","1勺");
INSERT INTO materials VALUES(null,25,"胡椒粉","1勺");
/* 夫妻肺片*/
INSERT INTO materials VALUES(null,26,"辣椒碎","100g");
INSERT INTO materials VALUES(null,26,"香叶","1片");
INSERT INTO materials VALUES(null,26,"草果","1个");
INSERT INTO materials VALUES(null,26,"桂皮","1片");
INSERT INTO materials VALUES(null,26,"菜籽油","600ml");
INSERT INTO materials VALUES(null,26,"菜籽油","600ml");
INSERT INTO materials VALUES(null,26,"丁香","少量");
INSERT INTO materials VALUES(null,26,"八角","1个");
INSERT INTO materials VALUES(null,26,"花椒","少量");
INSERT INTO materials VALUES(null,26,"小茴香","少量");
INSERT INTO materials VALUES(null,26,"牛腱子","一条");
INSERT INTO materials VALUES(null,26,"牛肚","一片");
INSERT INTO materials VALUES(null,26,"牛心","1/4个");
INSERT INTO materials VALUES(null,26,"生抽","20g");
INSERT INTO materials VALUES(null,26,"土芹菜","2棵");
INSERT INTO materials VALUES(null,26,"蒜末","适量");
INSERT INTO materials VALUES(null,26,"姜片","适量");
INSERT INTO materials VALUES(null,26,"花椒面","适量");
INSERT INTO materials VALUES(null,26,"盐","大量");
/*辣子鸡丁*/
INSERT INTO materials VALUES(null,27,"鸡胸肉","1块");
INSERT INTO materials VALUES(null,27,"豆瓣酱","2勺");
INSERT INTO materials VALUES(null,27,"花椒","50粒");
INSERT INTO materials VALUES(null,27,"大蒜","5瓣");
INSERT INTO materials VALUES(null,27,"盐","2克");
INSERT INTO materials VALUES(null,27,"淀粉","适量");
INSERT INTO materials VALUES(null,27,"干辣椒","25克");
INSERT INTO materials VALUES(null,27,"姜","8片");
INSERT INTO materials VALUES(null,27,"油","100ml");
/*回锅肉*/
INSERT INTO materials VALUES(null,28,"五花肉","12块左右的肉");
INSERT INTO materials VALUES(null,28,"青椒","1只");
INSERT INTO materials VALUES(null,28,"郫县豆瓣酱","2勺");
INSERT INTO materials VALUES(null,28,"姜片","适量");
INSERT INTO materials VALUES(null,28,"料酒","适量");
INSERT INTO materials VALUES(null,28,"糖","1勺");
INSERT INTO materials VALUES(null,28,"花椒","8粒左右");
INSERT INTO materials VALUES(null,28,"鸡精","少量");
/*东坡肘子*/
INSERT INTO materials VALUES(null,29,"肘子","一个");
INSERT INTO materials VALUES(null,29,"冰糖","适量");
INSERT INTO materials VALUES(null,29,"生抽","适量");
INSERT INTO materials VALUES(null,29,"老抽","适量");
INSERT INTO materials VALUES(null,29,"料酒","一瓶");
INSERT INTO materials VALUES(null,29,"盐","适量");
INSERT INTO materials VALUES(null,29,"八角","2-3个");
INSERT INTO materials VALUES(null,29,"桂皮","一块");
INSERT INTO materials VALUES(null,29,"姜片 ","适量");
INSERT INTO materials VALUES(null,29,"葱","一根 ");
/*钵钵鸡*/
INSERT INTO materials VALUES(null,30,"鸡","1整只");
INSERT INTO materials VALUES(null,30,"生姜片","若干");
INSERT INTO materials VALUES(null,30,"盐","适量");
INSERT INTO materials VALUES(null,30,"桂皮","1片");
INSERT INTO materials VALUES(null,30,"八角","2个");
INSERT INTO materials VALUES(null,30,"山奈","少量");
INSERT INTO materials VALUES(null,30,"土豆","1个");
INSERT INTO materials VALUES(null,30,"莲藕","半个");
INSERT INTO materials VALUES(null,30,"莴笋","1段");
INSERT INTO materials VALUES(null,30,"炸豆腐","2片");
INSERT INTO materials VALUES(null,30,"鱼丸","若干");
INSERT INTO materials VALUES(null,30,"木耳","若干");
INSERT INTO materials VALUES(null,30,"辣椒碎","适量");
INSERT INTO materials VALUES(null,30,"十三香","5g");
INSERT INTO materials VALUES(null,30,"芝麻酱","10g");
INSERT INTO materials VALUES(null,30,"糖","5g");
INSERT INTO materials VALUES(null,30,"花椒油","5g");
INSERT INTO materials VALUES(null,30,"麻油","5g");
/*辣椒小炒肉*/
INSERT INTO materials VALUES(null,31,"肉","150克");
INSERT INTO materials VALUES(null,31,"辣椒","6个");
INSERT INTO materials VALUES(null,31,"酱油","一勺");
INSERT INTO materials VALUES(null,31,"盐","适量");
INSERT INTO materials VALUES(null,31,"生抽","半勺");
INSERT INTO materials VALUES(null,31,"大蒜","三掰");
INSERT INTO materials VALUES(null,31,"小米椒","五个");
/*湘味腊鸭*/
INSERT INTO materials VALUES(null,32,"油","少许");
INSERT INTO materials VALUES(null,32,"青椒","大概6-7个的样子");
INSERT INTO materials VALUES(null,32,"腊鸭","半只");
INSERT INTO materials VALUES(null,32,"姜蒜","少许切成块");
INSERT INTO materials VALUES(null,32,"料酒","按口味放");
INSERT INTO materials VALUES(null,32,"生抽","");
INSERT INTO materials VALUES(null,32,"耗油","");
INSERT INTO materials VALUES(null,32,"醋","");
INSERT INTO materials VALUES(null,32,"鸡精","");
INSERT INTO materials VALUES(null,32,"剁辣椒","");
INSERT INTO materials VALUES(null,32,"萝卜干","");
/*紫苏煎黄瓜*/
INSERT INTO materials VALUES(null,33,"紫苏","4~5片");
INSERT INTO materials VALUES(null,33,"蒜","两掰");
INSERT INTO materials VALUES(null,33,"黄瓜","两根");
INSERT INTO materials VALUES(null,33,"耗油","半勺");
INSERT INTO materials VALUES(null,33,"盐","适量");
INSERT INTO materials VALUES(null,33,"鸡精","少许");
INSERT INTO materials VALUES(null,33,"红椒","少许");
INSERT INTO materials VALUES(null,33,"豆豉","少量");
/*辣子鸡丁*/
INSERT INTO materials VALUES(null,34,"大鸡腿肉","2只");
INSERT INTO materials VALUES(null,34,"干辣椒","1把");
INSERT INTO materials VALUES(null,34,"葱段","少许");
INSERT INTO materials VALUES(null,34,"花椒","少许");
INSERT INTO materials VALUES(null,34,"生姜","一块");
INSERT INTO materials VALUES(null,34,"大蒜","8掰");
INSERT INTO materials VALUES(null,34,"五香粉","少许");
INSERT INTO materials VALUES(null,34,"孜然粉","少许勺");
INSERT INTO materials VALUES(null,34,"生抽","少许");
/*家常牛蛙*/
INSERT INTO materials VALUES(null,35,"牛蛙","4只1250克");
INSERT INTO materials VALUES(null,35,"葱姜蒜","各15克");
INSERT INTO materials VALUES(null,35,"洋葱","");
INSERT INTO materials VALUES(null,35,"大红椒大青椒","各半个");
INSERT INTO materials VALUES(null,35,"嫩姜","约25克");
INSERT INTO materials VALUES(null,35,"泡椒","5个");
INSERT INTO materials VALUES(null,35,"酸菜","30克");
INSERT INTO materials VALUES(null,35,"大料","1片");
INSERT INTO materials VALUES(null,35,"菜籽油","150克左右");
INSERT INTO materials VALUES(null,35,"生抽","1勺");
INSERT INTO materials VALUES(null,35,"料酒","1勺");
INSERT INTO materials VALUES(null,35,"豆掰酱","1勺");
INSERT INTO materials VALUES(null,35,"开水","适量");
INSERT INTO materials VALUES(null,35,"花椒面","适量");
INSERT INTO materials VALUES(null,35,"鸡精味精","适量");
INSERT INTO materials VALUES(null,35,"花椒","1撮");
/*麻辣小龙虾*/
INSERT INTO materials VALUES(null,36,"小龙虾","2斤");
INSERT INTO materials VALUES(null,36,"植物油","适量");
INSERT INTO materials VALUES(null,36,"豆瓣酱","半勺");
INSERT INTO materials VALUES(null,36,"葱","2根");
INSERT INTO materials VALUES(null,36,"姜","7-8片");
INSERT INTO materials VALUES(null,36,"蒜","6-8瓣");
INSERT INTO materials VALUES(null,36,"干辣椒","3个");
INSERT INTO materials VALUES(null,36,"香叶","6-8片");
INSERT INTO materials VALUES(null,36,"八角","1个");
INSERT INTO materials VALUES(null,36,"花椒","1把");
INSERT INTO materials VALUES(null,36,"麻椒","1把");
INSERT INTO materials VALUES(null,36,"啤酒","2听");
INSERT INTO materials VALUES(null,36,"冰糖","1汤勺");
INSERT INTO materials VALUES(null,36,"酱油","2汤勺");
INSERT INTO materials VALUES(null,36,"耗油","2汤勺");
INSERT INTO materials VALUES(null,36,"胡椒粉","10克");
INSERT INTO materials VALUES(null,36,"盐","25-30克");
INSERT INTO materials VALUES(null,36,"柠檬皮","少许");
/*水煮牛肉*/
INSERT INTO materials VALUES(null,37,"豆皮","");
INSERT INTO materials VALUES(null,37,"豆芽","");
INSERT INTO materials VALUES(null,37,"青菜","");
INSERT INTO materials VALUES(null,37,"干辣椒","5个");
INSERT INTO materials VALUES(null,37,"花椒","");
INSERT INTO materials VALUES(null,37,"蒜末","");
INSERT INTO materials VALUES(null,37,"葱","");
INSERT INTO materials VALUES(null,37,"料酒","1勺");
INSERT INTO materials VALUES(null,37,"豆瓣酱","1勺");
INSERT INTO materials VALUES(null,37,"生抽","2勺");
INSERT INTO materials VALUES(null,37,"淀粉","2勺");
INSERT INTO materials VALUES(null,37,"辣椒面","");
/*干锅香辣虾*/
INSERT INTO materials VALUES(null,38,"虾","300克");
INSERT INTO materials VALUES(null,38,"土豆","1个");
INSERT INTO materials VALUES(null,38,"黄瓜","半根");
INSERT INTO materials VALUES(null,38,"香菜","1小把");
INSERT INTO materials VALUES(null,38,"干红辣椒","1小把");
INSERT INTO materials VALUES(null,38,"葱姜蒜","适量");
INSERT INTO materials VALUES(null,38,"四川辣酱","1茶勺");
INSERT INTO materials VALUES(null,38,"生抽","1汤勺");
INSERT INTO materials VALUES(null,38,"糖","1茶勺");
INSERT INTO materials VALUES(null,38,"料酒","1汤勺");
INSERT INTO materials VALUES(null,38,"麻辣花生","1汤勺");
INSERT INTO materials VALUES(null,38,"白芝麻","1汤勺");
INSERT INTO materials VALUES(null,38,"年糕条","适量");
/*香煎土豆片*/
INSERT INTO materials VALUES(null,39,"土豆","两个");
INSERT INTO materials VALUES(null,39,"小葱","两根");
INSERT INTO materials VALUES(null,39,"豆瓣酱","一勺");
INSERT INTO materials VALUES(null,39,"生抽","一勺");
INSERT INTO materials VALUES(null,39,"蒜头","三颗");
/*剁椒鱼头*/
INSERT INTO materials VALUES(null,40,"剁椒(菜市场有卖)","200克");
INSERT INTO materials VALUES(null,40,"蒸鱼鼓油","一汤勺");
INSERT INTO materials VALUES(null,40,"油","适量");
INSERT INTO materials VALUES(null,40,"白胡椒粉","适量");
INSERT INTO materials VALUES(null,40,"葱","五根");
INSERT INTO materials VALUES(null,40,"姜","五片");
INSERT INTO materials VALUES(null,40,"金针菇","一把");
INSERT INTO materials VALUES(null,40,"蒜","五颗");
INSERT INTO materials VALUES(null,40,"辣椒油","一汤勺");
INSERT INTO materials VALUES(null,40,"料酒","三汤勺");
INSERT INTO materials VALUES(null,40,"鱼头","一个");
/*排骨*/
insert into materials values(null,"41","排骨","500克");
insert into materials values(null,"41","洋葱","1个");
insert into materials values(null,"41","蒜瓣","12个");
insert into materials values(null,"41","小葱","3根");
insert into materials values(null,"41","姜片","5片");
insert into materials values(null,"41","蚝油","15克");
insert into materials values(null,"41","生抽","15克");
insert into materials values(null,"41","老抽","5克");
insert into materials values(null,"41","米酒","5克");
insert into materials values(null,"41","淀粉","15克");
insert into materials values(null,"41","糖","5克");
insert into materials values(null,"41","白胡椒","2克");
/*糯米*/
insert into materials values(null,"42","糯米","300克");
insert into materials values(null,"42","香菇","100克");
insert into materials values(null,"42","胡萝卜","150克");
insert into materials values(null,"42","虾干或鱿鱼干","50克");
insert into materials values(null,"42","烤熟的花生","80克");
insert into materials values(null,"42","中筋面粉","500克");
insert into materials values(null,"42","水","275克");
insert into materials values(null,"42","糖","20克");
insert into materials values(null,"42","盐","3.5克");
insert into materials values(null,"42","酵母","5克");
insert into materials values(null,"42","白胡椒粉","1小勺");
insert into materials values(null,"42","蚝油","25克");
insert into materials values(null,"42","老抽","10克");
insert into materials values(null,"42","沙茶酱","35克");
/*鸡*/
insert into materials values(null,"43","干葱头","8-10颗");
insert into materials values(null,"43","新鲜鸡一只","2.5斤左右");
insert into materials values(null,"43","生姜","若干");
insert into materials values(null,"43","生抽","适量");
insert into materials values(null,"43","糖","4小勺");
insert into materials values(null,"43","料酒","适量");
insert into materials values(null,"43","盐","0.5小勺");
/*腊味煲仔饭*/
insert into materials values(null,"44","香肠","2根");
insert into materials values(null,"44","自制豆皮","若干张");
insert into materials values(null,"44","绿叶菜","一把");
insert into materials values(null,"44","鸡蛋","1个");
insert into materials values(null,"44","生抽","2勺");
insert into materials values(null,"44","老抽","1勺");
insert into materials values(null,"44","料酒","1勺");
insert into materials values(null,"44","香油","1勺");
insert into materials values(null,"44","糖","1勺");
insert into materials values(null,"44","蚝油","少许");
insert into materials values(null,"44","鱼露","少许");
/*猪脚姜*/
insert into materials values(null,"45","猪蹄","半只");
insert into materials values(null,"45","甜醋","半瓶");
insert into materials values(null,"45","红糖","一片");
insert into materials values(null,"45","姜","若干");
insert into materials values(null,"45","鹌鹑蛋","10只");
/*红烧乳鸽*/
insert into materials values(null,"46","乳鸽","2只");
insert into materials values(null,"46","十三香","适量");
insert into materials values(null,"46","生抽","适量");
insert into materials values(null,"46","老抽","适量");
insert into materials values(null,"46","麻油","半勺");
insert into materials values(null,"46","卤水","适量");
/*凉拌莲藕*/
insert into materials values(null,"47","藕","3节");
insert into materials values(null,"47","酱油","4勺");
insert into materials values(null,"47","陈醋","3勺");
insert into materials values(null,"47","盐","少许");
insert into materials values(null,"47","花生油","约一勺");
insert into materials values(null,"47","芝麻油","约一勺");
insert into materials values(null,"47","蒜头","5瓣");
insert into materials values(null,"47","香菜","3棵");
insert into materials values(null,"47","糖和鸡粉","适量");
insert into materials values(null,"47","冰水","适量");
/*柠檬鸡翅*/
insert into materials values(null,"48","鸡翅","6个");
insert into materials values(null,"48","柠檬","2个");
insert into materials values(null,"48","胡萝卜","半根");
insert into materials values(null,"48","料酒","2勺");
insert into materials values(null,"48","生抽","2勺");
insert into materials values(null,"48","盐","少许");
insert into materials values(null,"48","糖","少许");
insert into materials values(null,"48","蒜","3瓣");
/*猪骨汤*/
insert into materials values(null,"49","猪骨","250克");
insert into materials values(null,"49","姜","2片");
insert into materials values(null,"49","南瓜带皮","350克");
insert into materials values(null,"49","栗子","8颗");
insert into materials values(null,"49","北杏","5克");
/*脆皮烧肉*/
insert into materials values(null,"50","五花肉","1000克");
insert into materials values(null,"50","五香粉","5勺");
insert into materials values(null,"50","盐","2勺");
insert into materials values(null,"50","白醋","适量");
INSERT INTO materials VALUES(null,51,'淡奶油','200克');
INSERT INTO materials VALUES(null,51,'蛋黄','2个');
INSERT INTO materials VALUES(null,51,'糖','40克');
INSERT INTO materials VALUES(null,51,'牛奶','50克');
INSERT INTO materials VALUES(null,51,'盐','0.5克');
INSERT INTO materials VALUES(null,51,'柠檬汁','几滴');
/********************/
INSERT INTO materials VALUES(null,52,'糯米粉','50g');
INSERT INTO materials VALUES(null,52,'玉米淀粉','15g');
INSERT INTO materials VALUES(null,52,'细砂糖','25g');
INSERT INTO materials VALUES(null,52,'牛奶','85g');
INSERT INTO materials VALUES(null,52,'黄油','10g');
INSERT INTO materials VALUES(null,52,'淡奶油','120g');
INSERT INTO materials VALUES(null,52,'细砂糖','8g');
INSERT INTO materials VALUES(null,52,'熟糯米粉','适量');
INSERT INTO materials VALUES(null,52,'时令水果','适量');
/*********************/
INSERT INTO materials VALUES(null,53,'奶油奶酪','200g');
INSERT INTO materials VALUES(null,53,'酸奶','180g');
INSERT INTO materials VALUES(null,53,'牛奶','40ml');
INSERT INTO materials VALUES(null,53,'消化饼干','100g');
INSERT INTO materials VALUES(null,53,'蛋黄','1个');
INSERT INTO materials VALUES(null,53,'吉利丁片','10g');
INSERT INTO materials VALUES(null,53,'黄油','50g');
INSERT INTO materials VALUES(null,53,'细砂糖','75g');
INSERT INTO materials VALUES(null,53,'柠檬汁','15ml');
INSERT INTO materials VALUES(null,53,'朗姆酒','一勺');
/************************/
INSERT INTO materials VALUES(null,54,'牛奶','400毫升');
INSERT INTO materials VALUES(null,54,'鸡蛋清','2个');
INSERT INTO materials VALUES(null,54,'糖','2茶匙');
/************************/
INSERT INTO materials VALUES(null,55,'番薯','3条');
INSERT INTO materials VALUES(null,55,'红糖','适量');
INSERT INTO materials VALUES(null,55,'姜','3片');
/**************************/
INSERT INTO materials VALUES(null,56,'酸奶','200克');
INSERT INTO materials VALUES(null,56,'鸡蛋','1个');
INSERT INTO materials VALUES(null,56,'南瓜','100克');
INSERT INTO materials VALUES(null,56,'红薯','100克');
/***************************/
INSERT INTO materials VALUES(null,57,'水蜜桃口味Rio','适量');
INSERT INTO materials VALUES(null,57,'雪碧','适量');
INSERT INTO materials VALUES(null,57,'勺子','适量');
/***************************/
INSERT INTO materials VALUES(null,58,'玉米','2根');
INSERT INTO materials VALUES(null,58,'牛油','适量');
INSERT INTO materials VALUES(null,58,'盐','适量');
INSERT INTO materials VALUES(null,58,'糖','适量');
/***************************/
INSERT INTO materials VALUES(null,59,'鸡蛋','适量');
INSERT INTO materials VALUES(null,59,'马斯卡彭奶酪','适量');
INSERT INTO materials VALUES(null,59,'奶油','适量');
INSERT INTO materials VALUES(null,59,'浓缩咖啡','适量');
INSERT INTO materials VALUES(null,59,'手指饼干','适量');
INSERT INTO materials VALUES(null,59,'白砂糖','适量');
/****************************/
INSERT INTO materials VALUES(null,60,'椰浆','60g');
INSERT INTO materials VALUES(null,60,'牛奶','135g');
INSERT INTO materials VALUES(null,60,'淡奶油','95g');
INSERT INTO materials VALUES(null,60,'吉利丁片','2片');
INSERT INTO materials VALUES(null,60,'绵白糖','35g');
/**创建步骤表**/
CREATE TABLE step(
sid INT PRIMARY KEY AUTO_INCREMENT,
mid INT,#所属菜单
simg VARCHAR(100),#当前步骤对应的图片
title VARCHAR(300)#当前步骤对应的描述
);
/* 鸡蛋早餐饼*/
INSERT INTO step VALUES(null,1,"http://i2.chuimg.com/fd2a9b1a273a11e7947d0242ac110002_1992w_2656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","首先将需要的材料准备好:
面粉加水调成糊状（面粉和水的比例没有精确算过，一般就是50克粉兑100克水，反正调成流动的糊状即可，可以略微稀一点，便于均匀地摊开）；小葱和香菜洗净后切碎；生菜洗净后沥干水分。");
INSERT INTO step VALUES(null,1,"http://i1.chuimg.com/008064fc273b11e7bc9d0242ac110002_1992w_2656h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg
","开中火放上锅子，锅中倒一点点油，用耙子绕着锅边拉均匀（有油刷的可以刷一遍）。等锅微微热的时候调小火！！！倒入调好的面糊（锅切不可烧得过热，要不然面糊倒入后马上会凝结不利于摊开），用耙子慢慢晕开（此处请不要用工具不停反复划拉，要等面糊慢慢成形！）。");
INSERT INTO step VALUES(null,1,"http://i2.chuimg.com/049b9408273b11e7947d0242ac110002_1992w_2656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","开中火，等面糊结成片状微微泛白后，敲一个鸡蛋，也用耙子慢慢摊均匀。");
INSERT INTO step VALUES(null,1,"http://i2.chuimg.com/076da86a273b11e7947d0242ac110002_1992w_2656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","接着撒上葱花"); 
INSERT INTO step VALUES(null,1,"http://i1.chuimg.com/0a51e942273b11e7947d0242ac110002_1992w_2656h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","撒熟的黑芝麻，没有也可不撒。"); 
INSERT INTO step VALUES(null,1,"http://i1.chuimg.com/0d7a6f54273b11e7bc9d0242ac110002_1992w_2656h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","等饼皮完全成形后（翻面的时候饼皮不沾锅为佳，不要太软）小心地把饼皮翻面，抹上甜面酱");
INSERT INTO step VALUES(null,1,"http://i2.chuimg.com/0fe5a894273b11e7947d0242ac110002_1992w_2656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","撒上香菜，不喜欢这个味道的也可不撒（可是我觉得香菜和甜面酱是这个饼的灵魂哈哈）。");
INSERT INTO step VALUES(null,1,"http://i1.chuimg.com/12a5aeee273b11e7947d0242ac110002_1992w_2656h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","关火，放上生菜（及其它食材:比如黄瓜丝、煎好的培根、香肠、油条等）。");
/*牛油果*/
INSERT INTO step VALUES(null,2,"http://i2.chuimg.com/9eb4a14b91954e719f41d350fc8297e4_3072w_2304h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","准备好所有食材");
INSERT INTO step VALUES(null,2,"http://i2.chuimg.com/cc42243d1f4c4c94bd86fa83c576ba01_1124w_1124h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","鸡蛋加黑芝麻打散");
INSERT INTO step VALUES(null,2,"http://i2.chuimg.com/ec449e6b1432455bac6691d82b6c3d85_1280w_1023h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","半块牛油果加入少量盐和黑胡椒压成泥状备用");
INSERT INTO step VALUES(null,2,"http://i2.chuimg.com/a73fe0b9dfae4ccca08c0d34fd73fad1_1125w_900h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","将面包片裹上蛋液，煎至两面金黄后稍微放凉");
INSERT INTO step VALUES(null,2,"http://i2.chuimg.com/a73fe0b9dfae4ccca08c0d34fd73fad1_1125w_900h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","将面包片裹上蛋液，煎至两面金黄后稍微放凉");
INSERT INTO step VALUES(null,2,"http://i2.chuimg.com/a73fe0b9dfae4ccca08c0d34fd73fad1_1125w_900h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","将面包片裹上蛋液，煎至两面金黄后稍微放凉");
INSERT INTO step VALUES(null,2,NULL,"煎好的面包依次涂上花生酱和牛油果");
INSERT INTO step VALUES(null,2,"http://i1.chuimg.com/9819512c29fd439baff06bfcd4c35b3b_1124w_899h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"搭配喜欢的酸奶和水果即可");
/***************************/
INSERT INTO step VALUES(null,3,"http://i2.chuimg.com/2c0893808e0511e6b87c0242ac110003_853w_640h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"把除了黄油以外的原料放在一起，揉至扩展阶段，加入黄油揉至黄油充分吸收，能出膜效果会更好。");
INSERT INTO step VALUES(null,3,"http://i2.chuimg.com/2bccc2568e0511e6a9a10242ac110002_1901w_820h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"放在温暖处发酵至原来的2-2.5倍大，手指蘸面粉插入面团中，小洞不回弹，面团不塌陷，拉开发酵好的面团里面一丝一丝的，然后将面团排气，尽量少加干粉，否则影响粘合，盖上保鲜膜松弛15分钟。");
INSERT INTO step VALUES(null,3,"http://i2.chuimg.com/2b6596ee8e0511e6b87c0242ac110003_640w_853h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"面团重约800g，将面团分成16等份，50g一个滚圆摆入烤盘。");
INSERT INTO step VALUES(null,3,"http://i2.chuimg.com/2b3322908e0511e6a9a10242ac110002_640w_853h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"放在温度和湿度合适的地方进行二次醒发至1.5-2倍大。醒发好之后在表面刷上鸡蛋液（刷蛋液时要轻轻的，否则弄破了面团就会塌，如果一碰就塌说明醒发过度了）。撒上杏仁片。");
INSERT INTO step VALUES(null,3,"http://i2.chuimg.com/2a4cb2928e0511e6b87c0242ac110003_590w_713h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"烤箱180°预热5分钟，烤盘放入下数第二层，调节上火175°，下火160°，烤20-25分钟即可，烤至十几分钟上色满意后加盖锡纸.烤箱不同，会有温差，请大家自己调节好。");
INSERT INTO step VALUES(null,3,"http://i1.chuimg.com/2a208f328e0511e6b87c0242ac110003_270w_240h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"掰开一个，拉丝效果不错，非常松软。蛤蛤蛤");
/*************************************************/
INSERT INTO step VALUES(null,4,"http://i2.chuimg.com/91720fce8ef211e6b87c0242ac110003_3854w_2569h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"饺子新鲜的和速冻的皆可，这次是用了速冻的。");
INSERT INTO step VALUES(null,4,null,"平底锅抹油，饺子无需解冻，平铺码好。");
INSERT INTO step VALUES(null,4,null,"中火开始煎，一两分钟后夹起一个观察，若底部焦黄就可倒入纯净水。水没过饺子三分之一（如果是新鲜的饺子，水量适当减少。）加盖，焖五分钟左右。");
INSERT INTO step VALUES(null,4,"http://i2.chuimg.com/93c80ef48ef211e6b87c0242ac110003_4288w_2848h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"水快收干时，倒入一小碗稀面粉水（面粉：水=1：10），撒芝麻和香葱（也可不撒）。家里没葱了，我撒了青椒末。");
INSERT INTO step VALUES(null,4,"http://i1.chuimg.com/95d1d4a08ef211e6b87c0242ac110003_3882w_2588h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"小火煎干，完成。");
/**********************************************/
INSERT INTO step VALUES(null,5,"http://i2.chuimg.com/0b3d2d5f776c4620ada59a192c83f8c7_817w_817h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"准备原材:黄瓜洗干净用淡盐水泡一会，燕麦，奶粉，糖的量根据喜好随意放多少，我是为了拍照才这样分别秤量的");
INSERT INTO step VALUES(null,5,"http://i1.chuimg.com/fac55422005544748b65c8b45e7ab510_817w_817h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"浸泡好的黄瓜再冲洗下，切片放料理机，加入奶粉，燕麦，白糖或者蜂蜜，炼乳都可以");
INSERT INTO step VALUES(null,5,"http://i1.chuimg.com/661d386077f7435c8ecb3414dd912c9c_817w_817h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"加入白开水，小心烫哦（用开水豆浆就不会有青味了，凉白开的话豆浆会有生黄瓜的青味，我是怎么样都可以的，但是娃不喜欢有青味的，所以我用了白开水）");
INSERT INTO step VALUES(null,5,"http://i1.chuimg.com/51c4ab0c37524618be70ca6f393d3929_817w_817h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"直接果汁键，2-3分钟就可以了，很香很浓郁顺滑，不管是搭配早餐还是午餐都是完美的");
/*************************************************/
INSERT INTO step VALUES(null,6,null,"锅中水烧开，下面条");
INSERT INTO step VALUES(null,6,"http://i2.chuimg.com/d8c4c3c48fd011e6b87c0242ac110003_640w_640h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"烧水煮面的同时，拿出一只吃面的碗，在碗底铺好准备的调料：葱姜末、虾米、熟芝麻、白胡椒粉、花椒油、麻油、生抽、醋");
INSERT INTO step VALUES(null,6,"http://i1.chuimg.com/d90b4c7c8fd011e6a9a10242ac110002_640w_640h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"面条煮到7分熟的时候，加入切好的火腿片进锅中一起煮，快煮好面的最后半分钟加入小青菜，然后关火");
INSERT INTO step VALUES(null,6,"http://i2.chuimg.com/d9597c308fd011e6b87c0242ac110003_640w_640h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"煮面的同时，可另起一支平底锅，用小火煎一只漂亮的太阳蛋");
INSERT INTO step VALUES(null,6,"http://i2.chuimg.com/d9a19fa68fd011e6a9a10242ac110002_640w_640h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"面煮好关火，舀两大勺面汤进碗里冲开调料，捞面、最后一次铺上火腿、青菜、煎蛋，再加两片海苔，大功告成！");
/*****************************************/
INSERT INTO step VALUES(null,7,"http://i1.chuimg.com/bc21b09d50ed45aea29184d2f09f1563_480w_640h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"1:盆中加入面粉，泡打粉，小苏打，酵母，盐，混合均匀。2:鸡蛋打成蛋液，与牛奶混合，分次加入面中把面和均匀，揉透，封上保鲜膜醒发5分钟，再次揉面，反复两次把面完全揉光。3:取20克色拉油，把面团表面涂均匀，封上保鲜膜醒发至面团2倍大时即成油条面胚。");   
INSERT INTO step VALUES(null,7,"http://i2.chuimg.com/1369abc5052749c09e793b73ef98b8e7_640w_756h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"1:锅中加入宽油，一边烧油一边处理面团。2:案板撒一层铺面，取出面团用手掌用力按压排气。3:左右手分别托住面团两端，将其拖成长条，用擀面杖擀成1公分厚，20公分宽的长条再用刀切成3公分长条");
INSERT INTO step VALUES(null,7,"http://i1.chuimg.com/c08e2540e8974671b143e8d5ff8dd4c0_640w_750h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"用擀面杖擀成长条");
INSERT INTO step VALUES(null,7,"http://i2.chuimg.com/b28406ff9c57485192a6df1c66af9866_640w_756h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"取两条面摞在一起，取一根筷子纵向从中间压实，压紧即成胚条。");
INSERT INTO step VALUES(null,7,"http://i2.chuimg.com/9eaca0bb7c62413d8c754b30b289573a_640w_756h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"1:双手捏住胚条两头，将面均匀拉成30公分左右的长条，轻轻放入200度左右的热油中，一边炸一边用筷子不停地翻动让油条受热均匀，待油条丰满膨胀，酥脆金黄时，捞出控油装盘即可。。。");
INSERT INTO step VALUES(null,7,"http://i2.chuimg.com/a240d0332fb94d668aa962e6104ed18f_640w_747h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"金黄酥脆");
INSERT INTO step VALUES(null,7,"http://i2.chuimg.com/8c32756475f7418a947fe8a639a82bff_640w_577h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"酥脆可口");
INSERT INTO step VALUES(null,7,"http://i1.chuimg.com/8db2239a9fcc4adcae16af21039fe799_640w_565h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg",
"出锅完成");
/************************************************/
INSERT INTO step VALUES(null,8,null,"锅中水烧开，下面条");
INSERT INTO step VALUES(null,8,"http://i1.chuimg.com/b38f206fa7bc42bfbaf74418f0cbafce_1126w_1500h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","之前买的小籽杂粮，放进密封袋保存啦，没了包装袋，完全忘记这叫什么名字。不过很多东西都可以替换，或是直接改成加一些杂粮粉。");
INSERT INTO step VALUES(null,8,"http://i2.chuimg.com/18599714011f45d5b29b9a3fc97326bf_1126w_1500h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"水、面、牛奶、酵母粉和这个不知名的东东混合一起，揉好后静止醒发。");
INSERT INTO step VALUES(null,8,"http://i2.chuimg.com/1676cc8a5197496d8f08f8f9e231433f_1126w_1500h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"紫薯蒸熟后去皮，压碎，用黄油炒至细腻少颗粒的状态。（这个紫薯很干，容易结块）。");
INSERT INTO step VALUES(null,8,"http://i2.chuimg.com/5fa61de7c9904888b7e92a6fcd81760a_1126w_1500h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"融合了黄油后的感觉，瞬间觉得有食欲啦，加入适量蜂蜜，放凉后备用。");
INSERT INTO step VALUES(null,8,"http://i2.chuimg.com/f794991e0fe04d81a839fa16c1f1246e_1126w_1500h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"红心的红薯蒸熟后，稍稍放凉后，加入适量糯米粉，以不粘手为准（也可加些面粉进去，如果糯米粉加完后，依然觉得粘手的话）。然后擀成饺子皮大小后，包入紫薯馅料备用。");
INSERT INTO step VALUES(null,8,"http://i2.chuimg.com/28a1ca1178224d5b874911dfa4b9f2e6_1126w_1500h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"面团发好后，切成合适大小，擀开包入之前备好的红薯球。");
INSERT INTO step VALUES(null,8,null,
"蒸20分钟左右即可完成！");
INSERT INTO step VALUES(null,8,null,
"完美的双薯配合！");
/*****************************************/
INSERT INTO step VALUES(null,9,"http://i2.chuimg.com/fcc7c8eb4a094e66ad53f53632aa60ca_1124w_1500h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"将鸡蛋和牛奶混合打散，加入少许盐和胡椒调味。");
INSERT INTO step VALUES(null,9,"http://i1.chuimg.com/a3de7130c2db452ea1017b537def7304_1124w_1500h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","平底锅火上预热，我用的是椰子油，让鸡蛋吃起来有一股淡淡椰香。油溶化后将火关至小火。");
INSERT INTO step VALUES(null,9,"http://i2.chuimg.com/3d2fecdc356a4794b7bc3b9525314bef_480w_384h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"现在，一定要有耐心，等蛋液边缘凝结，可用勺往中间推凝结的蛋液。大概有60%蛋液凝结的时候，把锅移开火焰。用余温将剩下的蛋液继续热熟。");
INSERT INTO step VALUES(null,9,"http://i2.chuimg.com/18768d4e2d1b4269bdc300a935ea62c5_1500w_1124h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"烤上两片面包，开始享受吧。");
/***************************************/
INSERT INTO step VALUES(null,10,"http://i1.chuimg.com/c5fb36be91cf11e6b87c0242ac110003_1080w_1080h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","土豆嗖成丝，用冷水冲一下。（是一位老阿姨教我的，别问为啥了，也可以不冲，看个人喜好哈）");
INSERT INTO step VALUES(null,10,"http://i2.chuimg.com/c5aa380491cf11e6b87c0242ac110003_1080w_1080h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"加入少许面粉，盐、鸡蛋，拌匀。面粉不要太多，不然太厚影响口感。搅拌成糊糊状，摇晃时有流动感是最好。盐根据自己的口味适量即可。");
INSERT INTO step VALUES(null,10,"http://i2.chuimg.com/c554db7091cf11e6a9a10242ac110002_1080w_1080h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"平底锅刷上一层薄薄的油，小火，倒入搅拌好的糊，摊平，小火煎至金黄翻面，两面金黄即可出锅。");
INSERT INTO step VALUES(null,10,"http://i2.chuimg.com/c4f1b2c091cf11e6a9a10242ac110002_1080w_1080h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg",
"出锅喽。");
/*麻婆豆腐*/
INSERT INTO step VALUES(null,21,"http://i2.chuimg.com/ab03619633db4b4d8d3ece0750c18e70_2016w_1008h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","姜葱蒜切成粒，小米椒二个，嫩豆腐一块准备好，(200克猪肉剁成酱☞加入适量胡椒粉，淀粉调匀)，准备好所有食材之后，开始下一步工序!");
INSERT INTO step VALUES(null,21,"http://i2.chuimg.com/8c90c5bbd7224f17b223a4e8d216e079_2016w_1008h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","嫩豆腐切成块状，大小保持一致，千万不要切坏了，准备好锅，加入水烧开之后加一勺盐，在倒入豆腐☞转小火2分钟左右捞出(主要是去除豆腐的腥味)然后调制好做麻婆豆腐的汁水，碗中加入生抽少许，老抽几滴即可，清水半碗，糖3g，鸡精少许，淀粉适量一起搅拌即可");
INSERT INTO step VALUES(null,21,"http://i2.chuimg.com/ea4605eff65f4331b2dbab6632acb310_480w_960h.gif?imageView2/1/w/800/h/600/q/90/format/gif","起锅烧油，放入葱姜蒜爆香，加入小米椒，肉沫炒制金黄色，在放入一勺半郫县豆瓣酱和料酒翻炒均匀，然后锅中加适量清水，(水淹过豆腐即可，也不要倒入太多，适量就好)");
INSERT INTO step VALUES(null,21,"http://i2.chuimg.com/d1be188143504da6b217689cb1c7281a_480w_960h.gif?imageView2/1/w/800/h/600/q/90/format/gif","在倒入豆腐推至均匀，千万不要用力过大，不然豆腐容易碎掉，二三分钟左右看到汤汁变少黏稠之后，在加入准备好的汁水勾芡即可出锅");
INSERT INTO step VALUES(null,21,"http://i1.chuimg.com/d61863498df44a98a4e54446c729343c_2044w_1080h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","撒上葱花，花椒粉点缀，一道好吃又好看的川味麻婆豆腐就大功告成");
/*川菜鱼香肉丝*/
INSERT INTO step VALUES(null,22,"http://i1.chuimg.com/9ba4a7988daa11e6b87c0242ac110003_380w_380h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","肉切成丝，用盐、料酒、淀粉抓匀");
INSERT INTO step VALUES(null,22,"http://i2.chuimg.com/9bc7758e8daa11e6a9a10242ac110002_557w_557h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","胡萝卜、青椒、木耳切丝，香菜切成段");
INSERT INTO step VALUES(null,22,"http://i2.chuimg.com/9bf5afb28daa11e6b87c0242ac110003_650w_650h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","2勺白糖、2勺醋、1勺生抽、1勺耗油、葱末、蒜末、水、淀粉调成碗汁");
INSERT INTO step VALUES(null,22,"http://i2.chuimg.com/9c3b5fbc8daa11e6a9a10242ac110002_650w_650h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","起锅，放油，把肉丝炒变色，盛出备用");
INSERT INTO step VALUES(null,22,"http://i2.chuimg.com/9c687f9c8daa11e6a9a10242ac110002_650w_650h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","起锅，放少许油，放入2勺郫县豆瓣酱，炒出红油");
INSERT INTO step VALUES(null,22,"http://i1.chuimg.com/9cb661ee8daa11e6b87c0242ac110003_650w_650h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","炒出红油后，放青椒丝、胡萝卜丝炒至断生");
INSERT INTO step VALUES(null,22,"http://i2.chuimg.com/9cf0244c8daa11e6a9a10242ac110002_650w_650h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","放肉丝、木耳丝、香菜段，翻炒一下，放入碗汁，炒匀，关火，出锅前再放入少许蒜末");
/*宫保鸡丁*/
INSERT INTO step VALUES(null,23,"http://i1.chuimg.com/309355b56fdc42b3aa0455835660e18a_750w_750h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","首先是鸡胸肉的处理，把表面的筋膜处理掉，然后用刀背拍一下，切小块，一勺料酒、一点胡椒粉、适量盐、淀粉，用手捞匀。");
INSERT INTO step VALUES(null,23,"http://i1.chuimg.com/1d916b40febd40a1b178a9ca6b3fccca_750w_750h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","配料处理好，黄瓜最好把芯去掉，这样炒出来不会太水。花生米我用的生的，有油炸过的当然可以替代。");
INSERT INTO step VALUES(null,23,"http://i1.chuimg.com/f4b085b3b55b478baa621c8a147f9a05_750w_750h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","然后调汁，一勺醋，大半勺糖，一勺生抽，2勺料酒，一勺耗油，一点鸡粉，一点淀粉。(拍的时候还没加淀粉，加了会白一点)");
INSERT INTO step VALUES(null,23,"http://i1.chuimg.com/37966840ec494226b036c6773e4b92a9_750w_750h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","锅内下油，先把花生酥一下，然后再倒入鸡丁滑一下油，定型，变色捞出。");
INSERT INTO step VALUES(null,23,"http://i2.chuimg.com/c191e388294d4a99bbf29a337b9a6bb8_750w_750h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","然后锅内倒出多余的油，剩下一些炒菜的，倒入花椒，爆出香味过后，捞出。加入一勺豆瓣炒出红油，再下蒜瓣和干辣椒爆香，再下胡萝卜和黄瓜跟鸡丁，翻炒几下倒入黄葱。
加入调好的料汁，略微翻炒收汁，出锅！！");
/*麻辣水煮鱼*/
INSERT INTO step VALUES(null,24,null,"腌鱼：好人家腌鱼包、鸡蛋清、料酒、姜丝、盐少许、花生油少许。手抓均匀，静置15分钟（期间可以切配其他食材） 豆芽过开水后待用");
INSERT INTO step VALUES(null,24,null,"大蒜整颗稍微拍一下，姜切片，干辣椒切断（喜欢吃辣的亲可以用朝天椒拍扁代替），开始热锅下油，放入蒜、姜、辣椒、豆瓣酱一勺、翻炒后放入好人家水煮鱼调味包继续翻炒几下，放入提前备好的高汤（或开水），加一点盐到汤里（注意不要太多，前面的豆瓣酱和调味包已经有盐了），水开后先放鱼骨熬出味，放入豆芽，熟之捞出到盛鱼的大碗里（豆芽垫底做配菜）");
INSERT INTO step VALUES(null,24,null,"捞完锅里的鱼骨和豆芽后剩下的汤继续烧开，下鱼片两分钟水开即可盛盘（鱼片易熟，煮久易碎），汤和鱼全部盛到刚才盛有鱼骨和豆芽的大碗里");
INSERT INTO step VALUES(null,24,"http://i2.chuimg.com/ac3a4e9a8f2711e6b87c0242ac110003_640w_640h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","最后一个步骤：鱼面撒点花椒，热锅下油烧汤淋在花椒上面，再在上面摆上几根香菜，香喷喷的水煮鱼出锅啦！");
/*水煮肉片*/
INSERT INTO step VALUES(null,25,"http://i2.chuimg.com/e82ad0c8f1e3416bab5ee6c7dee93b0a_756w_1008h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","里脊肉洗净，与纹路垂直切成薄片，越薄越好；用胡椒粉、料酒腌制15分钟，倒入蛋清和淀粉抓匀，量上述都有");
INSERT INTO step VALUES(null,25,"http://i2.chuimg.com/8924d756509449a6bbb0f47aab16257b_1008w_756h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","蔬菜我用了生菜和洋葱。生菜只需要焯一头铺到碗底；木耳的话需要提前泡开");
INSERT INTO step VALUES(null,25,"http://i2.chuimg.com/49db83df1b174d2f924d10443175912b_1008w_756h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","将洋葱，蒜末，干辣椒切好待用");
INSERT INTO step VALUES(null,25,"http://i1.chuimg.com/2da6eff493c547039e865dba432e0d77_1008w_756h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","锅内倒入油，放入一半蒜末、一把花椒和郫县豆瓣酱，3勺颜色不够红但适合不会吃辣的人，如果要正宗点就4-5勺，爆香");
INSERT INTO step VALUES(null,25,"http://i2.chuimg.com/f3d75b886e114d0897ce8e14e7ef2701_1008w_756h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","下洋葱，翻炒均匀。有黑木耳的此时下锅一起炒。");
INSERT INTO step VALUES(null,25,"http://i2.chuimg.com/90d3782d719844a7b0d8a94a7bed2ff6_1008w_756h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","加入适量水，依次加入蚝油、糖、盐，盖上锅盖将洋葱煮熟。煮熟后一片片放入腌好摊开的肉片，煮到肉两面发白为止，大概2分钟，因为薄所以熟得块，不要煮太久肉会老，影响口感");
INSERT INTO step VALUES(null,25,"http://i2.chuimg.com/c0e360d327e445b394052f841d302414_1008w_756h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","装盘，倒在焯好的生菜上，上面放上一把花椒，一把葱花，一把芝麻，一把干辣椒段，一把蒜末，一勺辣椒面。锅洗净，重新倒入菜油，热至七成，迅速倒在上面，此时可以看到铺在上面的材料在热油里跳跃。一碗简单又美味的水煮肉片就做好了。");
/* 夫妻肺片*/
INSERT INTO step VALUES(null,26,"http://i2.chuimg.com/f2d3266a98df4aeb84d751ee70b24718_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","土芹菜洗净，切碎后大半码在盘子里，留小部分放在一个大碗里，一会儿放在拌卤好的牛肉里");
INSERT INTO step VALUES(null,26,"http://i2.chuimg.com/c40a56cf8afb4ebdb08c3d72b60c9b6c_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","牛心，牛腱子冷水下锅加姜片焯一下。
Tips：焯水用冷水下锅煮出杂质，姜片去腥。");
INSERT INTO step VALUES(null,26,"http://i2.chuimg.com/e423dab0b27d48e38f74975efe31779d_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","另起一锅水，加入卤水香料，加入20g生抽，20g冰糖，再烧开水，放入牛心，牛腱子");
INSERT INTO step VALUES(null,26,"http://i2.chuimg.com/4b18528624d648778d4fefb3e0ad94e4_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","加适量的盐，卤一个小时左右。
Tips：卤水需要咸一点，这样便于让食材入味。");
INSERT INTO step VALUES(null,26,"http://i1.chuimg.com/99ccbf9be00142caa4e30d8b3e6c0602_4464w_2976h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","熬红油：准备一个耐热的碗，碗内加入辣椒碎100g，香叶1片，草果1个，桂皮1片，起锅加入菜籽油，烧热至3-4成热后倒入一半的量到辣椒碎内，先让油激发一下辣椒的气味，加热20秒左右再次倒入热油，备用；这样能使辣椒和香料的香味充分释放出来");
INSERT INTO step VALUES(null,26,"http://i2.chuimg.com/baf2c225925a45bb85bf4f504fb04d09_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","食材卤好后充分放凉，切薄片大小可以根据自己喜好。Tips：食材充分放凉后再切会更容易切，不易散开。");
INSERT INTO step VALUES(null,26,"http://i2.chuimg.com/3bae836fd2bc4066ae6c272772fdafb8_1280w_720h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","切好的卤料放入装有芹菜的碗，然后加入适量的蒜末，花椒面，舀一大勺卤汁和适量红油拌匀");
INSERT INTO step VALUES(null,26,"http://i2.chuimg.com/00dcd6ffbc9242fdaf4695072dbdfe43_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","码到盘中土芹菜上，浇几勺红油在表面，撒上葱花，芝麻，芹菜叶点缀即可");
/*辣子鸡丁*/
INSERT INTO step VALUES(null,27,"http://i2.chuimg.com/65e0861ae3874992bad9572941da2eee_1242w_1656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","把鸡胸肉切好，加入盐和淀粉抓匀放置10-15分钟入味");
INSERT INTO step VALUES(null,27,"http://i2.chuimg.com/02c7531c11594a7f87bfc662e3b4d03f_1242w_1656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","准备好葱、姜、蒜、花椒、剪成段的干辣椒");
INSERT INTO step VALUES(null,27,"http://i1.chuimg.com/8c2ac14845d24bf680e35320727ab66e_1242w_1242h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","把鸡丁放入锅里煎（一般做法都是用油炸）");
INSERT INTO step VALUES(null,27,"http://i2.chuimg.com/b01cce7cb38046f095e1c1ed0cfb2414_2048w_2048h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","煎成金黄色，鸡丁盛出来，油留在锅里");
INSERT INTO step VALUES(null,27,"http://i2.chuimg.com/ec9318ef5fad4dde8f915bb9eb422c19_1242w_1656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","锅里放入郫县豆瓣酱、葱（葱白部分）、姜、蒜、花椒、干辣椒段炒出红油");
INSERT INTO step VALUES(null,27,"http://i2.chuimg.com/e7d2c75aed144edd918a3950c1ef6f5f_1242w_1656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","加入煎好的鸡丁");
INSERT INTO step VALUES(null,27,"http://i2.chuimg.com/0510be6d7a6e4578810482e78a579a89_1242w_1656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","翻炒均匀（如果喜欢加糖的，可以在此步骤加糖，鸡肉本身有鲜味，鸡精和味精不建议添加）");
INSERT INTO step VALUES(null,27,"http://i2.chuimg.com/594630f8391f4a87a01c8af56aa0394c_2048w_2048h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","出锅，大米饭配上！");
/*回锅肉*/
INSERT INTO step VALUES(null,28,"http://i1.chuimg.com/2d7083ed82914842ad4890d9eb53a093_1152w_864h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","选用肥瘦相间的五花肉，冷水冲干净后，锅里放水，加几片姜片、花椒、料酒与五花肉同煮，水烧开后再煮一会，用筷子戳一下没有血水就可以关火了，不用熟透的，待会还要烧了。");
INSERT INTO step VALUES(null,28,"http://i2.chuimg.com/dbf4d85cbe9541fabd5f81fed640a525_1152w_864h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","锅烧热放底油，改小火，放入肉片用铲子划散。");
INSERT INTO step VALUES(null,28,"http://i1.chuimg.com/34657d5b5a8d4735ac3023a9381f2379_864w_1152h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","加入料酒，煎到肉微微泛黄。");
INSERT INTO step VALUES(null,28,"http://i2.chuimg.com/899d85e865ca44b090c672076be31f89_864w_1152h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","加入郫县豆瓣酱，改中火翻炒一下，再加入青椒片和一勺糖，翻炒一下。");
INSERT INTO step VALUES(null,28,"http://i1.chuimg.com/fafbcc88f48b4b3da63a9ba1a590e38a_864w_1152h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","青椒断生后关火，加入少量鸡精翻炒一下。（鸡精不加也不要紧）");
INSERT INTO step VALUES(null,28,"http://i2.chuimg.com/e0a98f3e3d834f3c9696109e27d6ee00_1152w_864h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","出锅装盘，享用美食。");
/*东坡肘子*/
INSERT INTO step VALUES(null,29,"http://i2.chuimg.com/2575fa4c52834c2991e9f03d2e1b2338_780w_1040h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","肘子中间切开，不切断，为了入味，所以切开了");
INSERT INTO step VALUES(null,29,"http://i1.chuimg.com/d82a8cb0a0c84b79aa85bf431be6ba39_780w_1040h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","然后把葱，姜，八角，桂皮放砂锅底部，再把肘子皮朝下放进去");
INSERT INTO step VALUES(null,29,"http://i2.chuimg.com/77679061ca8d4fc8bd256797390b86fc_1040w_780h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","再加入其他所有调料，料酒是一瓶，冰糖要多，要微甜，要是液体没淹没食材就加水，直到淹没所有食材，烧开，转最小火，炖软
");
INSERT INTO step VALUES(null,29,"http://i1.chuimg.com/29c46f5247c74dd1836cdefe54d3797d_1146w_960h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","炖软后肘子捞出来，汁留下收汁浇上面即可");
/*钵钵鸡*/
INSERT INTO step VALUES(null,30,"http://i2.chuimg.com/e7ef69c62e584ba1be7a3710eaab16db_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","把整只鸡的骨肉分离，鸡胸肉切片。Tips：找好关节处就很容易分离鸡肉，分离鸡胸的时候，在表面的一大块就是鸡大胸肉，在骨架缝隙还有鸡小胸肉，这块肉会更加嫩些。");
INSERT INTO step VALUES(null,30,"http://i2.chuimg.com/ac13ebc623a74f13b476a3e58f04aebb_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","把鸡胸肉切片装碗；鸡骨，鸡爪，鸡腿，鸡翅冷水下锅，放入姜片，盐，八角，山奈熬煮1小时左右。Tips：煮开的时候可以撇去浮沫，关中小火慢炖。");
INSERT INTO step VALUES(null,30,"http://i2.chuimg.com/4187d12d115e4692a166dcf9f27b51a2_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","把藕切片，土豆切片，莴笋切片，其他素菜都处理好；用细竹签串好，鸡胸肉也串好");
INSERT INTO step VALUES(null,30,"http://i2.chuimg.com/d1e3faf3d7134f2781fa7350dadca8c8_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","烧一锅开水把鸡胸肉和素菜烫熟，蔬菜稍微烫熟过冷水后捞出备用。
Tips：过冷水是为了让食材快速降温，保持爽脆的口感，素菜切薄片所以很快就能熟。");
INSERT INTO step VALUES(null,30,"http://i2.chuimg.com/2d8a498cf0534ee8aec35aa2debc79ff_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","过滤出高汤备用；接着是红油的制作：把菜籽油烧热至6成熟，大碗内装入辣椒面，桂皮1片，八角1个，山奈1个，倒入热油这样可以激香辣椒面，再倒入芝麻和十三香粉拌匀");
INSERT INTO step VALUES(null,30,"http://i2.chuimg.com/32c4d048cf2d4cffb71a391c418c2224_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","鸡汤装碗，加入芝麻酱，糖，麻油，花椒油，盐，蒜末调味，倒入大量红油拌匀");
INSERT INTO step VALUES(null,30,"http://i2.chuimg.com/b345165827874767ba7b8934d03b86d4_4464w_2976h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","把食材泡到酱汤里1小时，让食材入味");
/*湘味腊鸭*/
INSERT INTO step VALUES(null,31,"http://i2.chuimg.com/186f9017d6ee4ff3931556c1b9dd8631_1242w_1656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","辣椒炒肉首选螺丝椒");
INSERT INTO step VALUES(null,31,"http://i2.chuimg.com/a84460a907c34840a6572244007447f8_1242w_1656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","或者香辣的青线椒");
INSERT INTO step VALUES(null,31,"http://i1.chuimg.com/094f489d22544cf2b7a6a1be5c0927ed_3072w_2304h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","辣椒洗净");
INSERT INTO step VALUES(null,31,"http://i2.chuimg.com/bfa5b6bf05274044933d70ceb07016ff_3072w_2304h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","滚刀切片，加了小米椒，提辣，肉切薄皮");
INSERT INTO step VALUES(null,31,"http://i2.chuimg.com/d4f4a889c91f4a9682c711003861b507_1656w_1242h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","热锅放油 肉片翻炒变色");
INSERT INTO step VALUES(null,31,"http://i2.chuimg.com/e3aa7b0b55764a40a903e3fa3cf54e74_1656w_1242h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","加一勺酱油调色 然后拨至一边 锅里如果锅油不多了加一点 ");
INSERT INTO step VALUES(null,31,"http://i1.chuimg.com/8ad26396af5a43ee8f593303990376ff_1656w_1242h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","下辣椒小米辣爆炒出虎皮");
INSERT INTO step VALUES(null,31,"http://i2.chuimg.com/65b42428bb30421b9439a6d89c318a4d_1656w_1242h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","加蒜末 葱翻炒出香味 最后加调料 适量盐 少量鸡精 半勺生抽 大火爆炒翻炒入味");
INSERT INTO step VALUES(null,31,"http://i2.chuimg.com/bacb6635def84ce1a55ed6c941acb235_1242w_1656h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","出锅");
/*湘味腊鸭*/
INSERT INTO step VALUES(null,32,"http://i2.chuimg.com/0b643dd6990f11e69ce70242ac110002_1125w_1125h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","最重要的一步，先将整个腊鸭放入锅中倒冷水，煮开，然后拿出来切快，这样不当好切了还可以使腊鸭不会那么的咸");
INSERT INTO step VALUES(null,32,"","热锅下油，先放姜蒜炒出一点湘味");
INSERT INTO step VALUES(null,32,"","接着放腊鸭，爆炒，把鸭皮李的油都炒出来，放料酒，生抽，耗油");
INSERT INTO step VALUES(null,32,"炒一会后放温水大概可以掩盖住腊鸭，因为是腊制品，所以不需要放盐，煮到腊鸭可以咬的动的软度(如果有腌好的萝卜干也可以在这个时候放下一起煮)","");
INSERT INTO step VALUES(null,32,"http://i1.chuimg.com/0b008d68990f11e6b2400242ac110002_1125w_1125h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","最后放青椒和大蒜叶，炒熟，出锅前先不要关火，放几滴醋。装盘出锅，开吃啦");
/* 紫苏煎黄瓜*/
INSERT INTO step VALUES(null,33,"http://i2.chuimg.com/a67a51e228c045d28c61c110d05be367_1080w_810h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","食材准备好，黄瓜，紫苏备用。");
INSERT INTO step VALUES(null,33,"http://i2.chuimg.com/273dd31c16874665a5d234f4fad2d3ed_497w_677h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","紫苏洗干净，沥干，黄瓜要切成有点儿厚度的片");
INSERT INTO step VALUES(null,33,"http://i1.chuimg.com/c5bdd29615bc43979fc470575a5f353a_1080w_810h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","姜切丝，干辣椒切小段。");
INSERT INTO step VALUES(null,33,"http://i2.chuimg.com/ad7889a29f2d410f9456b2d017987e7d_1080w_810h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","起锅放油，放入姜和辣椒炒出香味。");
INSERT INTO step VALUES(null,33,"http://i2.chuimg.com/69125ecde8b74df9a8e772e4499a8f4b_497w_677h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","放入黄瓜翻炒，加紫苏炒匀，黄瓜片变软。");
INSERT INTO step VALUES(null,33,"http://i2.chuimg.com/b05954fd654949d38d20712cc4044841_1080w_810h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","放酱油，加一点点水，叫黄瓜充分吸收汤汁。");
INSERT INTO step VALUES(null,33,"http://i2.chuimg.com/f92455c19dca44c3ad6d44ea01ab375f_1080w_810h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","大火收汁。");
INSERT INTO step VALUES(null,33,"http://i2.chuimg.com/be30fcdd04854a84a9c0d641eae76d90_497w_677h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg"," 吃起来嘛，刚入口是绵软的，再一咬，又能感觉到一点爽脆，黄瓜的原汁搭上紫苏特有的香气，气味全部进到了黄瓜里，味道层次非常丰富");
/*辣子鸡丁*/
INSERT INTO step VALUES(null,34,"http://i2.chuimg.com/81eb5cac55954905a2b6e5c5aa92ad8f_1242w_994h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","1.鸡腿肉切小块，洗干净用盐，生抽，料酒，姜末，五香粉腌制片刻。（我腌了30分钟）");
INSERT INTO step VALUES(null,34,"http://i2.chuimg.com/31779570c38746e4a7a6efb800ee6128_1242w_994h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","2.准备炒鸡肉的调料。干辣椒段和鸡丁1:1，剪成段，葱段少许，花椒一把，大蒜切碎，生姜切成丝。");
INSERT INTO step VALUES(null,34,"http://i1.chuimg.com/c296a7310daf4bb596ee2c1fc99b7599_1242w_994h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","3.起锅烧热油，将鸡肉倒入油锅中炸。（油量刚好没过鸡丁）");
INSERT INTO step VALUES(null,34,"http://i2.chuimg.com/138c5185623f4ecdbf8c2e12d645b664_1242w_994h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","4.鸡丁炸至金黄，便可以捞出控油。");
INSERT INTO step VALUES(null,34,"http://i1.chuimg.com/61d3d415ece0451f9638ff1c6651308c_1242w_993h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg"," 5.起锅热油爆香蒜末，姜丝，花椒，辣椒段等调料。");
INSERT INTO step VALUES(null,34,"http://i2.chuimg.com/4cd04cd52c3d4367903464601d61cc6a_1242w_994h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","6.调料炒香，把鸡丁倒入锅内翻炒，并加入生抽，五香粉，孜然粉，盐（根据个人口味添加），鸡精，白糖等调味");
INSERT INTO step VALUES(null,34,"http://i2.chuimg.com/8140c5f464394804a6bacef32eb4764e_1242w_994h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","7.炒香后，最后放入葱段翻炒几下即可出锅。");
INSERT INTO step VALUES(null,34,"http://i2.chuimg.com/3a0597f75e634591bb59724883d61444_1242w_994h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","香喷喷，麻辣味儿十足得辣子鸡丁就做好啦！");
/*家常牛蛙*/
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/5d295ae4e46642689223a3386f242209_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","牛蛙宰块用3克盐，一撮花椒，一勺料酒，五克老姜碎腌制一旁待用。");
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/4e53144d72b340ef986c99c59affb401_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","葱切小节，蒜拍烂，姜切片，大料切碎。");
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/98241a61ec004c0d85ba3e6d45c5055a_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg"," 洋葱，青红椒，切方块。嫩姜切片。");
INSERT INTO  step VALUES(null,35,"http://i1.chuimg.com/2fb24e471238407d8fef7fcb43db03a3_750w_1000h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","酸菜切小，泡海椒切碎。");
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/d0162fe8b31544f88d61d14800a971d4_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg"," 锅烧热，放入菜籽油150克左右。");
INSERT INTO  step VALUES(null,35,"http://i1.chuimg.com/090feba54113436a9cdf645d3c00708a_1000w_750h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","油烧至8成热，关小火，放入酸菜，泡海椒，豆瓣酱，炒出红油。");
INSERT INTO  step VALUES(null,35,"http://i1.chuimg.com/befff87ce2324cf58e98ad7656e6875a_750w_1000h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","然后放入葱姜蒜大料，爆香。");
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/f3879369fa0c460f8f9a74c449d35b6a_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","牛蛙蓖掉腌制的水分。");
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/99fa059a2c674a2c860d0fcb106e131e_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","放入锅中，开大火炒干水气。大概需要5-8分钟");
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/a6c0181931ff48729779d5d4d0f3ab5a_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","水气收干后，放入生抽一勺，大约5克。炒至牛蛙上色。");
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/7274115857554a8fa512d3100d23cd91_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","加入开水适量，半淹牛蛙为宜。其间需要翻炒几次，大火烧至入味。");
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/e58127b82b0d4c47812d33b4efd7d129_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","汤汁收浓后，放入青红椒，洋葱，嫩姜。翻炒至断生。");
INSERT INTO  step VALUES(null,35,"http://i1.chuimg.com/0b9c8ea6c3884edf862131f855abdf87_750w_1000h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg"," 此时可以尝尝味道，看是否增加盐分。因为酸菜，泡海椒，豆瓣酱，生抽都有盐分。我的是加了2克盐的。");
INSERT INTO  step VALUES(null,35,"http://i2.chuimg.com/d74d52cc543f488194b0342689df9543_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","蔬菜断生，汤汁收浓以后，关火。放入少量鸡精味精花椒面炒匀增鲜。");
INSERT INTO  step VALUES(null,35,"http://i1.chuimg.com/88eb4535eb5344928d00aec81f39a155_750w_1000h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","色香味鲜嫩出锅。我家吃得不辣，这样的辣度孩子可以接受，牛蛙脂肪少，适合我的易胖体质，当然还必须控制少吃点饭");
/*麻辣小龙虾*/
INSERT INTO step VALUES(null,36,"http://i2.chuimg.com/db517b2eadb04dc89573217f19ec4fe5_1104w_828h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","小龙虾洗刷干净，剪掉爪子，拔下尾巴最中间一片，拽出虾线。");
INSERT INTO step VALUES(null,36,"http://i2.chuimg.com/9648d390eed6429c94b3a6103660e391_1104w_828h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","配料洗净");
INSERT INTO step VALUES(null,36,"http://i2.chuimg.com/ff7ae790d74d4d6b9910f4304c95f446_1104w_828h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","葱切小段；姜切厚片；蒜拍扁；八角掰碎；干辣椒切斜段。");
INSERT INTO step VALUES(null,36,"http://i2.chuimg.com/08d340d278314893b228474a6f288716_1104w_828h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","锅烧热，放入大量油，烧至六七成热。");
INSERT INTO step VALUES(null,36,"http://i2.chuimg.com/37949d0aa7a84a3f898c04833c614d5f_1104w_828h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","小龙虾倒入锅中，快速炸一遍，不要超过一分钟，不然肉就干了。");
INSERT INTO step VALUES(null,36,"http://i1.chuimg.com/0083e5e216fb47128d9d9a5769fedc44_1104w_828h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","捞出备用。");
INSERT INTO step VALUES(null,36,"http://i1.chuimg.com/732b6b3830634ea8b0e682353d3c911c_1104w_828h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","刚刚炸虾的油烧热，倒入豆瓣酱，大火煸香。");
INSERT INTO step VALUES(null,36,"http://i1.chuimg.com/ab8f1de0f4dd4480be7dab69a5d082c1_1104w_828h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg"," 然后倒入所有调料，大火煸香。");
INSERT INTO step VALUES(null,36,"http://i1.chuimg.com/aae9b8710ba74acb901f0d95c68de670_1104w_828h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","倒入炸好的虾，倒入2听啤酒");
INSERT INTO step VALUES(null,36,"http://i2.chuimg.com/f40b8460a01f4d829be474f5aad8c49d_1104w_828h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","30g盐、1勺冰糖、2勺蚝油、2勺酱油、10g胡椒粉加入锅中。");
INSERT INTO step VALUES(null,36,"http://i2.chuimg.com/252b77f177a643da8de1cd8f03342f1c_1104w_828h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg"," 从柠檬表面切一些黄色的皮下了，尽量不要带白色的，这是增香提鲜的秘诀。切碎后加入锅中。");
INSERT INTO step VALUES(null,36,"http://i1.chuimg.com/323fbfc551c845c2955fa7e0cfa96a28_1104w_828h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","大火烧开后，小火炖煮1小时。期间注意别烧干了，适当添水。");
INSERT INTO step VALUES(null,36,"http://i1.chuimg.com/66fdc188551d4791a6d6d403642de431_1104w_828h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","小火炖煮完后，大火收汁后即可出锅。出锅前可以适当加一些香葱碎和香菜段翻炒。");
INSERT INTO step VALUES(null,36,"http://i2.chuimg.com/7a2f2cd801db419dab1d46fcf158fe9a_1104w_828h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","锵锵锵～出锅～完活儿～");
/******/
INSERT INTO step VALUES(null,37,"","准备配菜，我的配菜是娃娃菜，豆芽，豆皮（也可以自己喜欢啥就放啥）很随意～");
INSERT INTO step VALUES(null,37,"","准备配菜，我的配菜是娃娃菜，豆芽，豆皮（也可以自己喜欢啥就放啥）很随意～");
INSERT INTO step VALUES(null,37,"","起锅烧油，放一勺豆瓣酱小火炒出红油。放凉水烧开。烧开后尝尝咸淡，加点鸡精味道会更好～烧开后放入配菜烫熟捞出放入碗里牛肉放入烫熟捞出随着汤汁一起倒入碗里");
INSERT INTO step VALUES(null,37,"","放蒜末，葱花，花椒，干辣椒，辣椒面。淋上热油就完成啦");
/*干锅香辣虾*/
INSERT INTO step VALUES(null,38,"http://i2.chuimg.com/1bd0a8dd7744470e8af015f87e43ea56_920w_1632h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","虾洗净，姜切丝，大葱、干辣椒切段。");
INSERT INTO step VALUES(null,38,"http://i1.chuimg.com/c7b4d2577ced40c8a68fe0d746195ff6_720w_576h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","锅下少许油，依次下干辣椒段、蒜、姜丝、花椒、郫县豆瓣酱炒出香味，下放虾翻炒，加料酒、生抽、加水100毫升中火烧10分钟，收汁后放大葱炒熟后起锅。");

/*香煎土豆片*/
INSERT INTO step VALUES(null,39,"http://i2.chuimg.com/5a99aca6d2d4493983aa04234075f75e_750w_750h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","蒜头剁碎备用。土豆切片，尽量厚一点。厚一点（如图）。加清水浸泡5分钟左右。泡土豆的时间锅里烧开水。PS：土豆尽量不要选太小个的，煎起来麻烦呀大个的切出来一大片，吃起来也过瘾4不4");
INSERT INTO step VALUES(null,39,"http://i1.chuimg.com/c1ef524cae424a6d8252f071feca4259_1002w_750h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","把泡好的土豆片放入锅里，煮2-3分钟，完全变色即可。然后捞出晾下～可以手捧住篮子两边，抛一抛~甩干水分建议用不粘锅比较好操作");
INSERT INTO step VALUES(null,39,"http://i2.chuimg.com/737a4b008c1c43ebb965ada6941abd17_1002w_750h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","热锅下油，码入土豆片，中小火煎至两面金黄微微上色，忍不住偷吃了一块(・᷄ᵌ・᷅)");
INSERT INTO step VALUES(null,39,"http://i2.chuimg.com/3bdf3acf0bc84467ba4164bfa3883bb2_660w_528h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","锅里放油，放蒜末爆香，加入一勺豆瓣酱，炒出红油（罐子里的红油特别多，可以舀一勺出来炒土豆片哇 特好吃_(:з」∠)");
INSERT INTO step VALUES(null,39,"http://i2.chuimg.com/cdc779918037436ba8bcd93ec8413b63_938w_750h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","倒入土豆片，加1勺生抽，翻炒均匀，撒入芝麻葱花即可。注意▲（大家可以视土豆大小调整酱料哈。有小伙伴反映咸了真的很抱歉呢，我把酱油和豆瓣酱都减少了哈，大家可以放心做。然后土豆很小或者只做一个，酱油和豆瓣酱就要减半哦)");
INSERT INTO step VALUES(null,39,"http://i2.chuimg.com/9e6fff2e6cfc4b7eb134a6573da9d626_750w_1000h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","我爱吃香菜～就加了点儿(✺ω✺)");

/*剁椒鱼头(金针菇拌)*/
INSERT INTO step VALUES(null,40,"","买回来的鱼头用水清洗干净（务必去掉腹部的黑膜）塞入几片姜 再加入适量的盐跟料酒涂抹均匀腌制30分钟");
INSERT INTO step VALUES(null,40,"","水开后将鱼头放入锅中蒸6分钟左右（根据鱼头的大小）");
INSERT INTO step VALUES(null,40,"http://i2.chuimg.com/4f116cdc4ca047818ba010be7352ac5e_810w_1080h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","将金针菇洗净根部切掉1cm 平铺在碟子里 再放入葱头跟姜片");
INSERT INTO step VALUES(null,40,"http://i1.chuimg.com/a81fdb39d841465da8ef52c76c34e591_810w_1080h.jpg@2o_50sh_1pr_1l_800w_600h_1c_1e_90q_1wh.jpg","将蒸好的鱼头平铺在金针菇上 淋上1汤匙左右的蒸鱼豉油（不要太多 因为剁椒很咸）");
INSERT INTO step VALUES(null,40,"http://i2.chuimg.com/516132dc9add44e791199911803f5558_744w_992h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","起锅烧油  将准备好的姜蒜粒爆香后加入剁椒煸炒入味 再放入适量白胡椒粉  喜欢吃麻或者吃辣的朋友可以加入辣椒油或麻椒粉");
INSERT INTO step VALUES(null,40,"http://i2.chuimg.com/cbda2554170f4d1fa6a90063a6b5cc21_1080w_864h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","将炒好的剁椒均匀铺在鱼头上");
INSERT INTO step VALUES(null,40,"","再次入锅蒸六分钟左右");
INSERT INTO step VALUES(null,40,"http://i2.chuimg.com/39095f45557e4e6eb5a1569abc4e95a7_744w_992h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","关键的一步来了 为了更好的入味 将蒸好鱼的汤汁倒出 加入适量芝麻油搅拌均匀淋到鱼头上（因为之前用料酒腌制过 还放了葱姜 所以不用担心汤汁有腥味）");
INSERT INTO step VALUES(null,40,"http://i2.chuimg.com/07b0b7682253473a8aeebb556837f9bd_744w_992h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","");
INSERT INTO step VALUES(null,40,"http://i2.chuimg.com/6701680e509141a198e535c12fcebadb_1080w_864h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg","最后撒上葱花 一道美味的剁椒鱼头就做好啦- ̗̀(๑ᵔ⌔ᵔ๑)");
/*排骨*/
insert into step values(null,"41","http://i1.chuimg.com/1468d86d00b245d0879fcb3abf64b23d_972w_648h.gif@2o_50sh_1pr_1l_300w_90q_1wh.gif","1、洋葱切块，小葱切段。");
insert into step values(null,"41","http://i2.chuimg.com/34fc9a678f8648398cbdd99fd50006e3_972w_648h.gif?imageView2/2/w/300/interlace/1/q/90/format/gif/.gif","2、排骨调入1大勺蚝油，1大勺生抽，1小勺老抽，2大勺米酒，1大勺淀粉，1小勺糖，2克白胡椒粉，拌匀腌制半小时。");
insert into step values(null,"41","http://i1.chuimg.com/12eb1cd8673040f6832b56166ef2e22c_972w_648h.gif@2o_50sh_1pr_1l_300w_90q_1wh.gif","3、铸铁锅倒油烧热，放入姜片、葱段、洋葱、蒜瓣爆香，接着把排骨铺到上面。");
insert into step values(null,"41","http://i1.chuimg.com/7088289e7c364212828ca42b8fb00af6_972w_648h.gif@2o_50sh_1pr_1l_300w_90q_1wh.gif","4、再倒入腌排骨剩的汤汁，盖上盖子小火焖烧15-20分钟，如果汤汁少了可以适量加一点清水防止糊锅。");
insert into step values(null,"41","http://i2.chuimg.com/48c8dc87779441eb870f2e21fbb828b4_972w_648h.gif?imageView2/2/w/300/interlace/1/q/90/format/gif/.gif","5、烧好后开盖收个汁，翻炒至酱汁浓稠变少就关火。");
insert into step values(null,"41","http://i2.chuimg.com/d3604f65e8744aaca94c4ef7ba00f743_972w_648h.gif?imageView2/2/w/300/interlace/1/q/90/format/gif/.gif","6、出锅点缀点红椒碎和香菜，非常下饭。锅底的汤汁还可以用来拌面，特别好吃哦。");
/*糯米*/
insert into step values(null,"42","http://i1.chuimg.com/90fd7e825505447d87e21d2c6049ce1c_1280w_1706h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","1、花生烤熟，我都是用烤的，你们要用炒的也行，然后去皮，一分为二。不用弄碎，整粒从中间分开就可以了，这个可以提前做好。");
insert into step values(null,"42","http://i2.chuimg.com/d03c546e0af54db39774ec478d269926_864w_1152h.jpg?imageView2/2/w/300/interlace/1/q/90","2、很多人都问我沙茶是什么东西，我用的就是这个，超市有卖的，网上也有。首先先做糯米饭。我的糯米不是蒸的，不是蒸的，不是蒸的！我是用电饭煲像平时煮饭那样煮的，我不太喜欢蒸出来那种颗粒感比较饱满比较有嚼劲的糯米卷，我喜欢比较软糯的，这个也是为什么人家总是问我说我的糯米卷看起来怎么非常软糯的原因，这个看个人喜欢。如果你喜欢用蒸的，那么糯米就提前浸泡，最好浸泡6个小时以上或者隔夜。如果像我用电饭煲的就直接像煮米饭那样就行了，水可以不用放那么多。");
insert into step values(null,"42","http://i2.chuimg.com/3fe205b403744b23874219c69a98f264_1280w_1706h.jpg?imageView2/2/w/300/interlace/1/q/90","3、煮好的白糯米饭拿出来放一旁，然后开始炒糯米卷的馅料。胡萝卜切丁，泡好的香菇切丁，小虾干或者鱿鱼干，其实这个馅料大家也可以自行调整，例如喜欢吃肉的放一点肉或腊肠，喜欢吃各种豆豆的放一点豆，因为我小孩不喜欢吃我就没有放，可以根据家人喜欢吃的口感来放的。锅烧热，加入油，然后放入胡萝卜，香菇，小虾干，爆炒。炒至7,8成熟，加入沙茶酱和蚝油和老抽，然后翻炒均匀。");
insert into step values(null,"42","http://i2.chuimg.com/893e0f9b58d94b7ea4298655172952ef_1280w_1705h.jpg?imageView2/2/w/300/interlace/1/q/90","4、然后加入白胡椒粉（白胡椒粉千万不要省略），全部翻炒均匀。");
insert into step values(null,"42","http://i2.chuimg.com/4c2f263fecd74b36a21eefbe4f035bcb_1280w_1705h.jpg?imageView2/2/w/300/interlace/1/q/90","5、看到了吗？我做的糯米卷馅就是这样软软糯糯的，不喜欢干硬的那种。");
insert into step values(null,"42","http://i2.chuimg.com/a7b869c8cf2e4f9aacf30ffcd200b78e_1280w_1706h.jpg?imageView2/2/w/300/interlace/1/q/90","6、最后加入烤熟的花生，加入花生之后可以关掉火，然后拌均匀就可以。");
insert into step values(null,"42","http://i2.chuimg.com/2d7ffbc80b54419bb9e0e743c755f82f_1080w_1440h.jpg?imageView2/2/w/300/interlace/1/q/90","7、做好的糯米卷馅可以放进不沾的烤盘里，借助刮板按压到跟烤盘差不多平，然后放进冰箱冷藏。冷藏或冷冻都是为了后面好包。因为我是先做馅料，还没有开始揉面的，所以冷藏就行，如果你是揉好面再来炒馅，等一下就要操作的，就直接放进冷冻。");
insert into step values(null,"42","http://i1.chuimg.com/c08e84467409455eb56496f6ff21ad9e_1080w_1439h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","8、开始揉面，跟我们平时做馒头包子花卷是一样的，所有材料揉到面团光滑就可以，不用像做面包出手套膜，但是面一定要揉光滑了，我是用厨师机揉了10分钟。");
insert into step values(null,"42","http://i2.chuimg.com/9693c12fd0b64716a3ec37a779df9b61_1080w_1439h.jpg?imageView2/2/w/300/interlace/1/q/90","9、放在20多度的环境下进行基础发酵。");
insert into step values(null,"42","http://i2.chuimg.com/ee50e087d91a4569ac11ff13517e5bbc_1280w_1706h.jpg?imageView2/2/w/300/interlace/1/q/90","10、发好之后把面团的气泡揉出，然后把面团大概分为4份左右，当然了，3份5份都行，看个人操作，这个没有多大的要求。取一份擀成长度15×30左右的薄片，记得不要擀太薄，饼皮的尺寸大小可以按照自己喜欢的来，然后用刮板在金盘中切出一条炒好的糯米卷馅，直接放在擀好的饼皮上。馅料不要堆得太高太多，否则蒸的时候都会流出来。");
insert into step values(null,"42","http://i1.chuimg.com/775d12869ede4c28bde082e2e45dcc5d_1280w_2168h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","11、收口捏紧，把收口朝下。表面可以切菱形，但是我不喜欢，所以就没有切，这个无所谓，看个人操作。");
insert into step values(null,"42","http://i2.chuimg.com/30a9bd4efeee479ba40aea9e0e3aceeb_1280w_1706h.jpg?imageView2/2/w/300/interlace/1/q/90","12、用刮板切成自己喜欢的大小。如果家里锅够大的可以整条卷好全部蒸好再切，一般外面卖的都是蒸好再切的。");
insert into step values(null,"42","http://i2.chuimg.com/f3ed340489fb4928bb2d40240ad8cd7a_1280w_1706h.jpg?imageView2/2/w/300/interlace/1/q/90","13、配方中所有的材料可以做出来这么多，吃不了这么多的可以配方减半操作。我每次都做这么多，送一点给家人，送一点给对门的邻居，再留点当早餐，基本上全部消耗完。其实多的蒸熟放凉后可以放在冷冻保存，吃的时候蒸软就行了。蒸锅里放入水加热到50度左右（温水），然后把做好的糯米卷放入蒸锅内醒发15~20分钟。醒发好之后直接开火，水开后中大火蒸10分钟左右（因为内馅都是熟的了）焖三分钟再开盖出锅。");
insert into step values(null,"42","http://i1.chuimg.com/916792aba50148e09eb894d6b493a118_1215w_2160h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","14、趁热吃吧，哈哈~");
/*鸡*/
insert into step values(null,"43","http://i2.chuimg.com/adaf7b4a99dd11e6b2400242ac110002_2048w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90","1、准备好图上材料");
insert into step values(null,"43","http://i2.chuimg.com/aeb9ed6899dd11e6b2400242ac110002_2048w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90" ,"2、鸡洗净去内脏剁块");
insert into step values(null,"43","http://i2.chuimg.com/af76cc8a99dd11e69ce70242ac110002_2048w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90" ,"3、油锅热一下入姜。蒜爆炒下");
insert into step values(null,"43","http://i1.chuimg.com/b151a42699dd11e6b2400242ac110002_2048w_2048h.jpg@2o_50sh_1pr_1l_300w_90q_1wh" ,"4、这个是重点。鸡煲的精髓就在此。我通常是半只鸡下一勺。一整只鸡会下一勺半到两勺。平时喝汤的小陶瓷勺。加入爆炒开的姜。蒜里炒一下再入鸡肉");
insert into step values(null,"43","http://i2.chuimg.com/b219bc9a99dd11e69ce70242ac110002_2048w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90" ,"5、倒入鸡肉翻炒均匀稍微炒一下下。加入一小小茶鸡精。适量蚝油。酱油继续翻炒上色。此煲无需下盐");
insert into step values(null,"43","http://i2.chuimg.com/b34aeabc99dd11e69ce70242ac110002_2048w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90","6、大致炒至图中成色时准备上盖。上盖时加入一小半碗水水无需太多。很多时候我都没下水。但相对来说会没什么汤汁 倒入料酒要马上加盖。然后就待它慢慢焖煮吧。大概时间我没算。自己观察吧。久点就比较入味。上锅后就可以直吃。");
insert into step values(null,"43","http://i2.chuimg.com/b40651bc99dd11e6b2400242ac110002_2048w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90","7、焖煮好后就可以加入葱蒜青椒再翻炒下就可以上锅了。上锅后加上香菜这次忘了买红椒。加点红椒色像会更加分");
insert into step values(null,"43","http://i2.chuimg.com/b4aef89e99dd11e69ce70242ac110002_2048w_1365h.jpg?imageView2/2/w/300/interlace/1/q/90","8、上桌后就可以慢火开吃了。加杯小酒更爽哦。鸡煲是先吃肉然后再慢慢下水煮开再下配菜料。");
insert into step values(null,"43","http://i2.chuimg.com/b58ef84a99dd11e6b2400242ac110002_2048w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90","9、我一般是鸡肉吃到差不多了再下水大火煮开,然后就开始各种配菜开吃。");
/*腊味煲仔饭*/
insert into step values(null,"44","http://i2.chuimg.com/75e1607c993611e6b2400242ac110002_1440w_810h.jpg?imageView2/2/w/300/interlace/1/q/90","1、米洗净后浸泡一小时（米和水的比例为1:1.2）");
insert into step values(null,"44","http://i1.chuimg.com/759c6058993611e6b2400242ac110002_1440w_810h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","2、腊味在沸水中烫3分钟捞出");
insert into step values(null,"44","http://i1.chuimg.com/753d52c0993611e69ce70242ac110002_1440w_810h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","3、砂锅内侧刷上猪油");
insert into step values(null,"44","http://i1.chuimg.com/74d5eb1c993611e69ce70242ac110002_1440w_810h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","4、倒入浸好的水和米");
insert into step values(null,"44","http://i2.chuimg.com/746bd38a993611e69ce70242ac110002_1440w_810h.jpg?imageView2/2/w/300/interlace/1/q/90","5、大火煮沸，三分钟后放入腊味");
insert into step values(null,"44","http://i2.chuimg.com/7401c68e993611e69ce70242ac110002_1440w_810h.jpg?imageView2/2/w/300/interlace/1/q/90	","6、转小火，煮8分钟");
insert into step values(null,"44","http://i2.chuimg.com/738981e2993611e6b2400242ac110002_1440w_810h.jpg?imageView2/2/w/300/interlace/1/q/90","7、关火后焖15分钟");
insert into step values(null,"44","http://i2.chuimg.com/732f3642993611e69ce70242ac110002_1440w_810h.jpg?imageView2/2/w/300/interlace/1/q/90","8、用生抽、蚝油、高汤、白糖混合调汁");
insert into step values(null,"44","http://i2.chuimg.com/72cc127e993611e6b2400242ac110002_1440w_810h.jpg?imageView2/2/w/300/interlace/1/q/90","9、腊味切片，烫熟的菜心铺在饭上");
insert into step values(null,"44","http://i1.chuimg.com/72760474993611e69ce70242ac110002_1440w_810h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","10、将酱汁均匀浇在煲仔饭上，更加美味");
/*猪脚姜*/
insert into step values(null,"45","http://i2.chuimg.com/7e54eb9313ec44cd929b40dc01824009_2000w_2668h.jpg?imageView2/2/w/300/interlace/1/q/90","1、干锅烤姜");
insert into step values(null,"45","http://i2.chuimg.com/9d26f13e8bab45c4891f4cc433e3f5da_2000w_2668h.jpg?imageView2/2/w/300/interlace/1/q/90","2、猪脚焯水，冷水洗完待用");
insert into step values(null,"45","http://i2.chuimg.com/ca10258fad8e428aaac32d3e6c81ab88_2000w_2668h.jpg?imageView2/2/w/300/interlace/1/q/90","3、姜放砂锅底，放猪脚再放蛋，一整瓶甜醋倒下去，红糖也放进去，个人喜欢可以再加点陈醋，喜欢酸滴可以多加，煮3~4个小时，因为我的是小熊电炖锅火力比较小，煤气中中小火煮2个钟就差不多了");
/*红烧乳鸽*/
insert into step values(null,"46","http://i1.chuimg.com/5de973bcc4c2460797df12530eceeb71_720w_440h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","1、乳鸽买回来后一定要清洗干净。包括把胸腔里面的内脏，脖子的喉管都通通摘干净了，不然怎么煮都会有血水的。");
insert into step values(null,"46","http://i1.chuimg.com/6ea84a34da184c1b9ddf5b9a318739a0_720w_440h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","2、锅里烧水，先焯水。焯水后顺便把还有残留的体毛脏东西都拔掉~~为了后面的工序，不要煮太长时间。");
insert into step values(null,"46","http://i1.chuimg.com/6dd88e566c914e93b545e919f2b8d0b9_718w_440h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","3、煮好以后，马上冷水冲洗干净，包括脏东西的浮沫。滴干水备用。");
insert into step values(null,"46","http://i2.chuimg.com/04a1a8b29f114aaa876a310502cb5c8a_720w_440h.jpg?imageView2/2/w/300/interlace/1/q/90","4、准备卤水。13香适量加水煮开，加入稍微多的生抽，适量的盐，自己试味，稍微咸一点没关系。");
insert into step values(null,"46","http://i2.chuimg.com/047b1b487a59429fac32d45b2fb45509_720w_440h.jpg?imageView2/2/w/300/interlace/1/q/90","5、放乳鸽入卤水中，煮开~为了颜色均匀，要记得给鸽子翻身。");
insert into step values(null,"46","http://i1.chuimg.com/ce8b7c87f86b464aaa5112bb2d107085_720w_440h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","6、可以借助勺子把卤汁倒入鸽子的胸腔内，这样容易入味呢。");
insert into step values(null,"46","http://i2.chuimg.com/e5926bb5f71c4589aa5f8e23311409d7_720w_440h.jpg?imageView2/2/w/300/interlace/1/q/90","7、大约煮了15-20分钟后，让乳鸽浸泡在卤水中。每隔一段时间翻身，让它上色均匀，充分吸收香味。待2个小时左右捞起，滴干汁液备用。");
insert into step values(null,"46","http://i2.chuimg.com/b0d8c7398c3a4fe192fbb23c404babfd_720w_440h.jpg?imageView2/2/w/300/interlace/1/q/90","8、锅里烧开热油。油约8-9成热，把控干卤汁的鸽子放入油锅。借助汤勺浇灌鸽子，让它充分受油热");
insert into step values(null,"46","http://i1.chuimg.com/ce8b7c87f86b464aaa5112bb2d107085_720w_440h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","9、两面都均匀的受热油炸过~鸽子皮变得有光泽就可以出锅啦！晾凉后就可以切开摆盘");
/*凉拌莲藕*/
insert into step values(null,"47","http://i2.chuimg.com/e5b7481bdc974b8e94acfb9edc1fc4f7_1000w_750h.jpg?imageView2/2/w/300/interlace/1/q/90","1、提前冷冻一盆水结冰");
insert into step values(null,"47","http://i2.chuimg.com/2db944ff78714705992d71c0f16ff836_750w_1000h.jpg?imageView2/2/w/300/interlace/1/q/90","2、鲜藕3节");
insert into step values(null,"47","http://i2.chuimg.com/db52b04f71ee48b98323e2bfc49a8655_1000w_750h.jpg?imageView2/2/w/300/interlace/1/q/90","3、鲜藕3节去掉两头去皮清洗干净");
insert into step values(null,"47","http://i2.chuimg.com/f22d4557139b44a48366ca3d5cf5cf88_1000w_750h.jpg?imageView2/2/w/300/interlace/1/q/90","4、水开了后，整个莲藕放入水中煮，小的约10分钟，大的约15分钟");
insert into step values(null,"47","http://i2.chuimg.com/d79ee6aaadb2408681b4b8e3396177fb_750w_1000h.jpg?imageView2/2/w/300/interlace/1/q/90","5、看藕变色了就捞出沥干水分");
insert into step values(null,"47","http://i2.chuimg.com/1dae3ad0d0e34cf88f73ff54ca1d1eb5_750w_1000h.jpg?imageView2/2/w/300/interlace/1/q/90","6、放入准备好的冰水中浸泡约20分钟，这步骤可以让莲藕爽脆。这个时候可以准备酱料");
insert into step values(null,"47","http://i2.chuimg.com/c6281a9e39654efcbbc95bbf16e2a4b5_751w_751h.jpg?imageView2/2/w/300/interlace/1/q/90","7、蒜头剁成泥");
insert into step values(null,"47","http://i1.chuimg.com/6c9752e4ad9d438896b3a24f28c765c1_750w_867h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","8、烧热花生油淋在蒜泥里，加入酱油4匙，陈醋3匙、盐、糖、鸡粉、1小匙芝麻油拌匀");
insert into step values(null,"47","http://i2.chuimg.com/97d7a2e52cdb4da4894f5a663d074865_1536w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90","9、调好酱汁，香菜切断");
insert into step values(null,"47","http://i2.chuimg.com/2b1cfe65abfa4ce7af772076b52a72f9_1000w_750h.jpg?imageView2/2/w/300/interlace/1/q/90","10、烧热花生油淋在蒜泥里，加入酱油4匙，陈醋3匙、盐、糖、鸡粉、1小匙芝麻油拌匀");
insert into step values(null,"47","http://i2.chuimg.com/463af8a3d9ad4acfba67433402b3d577_1536w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90","11、加入香菜和酱汁，带上一次性手套抓均匀即可");
insert into step values(null,"47","http://i2.chuimg.com/8b3ebf9efaf94bacbf5c2e6e318522a4_750w_1000h.jpg?imageView2/2/w/300/interlace/1/q/90","12、美美哒，超级好吃");
/*柠檬鸡翅*/
insert into step values(null,"48","http://i2.chuimg.com/87dc7649799c469f848f04066b1a949f_1536w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90","1、腌鸡翅：盆中加入2勺生抽、2勺料酒、少许盐，1只柠檬切小薄片加入盆中搅拌均匀，加入鸡翅腌30分钟，鸡翅两面各划几刀，容易腌制入味");
insert into step values(null,"48","http://i2.chuimg.com/86f940d8cf77438aa6ca7ca90ba34701_2048w_1536h.jpg?imageView2/2/w/300/interlace/1/q/90","2、半根胡萝卜切丝蒸熟备用，用于最后装盘的时候垫在盘底");
insert into step values(null,"48","http://i2.chuimg.com/86f940d8cf77438aa6ca7ca90ba34701_2048w_1536h.jpg?imageView2/2/w/300/interlace/1/q/90","3、不粘锅放油，油热后转小火，放入腌好的鸡翅，耐心煎到两面金黄色");
insert into step values(null,"48","http://i2.chuimg.com/27fa9ecf47d04f4a8fa18438d1c16930_1536w_2048h.jpg?imageView2/2/w/300/interlace/1/q/90","4、加入少量白糖、半碗清水，盖上锅盖焖至收汁。另一个柠檬切片，蒜拍扁切成小粒，等锅中汁收到差不多的时候加入柠檬片、蒜粒，稍微翻炒下即可出锅");
insert into step values(null,"48","http://i2.chuimg.com/0a961d1a519b4f9a9719706f9e52968f_2048w_1536h.jpg?imageView2/2/w/300/interlace/1/q/90","5、盘底垫上蒸好的胡萝卜丝，放上鸡翅，这道酸甜开胃的柠檬鸡翅就做好啦");
/*猪骨汤*/
insert into step values(null,"49","http://i1.chuimg.com/ac945bda904b481fb00b20d3a7948f7a_1280w_1024h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","1、准备以上食材，南瓜350克，猪骨250克，栗子8颗，北杏少许，两片姜。南瓜是连皮一起煲汤，因为南瓜皮也是很有营养，同时用于煲汤也不会使南瓜煮的太软烂，吃起来也方便。此份量为两人食用，大概4碗的量。");
insert into step values(null,"49","http://i2.chuimg.com/b51df5caef7a41ca93d84814e02b9dee_1280w_1024h.jpg?imageView2/2/w/300/interlace/1/q/90","2、猪骨先冷水下锅，开火加热。这样的目的是可以让猪骨慢慢出浮沫。");
insert into step values(null,"49","http://i2.chuimg.com/1be074a977ec490284f0b72681b6c062_480w_384h.jpg?imageView2/2/w/300/interlace/1/q/90","3、这个时候可以翻面，大概30秒后关火，把猪骨捞起备用。");
insert into step values(null,"49","http://i2.chuimg.com/63c8030937ec4cf48f6debf024bfc6ef_1280w_1024h.jpg?imageView2/2/w/300/interlace/1/q/90","4、依次将食材放进汤锅里，我用的是陶瓷锅，然后注入1.5L已烧开的水，大火先煮15分钟，然后小火焖煮一个半小时，关火前加盐调味即可。");
insert into step values(null,"49","http://i2.chuimg.com/9f5c0581cb014871bc8d177292d23dd9_1280w_1024h.jpg?imageView2/2/w/300/interlace/1/q/90","5、营养美味的南瓜栗子猪骨汤完成");
/*脆皮烧肉*/
insert into step values(null,"50","http://i2.chuimg.com/1f40a780b90a4e64840ad3b57923f3a2_640w_512h.jpg?imageView2/2/w/300/interlace/1/q/90","1、肉表面可以轻轻切几刀，这样腌起来更入味。不要切到猪皮！");
insert into step values(null,"50","http://i1.chuimg.com/b2091189ff6843c798eed99bd808c15d_1040w_780h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","2、五香粉和盐，搅拌均匀涂在肉的表面。只涂肉，不要碰到皮！轻轻切开的部位都要抹到，抹均匀！");
insert into step values(null,"50","http://i2.chuimg.com/b5f060dbfd134c84acc212ab13ba62fb_1040w_780h.jpg?imageView2/2/w/300/interlace/1/q/90","3、在烤盘中间倒一点白醋，把猪皮朝下，泡在醋里大概五分钟。不用担心这样肉会不会因为泡了醋变酸，因为一烤，醋就会挥发掉，只会让皮更脆，不过影响口味。");
insert into step values(null,"50","http://i2.chuimg.com/9f5c0581cb014871bc8d177292d23dd9_1280w_1024h.jpg?imageView2/2/w/300/interlace/1/q/90","4、营养美味的南瓜栗子猪骨汤完成");
insert into step values(null,"50","http://i2.chuimg.com/81620e71b2464fbd9228a06dddbab0f7_1040w_780h.jpg?imageView2/2/w/300/interlace/1/q/90","5、猪皮朝上，其他几面都用锡纸包好，尽量包紧一点。然后放进冰箱冷藏一天，到猪皮表面干了，就可以进烤箱了！");
insert into step values(null,"50","http://i1.chuimg.com/8ab95a0ee44f493e891776e0850cf7da_1080w_864h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","6、烤箱预热150度，上加热管和风扇模式。猪皮朝上放进去烤1小时，然后转190度-200度烤30分钟。最后30分钟多观察猪皮起泡情况可以调节一下温度，我一开始190度烤了十分钟，感觉有点不够，所以换成了200度");
insert into step values(null,"50","http://i1.chuimg.com/03b2a7a7649e40009a1091e101048b17_780w_1040h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","7、烤好的出炉了，烤出来的皮敲上去咔咔咔，非常的脆！切的时候也有小技巧，先切肉再切皮！");
insert into step values(null,"50","http://i1.chuimg.com/c8900f3546d5440e9ce91de38bed97d3_780w_1040h.jpg@2o_50sh_1pr_1l_300w_90q_1wh","8、切好的烧肉在菜板上码齐，肉汁还在不停的往下趟着！");
/********************/
INSERT INTO step VALUES(null,51,'http://i2.chuimg.com/568a77ff1100469c869c479131c1e999_1242w_994h.jpg?imageView2/2/w/300/interlace/1/q/90','1');
INSERT INTO step VALUES(null,51,'http://i2.chuimg.com/b061d3f332c84d38b0e3f2533ce20765_1242w_994h.jpg?imageView2/2/w/300/interlace/1/q/90','以上就是完成了蛋黄高温杀菌，从生变成了熟');
INSERT INTO step VALUES(null,51,'http://i2.chuimg.com/31fb2351e6544dfdb6c91a79dd1bf153_1242w_994h.jpg?imageView2/2/w/300/interlace/1/q/90','3');
INSERT INTO step VALUES(null,51,'http://i2.chuimg.com/2682b57c7f484ac8a2db99e334561cb3_1242w_994h.jpg?imageView2/2/w/300/interlace/1/q/90','加其他果肉的在这一步加上，可可粉累我觉得3克左右就好啦，最终还是要看你自己喜欢的程度');
INSERT INTO step VALUES(null,51,'http://i2.chuimg.com/628001a904204534b6a457b3f43bb3b1_3863w_3024h.jpg?imageView2/2/w/300/interlace/1/q/90','4');
INSERT INTO step VALUES(null,51,'http://i1.chuimg.com/832ddc5567924f4b85514cf6c33566e0_1200w_960h.jpg@2o_50sh_1pr_1l_300w_90q_1wh','口感细腻，毫无冰渣');
/*******************************/
INSERT INTO step VALUES(null,52,'http://i2.chuimg.com/8592eb8097e711e6b2400242ac110002_2448w_2448h.jpg?imageView2/2/w/300/interlace/1/q/90','糯米粉，玉米淀粉，细砂糖，牛奶，搅拌均匀，过筛一遍，盖上保鲜膜，大火蒸至奶糕凝固即可');
INSERT INTO step VALUES(null,52,'http://i2.chuimg.com/848af7b497e711e69ce70242ac110002_2448w_2448h.jpg?imageView2/2/w/300/interlace/1/q/90','蒸好的奶糕趁热加入黄油揉匀，黄油不用融化，奶糕这么烫黄油自然就化掉了，用手揉效果最好，别用筷子什么的，拌不匀的！这步很烫手，我是会戴一个皮手套再戴一次性手套，虽然还是会有些烫，我之前可是直接戴一次性手套，练成铁砂掌了都23333揉好之后放保鲜袋里，尽量摊开让它冷却，冷却到室温再放冰箱，时间急的话揉好直接扔急冻室，30分钟就可以拿出来了，but这样很伤冰箱！时间不急放保鲜也行，可以今天准备奶糕，第二天再擀皮包奶油水果，冻的时间越长越不粘手！');
INSERT INTO step VALUES(null,52,null,'取适量糯米粉小火炒熟，或者放微波炉叮一会，糯米粉发出香味就可以了，太过了会变黄，影响成品颜色！！炒的时候记得不停翻拌，不然糊了！用微波炉叮也是十秒五秒的样子拿出来翻一下，不然有水蒸气会起块！配方的量我一半是吃饭那种小碗半碗的量就够了，多炒一些也没关系，留着下次用，数糯米粉也称糕粉，能保存挺长时间的');
INSERT INTO step VALUES(null,52,null,'冻好的奶糕取出来分成25g一坨，新手可以分30g一坨，皮子重量一样做出来才均匀，如果你不介意可以随便揪一坨，这个量25g可以做7个，一个人吃完全够了好吗，不然你想胖死你自己吗！奶糕还是挺粘的，记得沾糕粉！！');
INSERT INTO step VALUES(null,52,null,'分好奶糕之后开始擀皮！！同样，你的手，案板，擀面杖，奶糕都请洒上糕粉，但不要太多，可以一点一点加，太多影响口感！这个皮不好擀，是糯米粉弄的，弹性很大，慢慢来，擀皮就不用我教了，这是个练耐心的玩意，要想做好看就老老实实擀皮！不然你就两手慢慢扯，扯出来厚薄不匀，丑死了！皮的大小跟小碗碗口差不多大就行了！');
INSERT INTO step VALUES(null,52,'http://i2.chuimg.com/8328061e97e711e69ce70242ac110002_1280w_1280h.jpg?imageView2/2/w/300/interlace/1/q/90','擀好皮可以打奶油了！量不多的情况下建议手动打发！奶油会细腻很多，100g奶油大概三五分钟能打好，天气热的时候奶油放冰上打发！！100g奶油加10g细砂糖我觉得已经很甜了，还要加水果，糖建议少放点。手动打发奶油我是抱着盆然后逆时针打，放在冰上的情况下，蛋抽跟盆底垂直打！千万别太狠，不然容易到处飞溅！！打好的奶油装进裱花袋，可以拿个大杯子把裱花袋套在上面，这样一个人也可以很方便的装奶油的，不会弄得到处都是，裱花口别剪太大，裱花袋也别选太大的，以免天气热的时候奶油才用一半你手握的地方就全化了！');
INSERT INTO step VALUES(null,52,null,'软性水果切成小丁，软性水果就是什么芒果啊草莓啊榴莲啊香蕉啊火龙果之类的，也可以选择酥性饼干碎，什么奥利奥啊或者谷优的玛丽亚还是啥来着');
INSERT INTO step VALUES(null,52,'http://i1.chuimg.com/82b0bc1297e711e6b2400242ac110002_2448w_2448h.jpg@2o_50sh_1pr_1l_300w_90q_1wh','一切准备就绪可以开始包雪媚娘了！！看图！！底铺满奶油再放水果，放了水果再挤一层奶油，然后跟包包子一样把皮捏紧，水果奶油的量看自己喜欢，但是奶油太少水果太多皮比较薄的情况下会破掉！！底部奶油多一点，顶部奶油可以少一点，裱花嘴剪小一点奶油的量好控制一点！我是用雪媚娘的模具，半球形的，这样大小能控制一样，没有模具就用小碗，看图！！');
INSERT INTO step VALUES(null,52,'http://i2.chuimg.com/81c2177497e711e69ce70242ac110002_1242w_1242h.jpg?imageView2/2/w/300/interlace/1/q/90','包好就完成了！！可以吃了！！这个是用模具做出来的，比较小，所以皮子只有18g左右，可以做10个！！');
INSERT INTO step VALUES(null,52,'http://i2.chuimg.com/80f694d297e711e6b2400242ac110002_1280w_1280h.jpg?imageView2/2/w/300/interlace/1/q/90','吃不完的记得放冰箱冷藏！！是冷藏！！保鲜那层！！不是冷冻！！不然奶油会冻坏！！这个最好一天吃完！！吃不完一定要密封！！不然皮会干掉！！分开放，不要挨在一起，记得撒粉，不然会粘！！');
/*****************************/
INSERT INTO step VALUES(null,53,null,'消化饼干放入保鲜袋中，用擀面杖擀碎');
INSERT INTO step VALUES(null,53,null,'黄油放入微波炉里融化，吉利丁片泡水软化，奶油奶酪室温软化');
INSERT INTO step VALUES(null,53,null,'把融化和黄油和压碎的饼干碎混合成饼底材料，把混合好的饼底材料倒入模具，压实后，放入冰箱冷藏备用');
INSERT INTO step VALUES(null,53,null,'奶油奶酪、细砂糖放在容器里，隔温水打发');
INSERT INTO step VALUES(null,53,null,'加入酸奶，搅拌成芝士糊');
INSERT INTO step VALUES(null,53,null,'将牛奶和淡奶油用微波炉加热，不要加热的太烫，将软化的吉利丁片沥干水，放入加热好的混合物中，搅拌融化');
INSERT INTO step VALUES(null,53,null,'然后分三次倒入芝士糊中，边搅拌均匀，再加入下一次');
INSERT INTO step VALUES(null,53,null,'最后将混合物倒入黄油饼底的蛋糕模中，轻轻震几下，可以让芝士糊的气泡消失');
INSERT INTO step VALUES(null,53,null,'然后放入冰箱中冷藏4个小时以上，芝士糊凝结就可以了');
INSERT INTO step VALUES(null,53,null,'脱模的时候可以用热毛巾捂一下，或者用吹风机吹一下，方面脱模');
/*****************************/
INSERT INTO step VALUES(null,54,'http://i2.chuimg.com/f5df9b408bbc11e6b87c0242ac110003_330w_223h.jpg?imageView2/2/w/300/interlace/1/q/90','全脂牛奶放入碗中，在碗上覆上一层保鲜膜，放入蒸锅中，蒸十分钟左右');
INSERT INTO step VALUES(null,54,'http://i2.chuimg.com/f602d1f08bbc11e6a9a10242ac110002_330w_223h.jpg?imageView2/2/w/300/interlace/1/q/90','把鸡蛋里的蛋清和蛋白分离，蛋清搅拌均匀即可，不用打很久不然就打发了');
INSERT INTO step VALUES(null,54,'http://i2.chuimg.com/f62aafea8bbc11e6b87c0242ac110003_330w_223h.jpg?imageView2/2/w/300/interlace/1/q/90','蒸好的牛奶拿出蒸锅放凉，放凉后上面会形成一层奶皮，用尖尖的刀子，沿着碗边划大概十厘米左右的口');
INSERT INTO step VALUES(null,54,'http://i2.chuimg.com/f650dcb08bbc11e6b87c0242ac110003_330w_223h.jpg?imageView2/2/w/300/interlace/1/q/90','倒出大部分牛奶，碗底留点底不要倒净，不然奶皮容易粘在碗上，待会儿就浮不起来了');
INSERT INTO step VALUES(null,54,'http://i2.chuimg.com/f67ab6f28bbc11e6b87c0242ac110003_330w_223h.jpg?imageView2/2/w/300/interlace/1/q/90','把搅拌均匀的蛋清和糖加入牛奶中');
INSERT INTO step VALUES(null,54,'http://i2.chuimg.com/f6a511908bbc11e6a9a10242ac110002_330w_223h.jpg?imageView2/2/w/300/interlace/1/q/90','蛋清奶液过筛，筛掉蛋清中尚未打发的部分。如果蛋奶液中有气泡和奶沫用勺子撇去');
INSERT INTO step VALUES(null,54,'http://i1.chuimg.com/f6d8c2b08bbc11e6b87c0242ac110003_330w_223h.jpg@2o_50sh_1pr_1l_300w_90q_1wh','把蛋清奶液缓缓沿着刚才划破的奶皮缺口倒会碗里，让奶皮浮在上面');
INSERT INTO step VALUES(null,54,'http://i2.chuimg.com/f713079a8bbc11e6b87c0242ac110003_330w_223h.jpg?imageView2/2/w/300/interlace/1/q/90','再次敷上保鲜膜上锅蒸，中火蒸十分钟后关火，此时不要掀开盖子焖五分钟再取出。其状如膏，色洁白，口感细腻嫩滑，如丝如绸，入口即化，口味香而不重，甜而不腻');
/***************************************/
INSERT INTO step VALUES(null,55,'http://i2.chuimg.com/3dc441259b574b87815b0cf7a1bdf213_1080w_1440h.jpg?imageView2/2/w/300/interlace/1/q/90','番薯去皮洗干净，切块');
INSERT INTO step VALUES(null,55,'http://i2.chuimg.com/81336ee1265942908a806a664d097674_1080w_1440h.jpg?imageView2/2/w/300/interlace/1/q/90','姜拍松');
INSERT INTO step VALUES(null,55,'http://i1.chuimg.com/e803ab5b7d334e32be4df29c61c4f210_1080w_1440h.jpg@2o_50sh_1pr_1l_300w_90q_1wh','番薯、姜、红糖放到电饭锅里，加入适量的水煮熟（冬天喝热乎的驱寒，夏天冰镇后解暑）');
/***********************************/
INSERT INTO step VALUES(null,56,'http://i2.chuimg.com/3f58fb9367674bc3ac8019ae35066980_1080w_810h.jpg?imageView2/2/w/300/interlace/1/q/90','南瓜，红薯去皮蒸熟');
INSERT INTO step VALUES(null,56,'http://i2.chuimg.com/c1b9d264786941439ae20f4c63111d3b_1080w_810h.jpg?imageView2/2/w/300/interlace/1/q/90','蒸熟的南瓜红薯和酸奶，鸡蛋放入料理机打成泥，倒入烤碗');
INSERT INTO step VALUES(null,56,'http://i2.chuimg.com/2524663af81b47dea5e961b23c35f38a_1080w_810h.jpg?imageView2/2/w/300/interlace/1/q/90','撒入配料，微波炉高火7分钟');
/******************************/
INSERT INTO step VALUES(null,57,null,'杯子里放入大概4/5的雪碧');
INSERT INTO step VALUES(null,57,'http://i1.chuimg.com/52757988991411e69ce70242ac110002_2448w_2448h.jpg@2o_50sh_1pr_1l_300w_90q_1wh','取一把比较大的勺子，凸出来那面向上，把勺子边缘放到杯子里紧挨着杯壁，勺子呈45—60度角放置，然后顺着勺子背面往杯子里缓缓倒入蜜桃味rio');
INSERT INTO step VALUES(null,57,null,'静置一会儿就好啦。');
/******************************/
INSERT INTO step VALUES(null,58,'http://i2.chuimg.com/398fcc8f0ca74377a9dd043399c6d4fb_1152w_864h.jpg?imageView2/2/w/300/interlace/1/q/90','玉米剥好，上锅大火蒸10分钟。牛油或马遮林提前取出来放软。');
INSERT INTO step VALUES(null,58,'http://i2.chuimg.com/3489516aacb24995ad7f8bbe7712e050_1152w_864h.jpg?imageView2/2/w/300/interlace/1/q/90','准备一个大小合适的碗，将适量的牛油、糖、盐和蒸好的玉米粒趁热搅拌均匀，可以根据自己的喜好适量增减。');
INSERT INTO step VALUES(null,58,'http://i1.chuimg.com/62232be3c40943aa950c25d1c6e39ef6_1152w_864h.jpg@2o_50sh_1pr_1l_300w_90q_1wh','香喷喷的玉米杯就做好啦！');
/*****************************/
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/4af8ae08ff9b49aa83c263936d6b8438_740w_334h.bmp?imageView2/2/w/300/interlace/1/q/90','先做鸡蛋的部分，60g白砂糖，20g水，糖和水的比例是3:1。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/2f8f2c7958e5483f8adf1ee07cd0bfd2_740w_334h.bmp?imageView2/2/w/300/interlace/1/q/90','取2个蛋黄放入搅拌机里搅拌。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/71f364d849fe45098ccb6ac7963c797d_740w_333h.bmp?imageView2/2/w/300/interlace/1/q/90','同时煮糖浆的部分，煮到116度-120度之间即可。');
INSERT INTO step VALUES(null,59,'http://i1.chuimg.com/69435e1dd5e943e69fe3b89c44ed1e4d_740w_334h.bmp@2o_50sh_1pr_1l_300w_90q_1wh','中高速搅拌鸡蛋，沿着盆子慢慢加入糖浆。直到这个质感，然后摸一下盆底温度，是室温就可以了，炸蛋面糊部分完成。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/b55de3bd49b04ab193157b6e0631db55_740w_334h.bmp?imageView2/2/w/300/interlace/1/q/90','没有搅拌器的话，可以用Sabayon隔水加热。2-3个蛋黄，60g糖，稍微打发一下。');
INSERT INTO step VALUES(null,59,'http://i1.chuimg.com/46ac16a374b148dcac150284e77506cf_740w_333h.bmp@2o_50sh_1pr_1l_300w_90q_1wh','加入2小勺咖啡利口酒，再搅拌均匀。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/ba0948c194fb4851885623c08f492102_744w_334h.bmp?imageView2/2/w/300/interlace/1/q/90','然后烧一锅水煮沸后转小火，把盆子放在锅上，隔水加热。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/09d449cac5764ab696df5b8e34ea4d74_744w_334h.bmp?imageView2/2/w/300/interlace/1/q/90','慢慢打发到这个程度，整个过程大概是5分钟。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/8498356f0b364ed2ae89ef5b83adcc1c_740w_333h.bmp?imageView2/2/w/300/interlace/1/q/90','然后做奶酪糊的部分，250g马斯卡彭，奶油奶酪也可以。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/dd288e4ab34e428b9435cae067d24808_740w_333h.bmp?imageView2/2/w/300/interlace/1/q/90','马斯卡彭需要提前回温，可以放微波炉稍微加热一下，更容易搅拌至丝滑。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/d7f3cb2726e24691b90b773868c8b4d6_740w_334h.bmp?imageView2/2/w/300/interlace/1/q/90','加入刚刚的炸蛋面糊，搅拌。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/c8c6f588e103424280fb5efd335b38c6_740w_333h.bmp?imageView2/2/w/300/interlace/1/q/90','然后打发奶油，用200ml奶油，打发至不流动。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/6963caf43e2943e2ad55e9a0b5554624_740w_334h.bmp?imageView2/2/w/300/interlace/1/q/90','再把奶油加入到刚刚的面糊内，搅拌均匀，尽量减少消泡。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/78025d5f63a14cac9f16d8a890d804c0_740w_333h.bmp?imageView2/2/w/300/interlace/1/q/90','加入2小勺咖啡利口酒，搅拌均匀。');
INSERT INTO step VALUES(null,59,'http://i2.chuimg.com/d5f5a651725a4cd2a22a8430b1fb9897_740w_333h.bmp?imageView2/2/w/300/interlace/1/q/90','准备8个手指饼干，依次在冷却的浓缩咖啡里快速浸泡一下。');
INSERT INTO step VALUES(null,59,'http://i1.chuimg.com/815e520c11dc44d3b93bd69ffa169db4_740w_333h.bmp@2o_50sh_1pr_1l_300w_90q_1wh','再覆盖一层奶酪糊。');
INSERT INTO step VALUES(null,59,'http://i1.chuimg.com/e9b24834b92845a4893155ff028a2f50_740w_333h.bmp@2o_50sh_1pr_1l_300w_90q_1wh','抹均匀后，撒上可可粉，我用的是法芙娜的可可粉比较推荐。');
INSERT INTO step VALUES(null,59,'http://i1.chuimg.com/281b1eb52af24608bcfab4a6a4b36ae3_740w_333h.bmp@2o_50sh_1pr_1l_300w_90q_1wh','再重复一遍刚刚的步骤，冰箱冷藏过夜。');
INSERT INTO step VALUES(null,59,'http://i1.chuimg.com/3a4a0931d4054cea8a3a6b6e3b044d37_400w_225h.gif@2o_50sh_1pr_1l_300w_90q_1wh.gif','第二天吃之前撒上可可粉。');
/**************/
INSERT INTO step VALUES(null,60,'http://i2.chuimg.com/1a67628c8bfd11e6b87c0242ac110003_338w_230h.jpg?imageView2/2/w/300/interlace/1/q/90','把吉利丁片放入冰水里，浸泡15分钟左右至软后捞出挤净水分备用');
INSERT INTO step VALUES(null,60,'http://i2.chuimg.com/1a8b69e88bfd11e6a9a10242ac110002_345w_229h.jpg?imageView2/2/w/300/interlace/1/q/90','牛奶装进较大的容器里，加入淡奶油，椰浆，绵白糖拌匀');
INSERT INTO step VALUES(null,60,'http://i2.chuimg.com/1aac298a8bfd11e6a9a10242ac110002_344w_231h.jpg?imageView2/2/w/300/interlace/1/q/90','入锅，隔水加热至糖化。混合椰奶液的温度约为50度左右');
INSERT INTO step VALUES(null,60,'http://i1.chuimg.com/1ad451a88bfd11e6b87c0242ac110003_340w_227h.jpg@2o_50sh_1pr_1l_300w_90q_1wh','放入泡好的吉利丁片，搅拌至溶化关火');
INSERT INTO step VALUES(null,60,'http://i1.chuimg.com/1afedf5e8bfd11e6b87c0242ac110003_342w_230h.jpg@2o_50sh_1pr_1l_300w_90q_1wh','在密封盒里铺上一层保鲜膜');
INSERT INTO step VALUES(null,60,'http://i2.chuimg.com/1b24028e8bfd11e6a9a10242ac110002_343w_229h.jpg?imageView2/2/w/300/interlace/1/q/90','待椰奶液放冷后倒入，入冰箱冷藏至凝固');
INSERT INTO step VALUES(null,60,'http://i2.chuimg.com/1b42deca8bfd11e6a9a10242ac110002_340w_222h.jpg?imageView2/2/w/300/interlace/1/q/90','取出');
INSERT INTO step VALUES(null,60,'http://i2.chuimg.com/1b6beedc8bfd11e6b87c0242ac110003_344w_229h.jpg?imageView2/2/w/300/interlace/1/q/90','切小块');
INSERT INTO step VALUES(null,60,'http://i1.chuimg.com/1b898ab48bfd11e6b87c0242ac110003_342w_225h.jpg@2o_50sh_1pr_1l_300w_90q_1wh','表面醮一层椰蓉即可');


/**创建用户评论表**/
CREATE TABLE comment(
cid INT PRIMARY KEY AUTO_INCREMENT,
uid INT, #所属用户
mid INT, #所属菜单
time INT,#发表时间
content VARCHAR(250)#评论内容
);

/* 创建每日推荐表*/
CREATE TABLE recommend(
rid INT PRIMARY KEY AUTO_INCREMENT,
mname VARCHAR(20),#菜单名称
type INT,#菜单所属分类
mimg VARCHAR(100)#成品图片
);
INSERT INTO recommend VALUES(null,"早餐鸡蛋饼",1,"http://i2.chuimg.com/1c83091c273a11e7947d0242ac110002_1775w_2394h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg");
INSERT INTO recommend VALUES(null,"麻婆豆腐",2,"http://i2.chuimg.com/ab03619633db4b4d8d3ece0750c18e70_2016w_1008h.jpg?imageView2/1/w/800/h/600/q/90/format/jpg");
INSERT INTO recommend VALUES(null,"麻辣小龙虾",3,"http://i2.chuimg.com/e55937298f2549b3ab87550bed33ec40_1035w_827h.jpg?imageView2/1/w/640/h/520/q/90/format/jpg");
INSERT INTO recommend VALUES(null,"广式鸡煲",4,"http://i2.chuimg.com/2d4f90f36fad4fe9b650a8ed92f30718_5184w_3456h.jpg?imageView2/2/w/660/interlace/1/q/90");
INSERT INTO recommend VALUES(null, '双皮奶',5,'http://i1.chuimg.com/66477c7886f811e6b87c0242ac110003_457w_685h.jpg@2o_50sh_1pr_1l_280w_190h_1c_1e_90q_1wh');