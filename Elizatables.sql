CREATE TABLE RspIndex (pk int, counter int)
INSERT RspIndex VALUES (1,1)
INSERT RspIndex VALUES (2,4)
INSERT RspIndex VALUES (3,6)
INSERT RspIndex VALUES (4,6)
INSERT RspIndex VALUES (5,10)
INSERT RspIndex VALUES (6,14)
INSERT RspIndex VALUES (7,17)
INSERT RspIndex VALUES (8,20)
INSERT RspIndex VALUES (9,22)
INSERT RspIndex VALUES (10,25)
INSERT RspIndex VALUES (11,28)
INSERT RspIndex VALUES (12,28)
INSERT RspIndex VALUES (13,32)
INSERT RspIndex VALUES (14,35)
INSERT RspIndex VALUES (15,40)
INSERT RspIndex VALUES (16,40)
INSERT RspIndex VALUES (17,40)
INSERT RspIndex VALUES (18,40)
INSERT RspIndex VALUES (19,40)
INSERT RspIndex VALUES (20,40)
INSERT RspIndex VALUES (21,49)
INSERT RspIndex VALUES (22,51)
INSERT RspIndex VALUES (23,55)
INSERT RspIndex VALUES (24,59)
INSERT RspIndex VALUES (25,63)
INSERT RspIndex VALUES (26,63)
INSERT RspIndex VALUES (27,64)
INSERT RspIndex VALUES (28,69)
INSERT RspIndex VALUES (29,74)
INSERT RspIndex VALUES (30,76)
INSERT RspIndex VALUES (31,80)
INSERT RspIndex VALUES (32,83)
INSERT RspIndex VALUES (33,90)
INSERT RspIndex VALUES (34,93)
INSERT RspIndex VALUES (35,99)
INSERT RspIndex VALUES (36,106)
INSERT RspIndex VALUES (37,113)

CREATE TABLE KeyEnd (pk int, Kindex int)
INSERT KeyEnd VALUES (1,3)
INSERT KeyEnd VALUES (2,5)
INSERT KeyEnd VALUES (3,9)
INSERT KeyEnd VALUES (4,9)
INSERT KeyEnd VALUES (5,13)
INSERT KeyEnd VALUES (6,16)
INSERT KeyEnd VALUES (7,19)
INSERT KeyEnd VALUES (8,21)
INSERT KeyEnd VALUES (9,24)
INSERT KeyEnd VALUES (10,27)
INSERT KeyEnd VALUES (11,32)
INSERT KeyEnd VALUES (12,32)
INSERT KeyEnd VALUES (13,34)
INSERT KeyEnd VALUES (14,39)
INSERT KeyEnd VALUES (15,48)
INSERT KeyEnd VALUES (16,48)
INSERT KeyEnd VALUES (17,48)
INSERT KeyEnd VALUES (18,48)
INSERT KeyEnd VALUES (19,48)
INSERT KeyEnd VALUES (20,48)
INSERT KeyEnd VALUES (21,50)
INSERT KeyEnd VALUES (22,54)
INSERT KeyEnd VALUES (23,58)
INSERT KeyEnd VALUES (24,62)
INSERT KeyEnd VALUES (25,68)
INSERT KeyEnd VALUES (26,63)
INSERT KeyEnd VALUES (27,68)
INSERT KeyEnd VALUES (28,73)
INSERT KeyEnd VALUES (29,75)
INSERT KeyEnd VALUES (30,79)
INSERT KeyEnd VALUES (31,82)
INSERT KeyEnd VALUES (32,89)
INSERT KeyEnd VALUES (33,92)
INSERT KeyEnd VALUES (34,98)
INSERT KeyEnd VALUES (35,105)
INSERT KeyEnd VALUES (36,112)
INSERT KeyEnd VALUES (37,116)

CREATE TABLE KeyIndex (pk int, Kindex int)
INSERT KeyIndex VALUES (1,1)
INSERT KeyIndex VALUES (2,4)
INSERT KeyIndex VALUES (3,6)
INSERT KeyIndex VALUES (4,6)
INSERT KeyIndex VALUES (5,10)
INSERT KeyIndex VALUES (6,14)
INSERT KeyIndex VALUES (7,17)
INSERT KeyIndex VALUES (8,20)
INSERT KeyIndex VALUES (9,22)
INSERT KeyIndex VALUES (10,25)
INSERT KeyIndex VALUES (11,28)
INSERT KeyIndex VALUES (12,28)
INSERT KeyIndex VALUES (13,32)
INSERT KeyIndex VALUES (14,35)
INSERT KeyIndex VALUES (15,40)
INSERT KeyIndex VALUES (16,40)
INSERT KeyIndex VALUES (17,40)
INSERT KeyIndex VALUES (18,40)
INSERT KeyIndex VALUES (19,40)
INSERT KeyIndex VALUES (20,40)
INSERT KeyIndex VALUES (21,49)
INSERT KeyIndex VALUES (22,51)
INSERT KeyIndex VALUES (23,55)
INSERT KeyIndex VALUES (24,59)
INSERT KeyIndex VALUES (25,63)
INSERT KeyIndex VALUES (26,63)
INSERT KeyIndex VALUES (27,64)
INSERT KeyIndex VALUES (28,69)
INSERT KeyIndex VALUES (29,74)
INSERT KeyIndex VALUES (30,76)
INSERT KeyIndex VALUES (31,80)
INSERT KeyIndex VALUES (32,83)
INSERT KeyIndex VALUES (33,90)
INSERT KeyIndex VALUES (34,93)
INSERT KeyIndex VALUES (35,99)
INSERT KeyIndex VALUES (36,106)
INSERT KeyIndex VALUES (37,113)

CREATE TABLE keywords (pk int, word varchar(50))
INSERT keywords VALUES (1, 'CAN YOU')
INSERT keywords VALUES (2, 'CAN I')
INSERT keywords VALUES (3, 'YOU ARE')
INSERT keywords VALUES (4, 'YOU''RE')
INSERT keywords VALUES (5, 'I DON''T')
INSERT keywords VALUES (6, 'I FEEL')
INSERT keywords VALUES (7, 'WHY DON''T YOU')
INSERT keywords VALUES (8, 'WHY CAN''T I')
INSERT keywords VALUES (9, 'ARE YOU')
INSERT keywords VALUES (10, 'I CAN''T')
INSERT keywords VALUES (11, 'I AM')
INSERT keywords VALUES (12, 'I''M')
INSERT keywords VALUES (13, 'YOU')
INSERT keywords VALUES (14, 'I WANT')
INSERT keywords VALUES (15, 'WHAT')
INSERT keywords VALUES (16, 'HOW')
INSERT keywords VALUES (17, 'WHO')
INSERT keywords VALUES (18, 'WHERE')
INSERT keywords VALUES (19, 'WHEN')
INSERT keywords VALUES (20, 'WHY')
INSERT keywords VALUES (21, 'NAME')
INSERT keywords VALUES (22, 'CAUSE')
INSERT keywords VALUES (23, 'SORRY')
INSERT keywords VALUES (24, 'DREAM')
INSERT keywords VALUES (25, 'HELLO')
INSERT keywords VALUES (26, 'HI')
INSERT keywords VALUES (27, 'MAYBE')
INSERT keywords VALUES (28, 'NO')
INSERT keywords VALUES (29, 'YOUR')
INSERT keywords VALUES (30, 'ALWAYS')
INSERT keywords VALUES (31, 'THINK')
INSERT keywords VALUES (32, 'ALIKE')
INSERT keywords VALUES (33, 'YES')
INSERT keywords VALUES (34, 'FRIEND')
INSERT keywords VALUES (35, 'COMPUTER')
INSERT keywords VALUES (36, 'NO KEY FOUND')
INSERT keywords VALUES (37, 'REPEAT INPUT')

CREATE TABLE response (pk int, word varchar(100))
INSERT response VALUES (1,'Don''t you believe that I can*')
INSERT response VALUES (2,'Perhaps you would like to be able to*')
INSERT response VALUES (3,'You want me to be able to*')
INSERT response VALUES (4,'Perhaps you don''t want to*')
INSERT response VALUES (5,'Do you want to be able to*')
INSERT response VALUES (6,'What makes you think I am*')
INSERT response VALUES (7,'Does it please you to believe I am*')
INSERT response VALUES (8,'Perhaps you would like to be*')
INSERT response VALUES (9,'Do you sometimes wish you were*')
INSERT response VALUES (10,'Don''t you really*')
INSERT response VALUES (11,'Why don''t you*')
INSERT response VALUES (12,'Do you wish to be able to*')
INSERT response VALUES (13,'Does that trouble you?')
INSERT response VALUES (14,'Tell me more about such feelings.')
INSERT response VALUES (15,'Do you often feel*')
INSERT response VALUES (16,'Do you enjoy feeling*')
INSERT response VALUES (17,'Do you really believe I don''t*')
INSERT response VALUES (18,'Perhaps in good time I will@')
INSERT response VALUES (19,'Do you want me to*')
INSERT response VALUES (20,'Do you think you should be able to*')
INSERT response VALUES (21,'Why can''t you*')
INSERT response VALUES (22,'Why are you interested in whether or not I am*')
INSERT response VALUES (23,'Would you prefer if I were not*')
INSERT response VALUES (24,'Perhaps in your fantasies I am*')
INSERT response VALUES (25,'How do you know you can''t*')
INSERT response VALUES (26,'Have you tried?')
INSERT response VALUES (27,'Perhaps you can now*')
INSERT response VALUES (28,'Did you come to me because you are*')
INSERT response VALUES (29,'How long have you been*')
INSERT response VALUES (30,'Do you believe it is normal to be*')
INSERT response VALUES (31,'Do you enjoy being*')
INSERT response VALUES (32,'We were discussing you --not me.')
INSERT response VALUES (33,'Oh,*')
INSERT response VALUES (34,'You''re not really talking about me, are you?')
INSERT response VALUES (35,'What would it mean to you if you got*')
INSERT response VALUES (36,'Why do you want*')
INSERT response VALUES (37,'Suppose you got*')
INSERT response VALUES (38,'What if you never got*')
INSERT response VALUES (39,'I sometimes also want@')
INSERT response VALUES (40,'Why do you ask?')
INSERT response VALUES (41,'Does that question interest you?')
INSERT response VALUES (42,'What answer would please you the most?')
INSERT response VALUES (43,'What do you think?')
INSERT response VALUES (44,'Are such questions on your mind often?')
INSERT response VALUES (45,'What is it that you really want to know?')
INSERT response VALUES (46,'Have you asked anyone else?')
INSERT response VALUES (47,'Have you asked such questions before?')
INSERT response VALUES (48,'What else comes to mind when you ask that?')
INSERT response VALUES (49,'Names don''t interest me.')
INSERT response VALUES (50,'I don''t care about names --please go on.')
INSERT response VALUES (51,'Is that the real reason?')
INSERT response VALUES (52,'Don''t any other reasons come to mind?')
INSERT response VALUES (53,'Does that reason explain anything else?')
INSERT response VALUES (54,'What other reasons might there be?')
INSERT response VALUES (55,'Please don''t apologise!')
INSERT response VALUES (56,'Apologies are not necessary.')
INSERT response VALUES (57,'What feelings do you have when you apologise?')
INSERT response VALUES (58,'Don''t be so defensive!')
INSERT response VALUES (59,'What does that dream suggest to you?')
INSERT response VALUES (60,'Do you dream often?')
INSERT response VALUES (61,'What persons appear in your dreams?')
INSERT response VALUES (62,'Are you disturbed by your dreams?')
INSERT response VALUES (63,'How do you...please state your problem.')
INSERT response VALUES (64,'You don''t seem quite certain.')
INSERT response VALUES (65,'Why the uncertain tone?')
INSERT response VALUES (66,'Can''t you be more positive?')
INSERT response VALUES (67,'You aren''t sure?')
INSERT response VALUES (68,'Don''t you know?')
INSERT response VALUES (69,'Are you saying no just to be negative?')
INSERT response VALUES (70,'You are being a bit negative.')
INSERT response VALUES (71,'Why not?')
INSERT response VALUES (72,'Are you sure?')
INSERT response VALUES (73,'Why no?')
INSERT response VALUES (74,'Why are you concerned about my*')
INSERT response VALUES (75,'What about your own*')
INSERT response VALUES (76,'Can you think of a specific example?')
INSERT response VALUES (77,'When?')
INSERT response VALUES (78,'What are you thinking of?')
INSERT response VALUES (79,'Really, always?')
INSERT response VALUES (80,'Do you really think so?')
INSERT response VALUES (81,'But you are not sure you*')
INSERT response VALUES (82,'Do you doubt you*')
INSERT response VALUES (83,'In what way?')
INSERT response VALUES (84,'What resemblence do you see?')
INSERT response VALUES (85,'What does the similarity suggest to you?')
INSERT response VALUES (86,'What other connections do you see?')
INSERT response VALUES (87,'Cound there really be some connection?')
INSERT response VALUES (88,'How?')
INSERT response VALUES (89,'You seem quite positive.')
INSERT response VALUES (90,'Are you Sure?')
INSERT response VALUES (91,'I see.')
INSERT response VALUES (92,'I understand.')
INSERT response VALUES (93,'Why do you bring up the topic of friends?')
INSERT response VALUES (94,'Do your friends worry you?')
INSERT response VALUES (95,'Do your friends pick on you?')
INSERT response VALUES (96,'Are you sure you have any friends?')
INSERT response VALUES (97,'Do you impose on your friends?')
INSERT response VALUES (98,'Perhaps your love for friends worries you.')
INSERT response VALUES (99,'Do computers worry you?')
INSERT response VALUES (100,'Are you talking about me in particular?')
INSERT response VALUES (101,'Are you frightened by machines?')
INSERT response VALUES (102,'Why do you mention computers?')
INSERT response VALUES (103,'What do you think machines have to do with your problems?')
INSERT response VALUES (104,'Don''t you think computers can help people?')
INSERT response VALUES (105,'What is it about machines that worries you?')
INSERT response VALUES (106,'Say, do you have any psychological problems?')
INSERT response VALUES (107,'What does that suggest to you?')
INSERT response VALUES (108,'I see.')
INSERT response VALUES (109,'I''m not sure I understand you fully.')
INSERT response VALUES (110,'Come, come, elucidate your thoughts.')
INSERT response VALUES (111,'Can you elaborate on that?')
INSERT response VALUES (112,'That is quite interesting.')
INSERT response VALUES (113,'Why did you repeat yourself?')
INSERT response VALUES (114,'Do you expect a different answer by repeating yourself?')
INSERT response VALUES (115,'Come, come, elucidate your thoughts.')
INSERT response VALUES (116,'Please don''t repeat yourself!')
