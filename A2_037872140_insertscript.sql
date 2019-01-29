--- CONDOS
INSERT INTO CONDO VALUES(0, 1, 500, 755);
INSERT INTO CONDO VALUES(1, 2, 750, 100);
INSERT INTO CONDO VALUES(2, 4, 1250, 300);
INSERT INTO CONDO VALUES(3, 2, 1200, 150);
INSERT INTO CONDO VALUES(4, 1, 900, 890);
INSERT INTO CONDO VALUES(5, 3, 1400, 432);
INSERT INTO CONDO VALUES(6, 3, 1000, 600);
INSERT INTO CONDO VALUES(7, 2, 960, 200);
INSERT INTO CONDO VALUES(8, 1, 350, 600);
INSERT INTO CONDO VALUES(9, 4, 1600, 950);

--- HOUSES
INSERT INTO HOUSE VALUES(0, 2, 2458, 1250);
INSERT INTO HOUSE VALUES(1, 4, 5000, 2000);
INSERT INTO HOUSE VALUES(2, 1, 1000, 650);
INSERT INTO HOUSE VALUES(3, 2, 1600, 750);
INSERT INTO HOUSE VALUES(4, 1, 1200, 1450);
INSERT INTO HOUSE VALUES(5, 2, 1200, 1654);
INSERT INTO HOUSE VALUES(6, 8, 6000, 3500);
INSERT INTO HOUSE VALUES(7, 3, 2000, 1500);
INSERT INTO HOUSE VALUES(8, 1, 900, 900);
INSERT INTO HOUSE VALUES(9, 4, 1450, 1200);

--School
INSERT INTO SCHOOL VALUES(0, 'Edgewood Elementary', 'Elementary');
INSERT INTO SCHOOL VALUES(1, 'Mammoth High School', 'High');
INSERT INTO SCHOOL VALUES(2, 'Green Meadows Public School', 'Middle');
INSERT INTO SCHOOL VALUES(3, 'Amherts Public School', 'Middle');
INSERT INTO SCHOOL VALUES(4, 'Laurier Park Public School', 'Elementary');
INSERT INTO SCHOOL VALUES(5, 'Saint John Catholic School', 'High');
INSERT INTO SCHOOL VALUES(6, 'Micheline-Saint-Cyr', 'Elementary');
INSERT INTO SCHOOL VALUES(7, 'Pierre Trudeau Immersion', 'Middle');
INSERT INTO SCHOOL VALUES(8, 'John A. Macdonald High', 'High');
INSERT INTO SCHOOL VALUES(9, 'St. Daniel College School', 'High');

--Area
INSERT INTO AREA VALUES(0, 'Rainbow Village', '21 Wand Street', 'North York', 'Ontario', 'L6A 3X7','',0);
INSERT INTO AREA VALUES(1, 'High Downtown', '10 Fortress Ave', 'Toronto', 'Ontario', 'M3L 2PS', '', 2);
INSERT INTO AREA VALUES(2, 'Midtown', '01 January Road', 'Toronto', 'Ontario', 'R1K 2NT', 'Caters to francophones', 6);
INSERT INTO AREA VALUES(3, 'Lowtown', '94 Centennial St', 'Toronto', 'Ontario', 'R9X 9RX', 'Pricey neighbourhood', 7);
INSERT INTO AREA VALUES(4, 'Suburban Core', '05 Ford Road', 'Etobicoke', 'Ontario', 'L2N 6XP', '', 4);
INSERT INTO AREA VALUES(5, 'Metro Outskirts', '11 Heller St', 'Scarborough', 'Ontario', 'N9C 4GH', '', 9);
INSERT INTO AREA VALUES(6, 'Transit Zone', '22 Transition Lane', 'North York', 'Ontario', 'B2A 3PH', '', 5);
INSERT INTO AREA VALUES(7, 'Generic District', '25 Random Road', 'Durham', 'Ontario', 'C3Z 1DF', '', 8);
INSERT INTO AREA VALUES(8, 'Old Industry', '10 Steel Ave', 'York', 'Ontario', 'F5L 3RT', 'Old industrial lands', 1);
INSERT INTO AREA VALUES(9, 'Seats of Power', '09 Macdonald St', 'Toronto', 'Ontario', 'M1L 6NC', 'Pricey', 3);

--Agencies
INSERT INTO AGENCY VALUES(0, 'Gene Eric Realtor', '1-800-555-5555');
INSERT INTO AGENCY VALUES(1, 'Supermen Realtors', '1-800-555-2143');
INSERT INTO AGENCY VALUES(2, 'By Night Real Estate', '1-800-600-1203');
INSERT INTO AGENCY VALUES(3, 'Luxury Realtors', '1-800-230-9530');

--Client
INSERT INTO CLIENT VALUES(0, 'John', 'Jackson', '1-647-239-2340', 'Home', 'JJackson@bell.net', 'Seller');
INSERT INTO CLIENT VALUES(1, 'James', 'Mason', '1-416-403-1294', 'Mobile', 'MasonJames@hotmail.com', 'Seller');
INSERT INTO CLIENT VALUES(2, 'Jack', 'Marsden', '1-647-439-5022', 'Mobile', 'JMarsden@MIndustries.com', 'Seller');
INSERT INTO CLIENT VALUES(3, 'Marlene', 'Dawson', '1-416-320-5902', 'Home', 'Marlene199@gmail.com', 'Seller');
INSERT INTO CLIENT VALUES(4, 'Sirius', 'Black', '1-647-129-1703', 'Mobile', 'RichMan1971@gmail.com', 'Buyer');
INSERT INTO CLIENT VALUES(5, 'Jane', 'Shepard', '1-416-943-2340', 'Home', 'TheShepherd2181@gmail.com', 'Buyer');
INSERT INTO CLIENT VALUES(6, 'Gordon', 'Freeman', '1-320-532-5934', 'Mobile', 'FreemanG@gmail.com', 'Seller');
INSERT INTO CLIENT VALUES(7, 'Maxwell', 'Lord', '1-214-912-4921', 'Home', 'TheLordMan@lordmail.ca', 'Seller');
INSERT INTO CLIENT VALUES(8, 'Kara', 'Danvers', '1-430-523-9350', 'Mobile', 'kara.danvers@gmail.com', 'Buyer');
INSERT INTO CLIENT VALUES(9, 'Alex', 'Danvers', '1-430-523-5910', 'Mobile', 'alex.danvers@gmail.com', 'Buyer');

--Reference
INSERT INTO REFERENCE VALUES(0, 250, 2);
INSERT INTO REFERENCE VALUES(1, 450, 8);
INSERT INTO REFERENCE VALUES(2, 950, 4);
INSERT INTO REFERENCE VALUES(3, 500, 0);

--Properties
INSERT INTO PROPERTY VALUES(0, 0, 0, 0, 0);
INSERT INTO PROPERTY VALUES(1, 1, 1, 1, 1);
INSERT INTO PROPERTY VALUES(2, 2, 2, 2, 2);
INSERT INTO PROPERTY VALUES(3, 3, 3, 3, 3);
INSERT INTO PROPERTY VALUES(4, 4, 4, 4, 0);
INSERT INTO PROPERTY VALUES(5, 5, 5, 5, 1);
INSERT INTO PROPERTY VALUES(6, 6, 6, 6, 2);
INSERT INTO PROPERTY VALUES(7, 7, 7, 7, 3);
INSERT INTO PROPERTY VALUES(8, 8, 8, 8, 2);
INSERT INTO PROPERTY VALUES(9, 9, 9, 9, 0);

-- Ownership
INSERT INTO OWNERSHIP VALUES(8, 4, '50', 'Mobile', 'kara.danvers@gmail.com', 'Buyer');
INSERT INTO OWNERSHIP VALUES(9, 4, '50', 'Mobile', 'alex.danvers@gmail.com', 'Buyer');
INSERT INTO OWNERSHIP VALUES(0, 7, '25', 'Home', 'JJackson@bell.net', 'Seller');
INSERT INTO OWNERSHIP VALUES(1, 7, '25', 'Mobile', 'MasonJames@hotmail.com', 'Seller');
INSERT INTO OWNERSHIP VALUES(2, 7, '50', 'Mobile', 'JMarsden@MIndustries.com', 'Seller');
INSERT INTO OWNERSHIP VALUES(3, 5, '100', 'Home', 'Marlene199@gmail.com', 'Seller');
INSERT INTO OWNERSHIP VALUES(4, 9, '100', 'Mobile', 'RichMan1971@gmail.com', 'Buyer');
INSERT INTO OWNERSHIP VALUES(5, 0, '100', 'Home', 'TheShepherd2181@gmail.com', 'Buyer');
INSERT INTO OWNERSHIP VALUES(6, 0, '100', 'Mobile', 'FreemanG@gmail.com', 'Seller');
INSERT INTO OWNERSHIP VALUES(7, 1, '100', 'Home', 'TheLordMan@lordmail.ca', 'Seller');

-- Adverts
INSERT INTO ADVERTISEMENT VALUES(0, 'TV');
INSERT INTO ADVERTISEMENT VALUES(1, 'Internet');
INSERT INTO ADVERTISEMENT VALUES(2, 'Newspaper');
INSERT INTO ADVERTISEMENT VALUES(3, 'Magazine');
INSERT INTO ADVERTISEMENT VALUES(4, 'Radio');

-- Advert Outlet
INSERT INTO AD_OUTLET VALUES(0, 4, 'Magellan TV Advertisers', '1-800-440-1301', to_date(20190112), 6000); 
INSERT INTO AD_OUTLET VALUES(1, 4, 'Google Ads', '1-800-522-9210', to_date(20170911), 6000); 
INSERT INTO AD_OUTLET VALUES(2, 1, 'Toronto Star Ads', '1-800-123-1701', to_date(20180601), 6000); 
INSERT INTO AD_OUTLET VALUES(3, 7, 'Toronto Life Ads', '1-800-754-4302', to_date(20150821), 6000); 


