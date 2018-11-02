
-- run this file in as the "root" user, it will create a user called student and has a password of student
-- this will make marking MUCH easier for me, so please set this up
CREATE USER 'student'@'localhost' IDENTIFIED BY 'student';
GRANT ALL PRIVILEGES ON *.* TO 'student'@'localhost' WITH GRANT OPTION;

CREATE DATABASE COMP1011T2S1;
USE COMP1011T2S1;

DROP TABLE IF EXISTS speakers;

CREATE TABLE speakers
(
	speakerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(200),
    description VARCHAR(400),
    price DEC(10,2),
    image VARCHAR(300)
);

INSERT INTO speakers (productName, description, price, image) VALUES ('Ultimate Ears BOOM 2 Waterproof Wireless Bluetooth Speaker - Black/Grey', 
																'Wherever you go, keep the party going with the UE BOOM 2 portable Bluetooth wireless speaker. It pumps out incredible sound with deep bass in all directions thanks to its 360-degree design. With a 100ft. range and 15-hour battery life, this speaker makes it easy to share your favourite tunes on the trail, at the beach, or just about anywhere.',
                                                                129.99, './images/ultimateEars.jpg');
                                                                                                                                
INSERT INTO speakers (productName, description, price, image) VALUES ('Sonos PLAY:1 Wireless Speaker - Black',
																	'The Sonos PLAY:1 is a compact wireless speaker that delivers deep, crystal-clear hi-fi sound. Its sleek, versatile design easily fits anywhere in your home that needs sound. It features 2 Class-D amplifiers and 2 custom-built drivers for pitch-perfect music. Use the Sonos app to play your favourite music services or internet radio. ',
                                                                    199.99, './images/sonosOne.jpg');
                                                                    
INSERT INTO speakers (productName, description, price, image) VALUES ('JBL Charge 3 Waterproof Wireless Bluetooth Speaker - Black',
																     'The portable and powerful JBL Charge 3 is a versatile Bluetooth speaker that delivers high-quality stereo sound and offers a range of convenient features. It includes a USB power bank to charge your other devices, offers speakerphone function, and has an IPX7-rated waterproof design. The rechargeable battery provides up to 20 hours of playtime. ',
                                                                     219.99, './images/jblCharge3.jpg');

INSERT INTO speakers (productName, description, price, image) VALUES ('Bose SoundLink Revolve Splashproof Bluetooth NFC',
																	'Deep. Loud. And immersive, too. The SoundLink Revolve Bluetooth speaker delivers true 360° sound for consistent, uniform coverage. Place it in the centre of the room to give everyone the same experience. Or set it near a wall so sound radiates and reflects. Durable and water-resistant, it features a rechargeable battery that plays up to 12 hours. ',
                                                                    249.99, './images/bose.jpg');


DROP TABLE IF EXISTS sales;
CREATE TABLE sales
(
	saleID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	speakerID INT NOT NULL,
    monthSold VARCHAR(30),
    unitsSold INT,
    FOREIGN KEY (speakerID) REFERENCES speakers (speakerID)
);

INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Jan', 100);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Feb', 200);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Mar', 300);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Apr', 250);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'May', 427);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Jun', 502);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Jul', 402);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Aug', 301);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Sep', 200);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Oct', 167);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Nov', 134);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (1, 'Dec', 610);


INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Jan', 1000);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Feb', 2000);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Mar', 3000);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Apr', 2500);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'May', 4270);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Jun', 5020);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Jul', 4020);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Aug', 3010);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Sep', 2000);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Oct', 1670);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Nov', 1340);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (2, 'Dec', 6100);


INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Jan', 108);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Feb', 208);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Mar', 307);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Apr', 257);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'May', 427);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Jun', 506);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Jul', 406);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Aug', 305);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Sep', 205);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Oct', 164);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Nov', 133);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (3, 'Dec', 612);


INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Jan', 310);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Feb', 420);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Mar', 530);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Apr', 140);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'May', 257);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Jun', 362);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Jul', 472);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Aug', 571);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Sep', 380);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Oct', 207);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Nov', 314);
INSERT INTO sales (speakerID, monthSold, unitsSold) VALUES (4, 'Dec', 220);


