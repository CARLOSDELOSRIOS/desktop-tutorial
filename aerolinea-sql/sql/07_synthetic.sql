-- GENERADO con semilla fija. Emplea procedimientos; GO solo separa lotes.
IF EXISTS(SELECT 1 FROM air.Flight) THROW 51100,'La carga exige una base sin vuelos.',1;
GO
EXEC air.usp_AddFare 11,1,'ECO','2025-01-01','2027-01-01',115.00;
EXEC air.usp_AddFare 12,1,'VIP','2025-01-01','2027-01-01',287.50;
EXEC air.usp_AddFare 21,2,'ECO','2025-01-01','2027-01-01',130.00;
EXEC air.usp_AddFare 22,2,'VIP','2025-01-01','2027-01-01',325.00;
EXEC air.usp_AddFare 31,3,'ECO','2025-01-01','2027-01-01',145.00;
EXEC air.usp_AddFare 32,3,'VIP','2025-01-01','2027-01-01',362.50;
EXEC air.usp_AddFare 41,4,'ECO','2025-01-01','2027-01-01',160.00;
EXEC air.usp_AddFare 42,4,'VIP','2025-01-01','2027-01-01',400.00;
EXEC air.usp_AddFare 51,5,'ECO','2025-01-01','2027-01-01',175.00;
EXEC air.usp_AddFare 52,5,'VIP','2025-01-01','2027-01-01',437.50;
EXEC air.usp_AddFare 61,6,'ECO','2025-01-01','2027-01-01',190.00;
EXEC air.usp_AddFare 62,6,'VIP','2025-01-01','2027-01-01',475.00;
EXEC air.usp_AddFare 71,7,'ECO','2025-01-01','2027-01-01',205.00;
EXEC air.usp_AddFare 72,7,'VIP','2025-01-01','2027-01-01',512.50;
EXEC air.usp_AddFare 81,8,'ECO','2025-01-01','2027-01-01',220.00;
EXEC air.usp_AddFare 82,8,'VIP','2025-01-01','2027-01-01',550.00;
GO
EXEC air.usp_CreateFlight 1,1,1,'2026-01-05';
EXEC air.usp_AssignCrew 1,1;
EXEC air.usp_AssignCrew 1,2;
EXEC air.usp_CreateFlight 2,2,1,'2026-01-05';
EXEC air.usp_AssignCrew 2,1;
EXEC air.usp_AssignCrew 2,2;
EXEC air.usp_CreateFlight 3,3,2,'2026-01-06';
EXEC air.usp_AssignCrew 3,3;
EXEC air.usp_AssignCrew 3,4;
EXEC air.usp_CreateFlight 4,4,2,'2026-01-06';
EXEC air.usp_AssignCrew 4,3;
EXEC air.usp_AssignCrew 4,4;
EXEC air.usp_CreateFlight 5,5,3,'2026-01-07';
EXEC air.usp_AssignCrew 5,5;
EXEC air.usp_AssignCrew 5,6;
EXEC air.usp_CreateFlight 6,6,3,'2026-01-07';
EXEC air.usp_AssignCrew 6,5;
EXEC air.usp_AssignCrew 6,6;
EXEC air.usp_CreateFlight 7,7,4,'2026-01-07';
EXEC air.usp_AssignCrew 7,7;
EXEC air.usp_AssignCrew 7,8;
EXEC air.usp_CreateFlight 8,8,4,'2026-01-08';
EXEC air.usp_AssignCrew 8,7;
EXEC air.usp_AssignCrew 8,8;
EXEC air.usp_CreateFlight 9,1,1,'2026-01-12';
EXEC air.usp_AssignCrew 9,1;
EXEC air.usp_AssignCrew 9,2;
EXEC air.usp_CreateFlight 10,2,1,'2026-01-12';
EXEC air.usp_AssignCrew 10,1;
EXEC air.usp_AssignCrew 10,2;
EXEC air.usp_CreateFlight 11,3,2,'2026-01-13';
EXEC air.usp_AssignCrew 11,3;
EXEC air.usp_AssignCrew 11,4;
EXEC air.usp_CreateFlight 12,4,2,'2026-01-13';
EXEC air.usp_AssignCrew 12,3;
EXEC air.usp_AssignCrew 12,4;
EXEC air.usp_CreateFlight 13,5,3,'2026-01-14';
EXEC air.usp_AssignCrew 13,5;
EXEC air.usp_AssignCrew 13,6;
EXEC air.usp_CreateFlight 14,6,3,'2026-01-14';
EXEC air.usp_AssignCrew 14,5;
EXEC air.usp_AssignCrew 14,6;
EXEC air.usp_CreateFlight 15,7,4,'2026-01-14';
EXEC air.usp_AssignCrew 15,7;
EXEC air.usp_AssignCrew 15,8;
EXEC air.usp_CreateFlight 16,8,4,'2026-01-15';
EXEC air.usp_AssignCrew 16,7;
EXEC air.usp_AssignCrew 16,8;
EXEC air.usp_CreateFlight 17,1,1,'2026-01-19';
EXEC air.usp_AssignCrew 17,1;
EXEC air.usp_AssignCrew 17,2;
EXEC air.usp_CreateFlight 18,2,1,'2026-01-19';
EXEC air.usp_AssignCrew 18,1;
EXEC air.usp_AssignCrew 18,2;
EXEC air.usp_CreateFlight 19,3,2,'2026-01-20';
EXEC air.usp_AssignCrew 19,3;
EXEC air.usp_AssignCrew 19,4;
EXEC air.usp_CreateFlight 20,4,2,'2026-01-20';
EXEC air.usp_AssignCrew 20,3;
EXEC air.usp_AssignCrew 20,4;
EXEC air.usp_CreateFlight 21,5,3,'2026-01-21';
EXEC air.usp_AssignCrew 21,5;
EXEC air.usp_AssignCrew 21,6;
EXEC air.usp_CreateFlight 22,6,3,'2026-01-21';
EXEC air.usp_AssignCrew 22,5;
EXEC air.usp_AssignCrew 22,6;
EXEC air.usp_CreateFlight 23,7,4,'2026-01-21';
EXEC air.usp_AssignCrew 23,7;
EXEC air.usp_AssignCrew 23,8;
EXEC air.usp_CreateFlight 24,8,4,'2026-01-22';
EXEC air.usp_AssignCrew 24,7;
EXEC air.usp_AssignCrew 24,8;
EXEC air.usp_CreateFlight 25,1,1,'2026-01-26';
EXEC air.usp_AssignCrew 25,1;
EXEC air.usp_AssignCrew 25,2;
EXEC air.usp_CreateFlight 26,2,1,'2026-01-26';
EXEC air.usp_AssignCrew 26,1;
EXEC air.usp_AssignCrew 26,2;
EXEC air.usp_CreateFlight 27,3,2,'2026-01-27';
EXEC air.usp_AssignCrew 27,3;
EXEC air.usp_AssignCrew 27,4;
EXEC air.usp_CreateFlight 28,4,2,'2026-01-27';
EXEC air.usp_AssignCrew 28,3;
EXEC air.usp_AssignCrew 28,4;
EXEC air.usp_CreateFlight 29,5,3,'2026-01-28';
EXEC air.usp_AssignCrew 29,5;
EXEC air.usp_AssignCrew 29,6;
EXEC air.usp_CreateFlight 30,6,3,'2026-01-28';
EXEC air.usp_AssignCrew 30,5;
EXEC air.usp_AssignCrew 30,6;
EXEC air.usp_CreateFlight 31,7,4,'2026-01-28';
EXEC air.usp_AssignCrew 31,7;
EXEC air.usp_AssignCrew 31,8;
EXEC air.usp_CreateFlight 32,8,4,'2026-01-29';
EXEC air.usp_AssignCrew 32,7;
EXEC air.usp_AssignCrew 32,8;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b28baf59-0211-5e0e-84c5-87b7b400ad40',1,'1D',169,154,2,'2025-12-06T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d308ff27-7ba7-5946-a971-28d15db9e256',1.00,'FAILED','CARD','2025-12-06T14:00:00';
EXEC air.usp_RegisterPayment @id,'7246b9e6-4809-5a25-873c-8e87b20daae3',129.38,'CONFIRMED','CARD','2025-12-06T15:00:00';
EXEC air.usp_RegisterPayment @id,'08cfa91c-29cb-5135-8fef-df9c68044842',129.37,'CONFIRMED','CARD','2025-12-06T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-06T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2e165405-a6cc-5542-8f8d-56bcec180fe2',1,'1F',105,105,1,'2025-12-06T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ee71a87b-2e0b-5c2d-8929-9b79f29efbc6',143.75,'CONFIRMED','CARD','2025-12-06T14:00:00';
EXEC air.usp_RegisterPayment @id,'0fe8c017-3b39-547b-a8e9-c2d6c178e912',143.75,'CONFIRMED','CARD','2025-12-06T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5ff47b98-3179-53b2-892b-80e3c95624be',1,'1A',51,51,2,'2025-12-06T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'668c3733-fa0e-5d96-af82-f301ec60bed6',143.75,'CONFIRMED','CARD','2025-12-06T13:00:00';
EXEC air.usp_RegisterPayment @id,'d74154ab-3c7b-517b-a966-a4d28e5508c3',143.75,'CONFIRMED','CARD','2025-12-06T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7a5c5711-8935-5708-8c13-246c88957455',1,'1E',190,42,1,'2025-12-06T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'66a56f05-dab7-5501-8d2a-c744307716b5',143.75,'CONFIRMED','CARD','2025-12-06T12:00:00';
EXEC air.usp_RegisterPayment @id,'c6ba14fe-1abb-5053-8faf-54e67fa3679c',143.75,'CONFIRMED','CARD','2025-12-06T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '86cf35c7-732d-5eea-a8a5-e20a2f94b0c1',1,'6A',19,19,2,'2025-12-06T09:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'11775fd6-3ecb-5eff-b080-747456c3be1d',51.75,'CONFIRMED','CARD','2025-12-06T11:00:00';
EXEC air.usp_RegisterPayment @id,'dc934b36-2ed2-54a3-8c4e-f065a2e5dd5a',51.75,'CONFIRMED','CARD','2025-12-06T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a091a640-1cba-5319-8dec-41191bc0fc69',1,'4F',124,124,1,'2025-12-06T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f161d0b6-3b12-541a-b75f-34de38f07d4e',57.50,'CONFIRMED','CARD','2025-12-06T10:00:00';
EXEC air.usp_RegisterPayment @id,'5b882c63-1f6f-5eab-9ad3-a443062528a8',57.50,'CONFIRMED','CARD','2025-12-06T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2941fc9e-f1c5-5abc-b315-c80d70eaf49c',1,'7F',52,198,2,'2025-12-06T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a306765a-642e-539a-840d-ff48f5e9252c',1.00,'FAILED','CARD','2025-12-06T08:00:00';
EXEC air.usp_RegisterPayment @id,'33bcccfe-28d3-5a3b-aa40-3abe3bcf961a',57.50,'CONFIRMED','CARD','2025-12-06T09:00:00';
EXEC air.usp_RegisterPayment @id,'f22041ab-a494-5eba-875b-bdc6273eab82',57.50,'CONFIRMED','CARD','2025-12-06T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f4d29745-7143-5b6f-8501-bd69947c4954',1,'4D',97,97,1,'2025-12-06T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'80962879-f5b0-5ae8-a84c-3acd2a113e3c',57.50,'CONFIRMED','CARD','2025-12-06T08:00:00';
EXEC air.usp_RegisterPayment @id,'1cb18f77-5992-5bc8-8be0-eec4229df2fd',57.50,'CONFIRMED','CARD','2025-12-06T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7ec46ab7-0def-5f7a-a039-acb8ca486081',1,'3D',55,55,2,'2025-12-06T05:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1f8918cc-cc86-5751-860a-66459ed38493',51.75,'CONFIRMED','CARD','2025-12-06T07:00:00';
EXEC air.usp_RegisterPayment @id,'ce65b351-44ff-56da-bb15-bedb3a42870a',51.75,'CONFIRMED','CARD','2025-12-06T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '521412f1-ca2e-504e-9d85-150864f16eae',1,'5C',70,60,1,'2025-12-06T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f9532079-7ee9-5afa-b27b-ebc8733d00e2',57.50,'CONFIRMED','CARD','2025-12-06T06:00:00';
EXEC air.usp_RegisterPayment @id,'56e8c47e-3658-578e-847a-48e7d3381dfd',57.50,'CONFIRMED','CARD','2025-12-06T07:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-06T08:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5d00994a-c813-59dd-8cdb-f82c8d45f339',1,'2A',46,46,2,'2025-12-06T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c39bf750-b669-552e-bcae-924a6dc2a17e',57.50,'CONFIRMED','CARD','2025-12-06T05:00:00';
EXEC air.usp_RegisterPayment @id,'1899e91b-91e6-5401-9373-c48a5b543950',57.50,'CONFIRMED','CARD','2025-12-06T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8eafaf0a-465e-5063-b4e2-3449969379ee',1,'2B',70,70,1,'2025-12-06T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'34f3e8ca-e3cd-56bd-8505-4ffe81e59074',57.50,'CONFIRMED','CARD','2025-12-06T04:00:00';
EXEC air.usp_RegisterPayment @id,'0ab4ac97-e234-5b43-9e85-3463b90c7f45',57.50,'CONFIRMED','CARD','2025-12-06T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '78ba1d9c-0570-5d01-b9d1-6c2a73f7a383',1,'7C',135,82,2,'2025-12-06T01:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cd9cf23c-5dc7-52e4-ab5b-7e6616fc568d',1.00,'FAILED','CARD','2025-12-06T02:00:00';
EXEC air.usp_RegisterPayment @id,'89b7b8c9-9a96-5bdc-82af-fa6ba1fb6978',51.75,'CONFIRMED','CARD','2025-12-06T03:00:00';
EXEC air.usp_RegisterPayment @id,'427b8fa8-fdb1-5534-87ef-1c9d6c2b5d3a',51.75,'CONFIRMED','CARD','2025-12-06T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '66479610-5bd3-5c02-9730-e37884fa26cb',1,'6D',114,114,1,'2025-12-06T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c9740778-e053-5ec7-a322-7fc99fe2d91f',57.50,'CONFIRMED','CARD','2025-12-06T02:00:00';
EXEC air.usp_RegisterPayment @id,'7cb718cd-9a98-5953-a29b-d1f1211573e0',57.50,'CONFIRMED','CARD','2025-12-06T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '738573ad-b466-566c-9ee5-cef48ec96211',1,'7D',13,13,2,'2025-12-05T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'de52a602-dcb8-5896-81e1-336f52d99087',57.50,'CONFIRMED','CARD','2025-12-06T01:00:00';
EXEC air.usp_RegisterPayment @id,'52f5fb24-c5c3-5841-829f-2a22aa2db860',57.50,'CONFIRMED','CARD','2025-12-06T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'dc3ead1e-3c6a-5508-ae1b-ab6e5ff3d394',1,'5E',170,151,1,'2025-12-05T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a41aab9e-e520-59a7-87b9-16b99361c6e5',57.50,'CONFIRMED','CARD','2025-12-06T00:00:00';
EXEC air.usp_RegisterPayment @id,'b21c7b3e-2a28-5c94-8211-fc03838be683',57.50,'CONFIRMED','CARD','2025-12-06T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f5c0a07b-db4b-57ce-b3de-03eed4d7327a',1,'7B',138,138,2,'2025-12-05T21:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3b2eb219-bd8c-5c76-9b24-1bde7ba131a5',51.75,'CONFIRMED','CARD','2025-12-05T23:00:00';
EXEC air.usp_RegisterPayment @id,'debb0675-23d2-5412-83d1-b34033296c26',51.75,'CONFIRMED','CARD','2025-12-06T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1ff8b0b8-ba23-5515-bb23-b34f15314b64',1,'3E',55,55,1,'2025-12-05T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7e9f756c-3a51-5440-8174-c6e63e1a5ef7',57.50,'CONFIRMED','CARD','2025-12-05T22:00:00';
EXEC air.usp_RegisterPayment @id,'f1ee25d6-79dd-5883-a2b0-13f6ea44772c',57.50,'CONFIRMED','CARD','2025-12-05T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '681a6cf5-67d2-5288-bba0-6b4490af019f',1,'7E',100,70,2,'2025-12-05T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3fb5b724-824c-5266-a3db-1215f6c2c158',1.00,'FAILED','CARD','2025-12-05T20:00:00';
EXEC air.usp_RegisterPayment @id,'d5ebba51-cba5-548e-8df3-5207e2e594ca',57.50,'CONFIRMED','CARD','2025-12-05T21:00:00';
EXEC air.usp_RegisterPayment @id,'2ec2dda1-dcf2-5b24-af06-2c872dae78d5',57.50,'CONFIRMED','CARD','2025-12-05T22:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-05T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7f6acbb9-e7bc-5fb1-b71b-16207555dd9c',1,'7A',71,71,1,'2025-12-05T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'298cbbe7-b998-567a-9533-27ce83853757',57.50,'CONFIRMED','CARD','2025-12-05T20:00:00';
EXEC air.usp_RegisterPayment @id,'1996881c-1f7b-5aa3-a0fb-ca70bf426203',57.50,'CONFIRMED','CARD','2025-12-05T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ade68c6e-d51e-5e01-b00b-822b979ca0fc',1,'6E',53,53,2,'2025-12-05T17:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8c45af0b-38ea-5153-9b43-a16d7173d797',51.75,'CONFIRMED','CARD','2025-12-05T19:00:00';
EXEC air.usp_RegisterPayment @id,'4b893063-fe6a-5493-b375-85a13c1bec87',51.75,'CONFIRMED','CARD','2025-12-05T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '77daf6c1-c1a7-5c18-b446-bb13a6dff1ff',1,'5A',116,44,1,'2025-12-05T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a91c441d-ce15-5c38-ae4f-03142f26ffc2',57.50,'CONFIRMED','CARD','2025-12-05T18:00:00';
EXEC air.usp_RegisterPayment @id,'eedd8d5b-79a4-5177-a4d0-043b04569957',57.50,'CONFIRMED','CARD','2025-12-05T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7337b80b-d99d-51dc-9188-6957c4df3e7d',1,'3B',145,145,2,'2025-12-05T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fe56a8e1-0ad1-5c28-83db-62d79ea35cc6',57.50,'CONFIRMED','CARD','2025-12-05T17:00:00';
EXEC air.usp_RegisterPayment @id,'5ef528c9-e130-5b34-9e69-146d85c0ce7f',57.50,'CONFIRMED','CARD','2025-12-05T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cbc9cb22-4168-50d4-9a66-029954ff205e',1,'6B',94,94,1,'2025-12-05T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5e87c7be-4dfa-54cc-aa74-1ddff485803d',57.50,'CONFIRMED','CARD','2025-12-05T16:00:00';
EXEC air.usp_RegisterPayment @id,'d2f7578b-433e-54c0-8290-1375ebdefb39',57.50,'CONFIRMED','CARD','2025-12-05T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6cab6073-aeca-5725-8736-ee557a0e9e31',1,'2E',3,10,2,'2025-12-05T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'129c1d94-5acb-5dae-b627-6b253e057f99',1.00,'FAILED','CARD','2025-12-05T14:00:00';
EXEC air.usp_RegisterPayment @id,'adde72c8-4d3f-539f-9d1d-a618eb82cd13',51.75,'CONFIRMED','CARD','2025-12-05T15:00:00';
EXEC air.usp_RegisterPayment @id,'416227ce-b1a2-54a9-a2f6-1ac11bda2bd9',51.75,'CONFIRMED','CARD','2025-12-05T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f748c236-a237-5394-9f01-6539694ac3b9',1,'3F',107,107,1,'2025-12-05T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f27b9b7c-3a31-5d77-aa8a-db96fa7c5a8d',57.50,'CONFIRMED','CARD','2025-12-05T14:00:00';
EXEC air.usp_RegisterPayment @id,'30064fe0-d0cf-586b-a354-345eedee28a7',57.50,'CONFIRMED','CARD','2025-12-05T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ce9fef2b-2987-59c6-9d42-648cee0520bd',1,'5F',168,168,2,'2025-12-05T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5472a616-63aa-59d6-894a-9c7577417630',57.50,'CONFIRMED','CARD','2025-12-05T13:00:00';
EXEC air.usp_RegisterPayment @id,'4c34b09d-012b-5d24-9b96-5a978e1f722c',57.50,'CONFIRMED','CARD','2025-12-05T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '47e335de-1267-5a7a-9421-92a1ef51b676',1,'2F',102,72,1,'2025-12-05T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ee2f3c23-9486-5bf9-a0f3-61252c1b9843',57.50,'CONFIRMED','CARD','2025-12-05T12:00:00';
EXEC air.usp_RegisterPayment @id,'bf1bc503-b8e2-5a8b-8e77-26f9819e722c',57.50,'CONFIRMED','CARD','2025-12-05T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-05T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '12886aab-1c70-5223-aa3d-eaae8c435e10',2,'1F',123,54,2,'2025-12-06T16:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'84926f19-a645-55c2-a090-73f8d4fa212a',1.00,'FAILED','CARD','2025-12-06T17:00:00';
EXEC air.usp_RegisterPayment @id,'64c3435c-b9c8-5dda-9513-a140e712286d',146.25,'CONFIRMED','CARD','2025-12-06T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-06T20:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a7f17d3d-5fa0-5d8c-86e3-318e5d1a55cb',2,'1D',195,195,1,'2025-12-06T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0276be5b-8b16-536d-9269-05369e13e5b3',162.50,'CONFIRMED','CARD','2025-12-06T17:00:00';
EXEC air.usp_RegisterPayment @id,'3e6a19de-d75a-5834-9237-6033bb58697e',162.50,'CONFIRMED','CARD','2025-12-06T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5e94e4bb-9bfc-5cfd-a97f-0def0eef47cd',2,'1A',35,35,2,'2025-12-06T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4b14b42b-2aee-563d-a9e3-bdcd185e0511',162.50,'CONFIRMED','CARD','2025-12-06T16:00:00';
EXEC air.usp_RegisterPayment @id,'8b3cc443-34c6-5b82-bf8f-d6c554517ec3',162.50,'CONFIRMED','CARD','2025-12-06T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9e3fad1c-2e6b-5798-9d8a-2d58e18c91b9',2,'1C',57,46,1,'2025-12-06T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1040ce53-c139-5750-935b-ec1fb83a501b',162.50,'CONFIRMED','CARD','2025-12-06T15:00:00';
EXEC air.usp_RegisterPayment @id,'a4c132e8-737f-50b1-b903-36eb6be66434',162.50,'CONFIRMED','CARD','2025-12-06T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ea6bb1a6-c90f-5d7c-b122-c2449cb80244',2,'5F',173,173,2,'2025-12-06T12:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'841a2d47-7da6-5067-a181-b79009cb391e',58.50,'CONFIRMED','CARD','2025-12-06T14:00:00';
EXEC air.usp_RegisterPayment @id,'2f203f39-8b0e-5a1f-ac7e-ada7c07a057e',58.50,'CONFIRMED','CARD','2025-12-06T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1fe27ad3-4ab8-59ca-9414-02b12fa82290',2,'4D',145,145,1,'2025-12-06T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1cef9cc4-4ce4-5f2c-8cc5-80aa08a34bfc',65.00,'CONFIRMED','CARD','2025-12-06T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2e3b3650-e924-5b69-8be7-c73fcfd162bd',2,'4F',31,164,2,'2025-12-06T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'383bffac-a6b2-56a4-ae4e-737e9e6ca2c2',1.00,'FAILED','CARD','2025-12-06T11:00:00';
EXEC air.usp_RegisterPayment @id,'d5bfd63e-cd55-5542-81d1-8cac1db8e2b0',65.00,'CONFIRMED','CARD','2025-12-06T12:00:00';
EXEC air.usp_RegisterPayment @id,'0774cbf8-942a-5a3d-9f42-8aa31bcead75',65.00,'CONFIRMED','CARD','2025-12-06T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0b97e041-edf7-58ca-a25b-9400c8ddacef',2,'7E',100,100,1,'2025-12-06T09:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b6026bf9-0d0b-50d6-a6ee-900c2e267e5a',2,'7C',189,189,2,'2025-12-06T08:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4dff7b81-a6af-5d88-8263-e08aebe21b62',58.50,'CONFIRMED','CARD','2025-12-06T10:00:00';
EXEC air.usp_RegisterPayment @id,'b961934a-44c9-5403-9029-9e79d31f1815',58.50,'CONFIRMED','CARD','2025-12-06T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e101b81d-2849-582b-bbfe-f4c41631fae8',2,'7D',45,177,1,'2025-12-06T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bf3e0117-3c3d-5ce0-a16a-6a15e7da13bb',65.00,'CONFIRMED','CARD','2025-12-06T09:00:00';
EXEC air.usp_RegisterPayment @id,'f9ca77d6-cacb-585f-82da-439d2e7a0092',65.00,'CONFIRMED','CARD','2025-12-06T10:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-06T11:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7e3a05f3-4fd7-576b-8a52-0e29dec9234c',2,'5E',127,127,2,'2025-12-06T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e7fde835-4e26-5a7c-8b8f-b524bb2288ba',65.00,'CONFIRMED','CARD','2025-12-06T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f988c6e3-8fb1-588f-b1a1-66b34200c32c',2,'6E',193,193,1,'2025-12-06T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cd5db71f-29ac-5cb4-9faf-fa444301b466',65.00,'CONFIRMED','CARD','2025-12-06T07:00:00';
EXEC air.usp_RegisterPayment @id,'f9d18698-21f7-5d63-b62f-7cb4a88e1296',65.00,'CONFIRMED','CARD','2025-12-06T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '77ff9cb9-85c0-58f6-9b87-af7e1ac1b7c5',2,'5B',23,156,2,'2025-12-06T04:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a2546ad9-fe49-5339-80d1-563f56589f3a',1.00,'FAILED','CARD','2025-12-06T05:00:00';
EXEC air.usp_RegisterPayment @id,'36ca6457-7eea-5853-ae2f-b0e99b58d027',58.50,'CONFIRMED','CARD','2025-12-06T06:00:00';
EXEC air.usp_RegisterPayment @id,'bf81d0c8-30f2-5bde-a838-2660cf68ded2',58.50,'CONFIRMED','CARD','2025-12-06T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b8df2e53-0c48-5103-a2cc-dc1abcc4e7f4',2,'6D',48,48,1,'2025-12-06T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ea26ad92-bd89-5446-acc7-6a191659b3f4',65.00,'CONFIRMED','CARD','2025-12-06T05:00:00';
EXEC air.usp_RegisterPayment @id,'cd1fd34f-1c70-5354-8bf7-3f11249cc2ae',65.00,'CONFIRMED','CARD','2025-12-06T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0041afdf-9407-5db4-8d5f-b05c4d8e49e6',2,'4C',59,59,2,'2025-12-06T02:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd5b1712b-8c4d-5178-b1e9-63bb2f09f8a0',2,'7A',13,152,1,'2025-12-06T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'887f9c59-9d4f-5497-90a4-ba7bfcf929d3',65.00,'CONFIRMED','CARD','2025-12-06T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2d5ccdbc-94a6-5f5c-8085-aa9b936e0823',2,'4E',188,188,2,'2025-12-06T00:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'41e6031a-505f-5361-b470-58cbda5174ad',58.50,'CONFIRMED','CARD','2025-12-06T02:00:00';
EXEC air.usp_RegisterPayment @id,'e33cbe61-0556-5a61-9170-2c8d7a336c25',58.50,'CONFIRMED','CARD','2025-12-06T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a2db929d-6120-5596-a338-9c58941e91f3',2,'7F',89,89,1,'2025-12-05T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d127e96b-9694-52e5-8dab-a92ba4f304c4',65.00,'CONFIRMED','CARD','2025-12-06T01:00:00';
EXEC air.usp_RegisterPayment @id,'0823c1c8-f5b2-54ee-a524-d212fcb851d3',65.00,'CONFIRMED','CARD','2025-12-06T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4563e351-67f7-5e12-8079-23fe690047eb',2,'7B',149,16,2,'2025-12-05T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dc4cc593-0d5f-55d6-a19b-af2811801e4e',1.00,'FAILED','CARD','2025-12-05T23:00:00';
EXEC air.usp_RegisterPayment @id,'2237d48e-99aa-5f3f-af69-ba3e19a14ad8',65.00,'CONFIRMED','CARD','2025-12-06T00:00:00';
EXEC air.usp_RegisterPayment @id,'5a120934-26a0-5627-b1b7-46f9d2d004f6',65.00,'CONFIRMED','CARD','2025-12-06T01:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-06T02:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd4a2ec93-31d5-5c3c-870d-d42bd710da1b',2,'5A',47,47,1,'2025-12-05T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'597d93d4-b92c-5f04-b267-8b8ce1444516',65.00,'CONFIRMED','CARD','2025-12-05T23:00:00';
EXEC air.usp_RegisterPayment @id,'2db41f32-6536-5a73-ab2d-5ee16467e2e5',65.00,'CONFIRMED','CARD','2025-12-06T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7429ea55-5816-5fb0-a526-0b3e6f367af4',2,'2B',175,175,2,'2025-12-05T20:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'45ea9e4b-1a6b-57ae-b757-f2f32cdf17fd',58.50,'CONFIRMED','CARD','2025-12-05T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b30b2589-7ff8-552b-b826-ab07309e4d1e',2,'3D',162,179,1,'2025-12-05T19:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '59aa7a4e-0907-52de-910b-5f6306379112',2,'5C',149,149,2,'2025-12-05T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1b16630e-0bc9-509e-8a2e-0dffe00475b2',65.00,'CONFIRMED','CARD','2025-12-05T20:00:00';
EXEC air.usp_RegisterPayment @id,'34a1698f-cade-58c1-9f29-d7948c9e1cda',65.00,'CONFIRMED','CARD','2025-12-05T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '308bce7d-e62c-53cb-b599-20dccc21730c',2,'4A',117,117,1,'2025-12-05T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bd752e43-1f36-5d2c-b243-5fdf614aaedf',65.00,'CONFIRMED','CARD','2025-12-05T19:00:00';
EXEC air.usp_RegisterPayment @id,'9322abc4-1c3d-595f-8a69-e6ce2df3b60f',65.00,'CONFIRMED','CARD','2025-12-05T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '286634c2-e881-57a3-ade4-30ae8c17bf90',2,'2A',151,64,2,'2025-12-05T16:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'54dfa0e7-6a44-52fb-820d-ae2ef86e886d',1.00,'FAILED','CARD','2025-12-05T17:00:00';
EXEC air.usp_RegisterPayment @id,'f4d5ba0a-98f5-5a89-9cfb-834f190e5df6',58.50,'CONFIRMED','CARD','2025-12-05T18:00:00';
EXEC air.usp_RegisterPayment @id,'3a643535-acc3-5ce7-bf06-2246a092aaa8',58.50,'CONFIRMED','CARD','2025-12-05T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '758b5967-5336-56a0-ae00-c8310fd51a2f',2,'3C',100,100,1,'2025-12-05T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1e509a11-0a7c-5b08-a5af-f81c8e2c9cc4',65.00,'CONFIRMED','CARD','2025-12-05T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '63da0e79-6c30-5051-a298-c956cb3002a0',2,'6F',147,147,2,'2025-12-05T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e4b7edcd-59b4-5248-8b29-152444ba7d66',65.00,'CONFIRMED','CARD','2025-12-05T16:00:00';
EXEC air.usp_RegisterPayment @id,'554ef7c1-9971-51a0-8b74-25ebab37dbb1',65.00,'CONFIRMED','CARD','2025-12-05T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e5bd9e05-c69e-5f24-a7c8-0be0fa345b3b',2,'2D',32,123,1,'2025-12-05T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a666b775-254a-527d-ac1b-8ee48c2e5765',65.00,'CONFIRMED','CARD','2025-12-05T15:00:00';
EXEC air.usp_RegisterPayment @id,'37479ddc-798a-5bee-8075-2b226c71b6e1',65.00,'CONFIRMED','CARD','2025-12-05T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-05T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ef19d8a3-8abb-5bfe-9d3e-5e42536c0074',3,'1F',172,169,2,'2025-12-07T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'91985f5f-d8e8-5973-b4b9-cafda222e5d2',1.00,'FAILED','CARD','2025-12-07T14:00:00';
EXEC air.usp_RegisterPayment @id,'137b48bc-04d1-597c-8912-302ae1565e6b',163.13,'CONFIRMED','CARD','2025-12-07T15:00:00';
EXEC air.usp_RegisterPayment @id,'4ec02d04-fd5e-5924-b2f4-ce18f2500460',163.12,'CONFIRMED','CARD','2025-12-07T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-07T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b9cb253e-208f-547a-a66a-0700fe0d5ba8',3,'1D',180,180,1,'2025-12-07T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e60cd7e7-d32b-5856-a850-eed30ee25434',181.25,'CONFIRMED','CARD','2025-12-07T14:00:00';
EXEC air.usp_RegisterPayment @id,'08e54762-51b6-516e-8dae-f41658bab44b',181.25,'CONFIRMED','CARD','2025-12-07T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1b186246-faf0-526e-aff3-6dd6a4240083',3,'1C',55,55,2,'2025-12-07T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4a42bb37-8691-586e-ab63-96fa14364e37',181.25,'CONFIRMED','CARD','2025-12-07T13:00:00';
EXEC air.usp_RegisterPayment @id,'1fb6aeab-2722-5d42-b4dc-10485a1fa1d6',181.25,'CONFIRMED','CARD','2025-12-07T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5e4d9cf9-d23a-5f1c-aa90-297a13416645',3,'1A',164,168,1,'2025-12-07T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'934e138b-2f2d-5bce-aafb-b9fcc7347526',181.25,'CONFIRMED','CARD','2025-12-07T12:00:00';
EXEC air.usp_RegisterPayment @id,'125b97ea-c7e0-525e-823f-5d2df7ff7379',181.25,'CONFIRMED','CARD','2025-12-07T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9c784c05-dd11-5992-bb45-b72a6f58ae84',3,'6A',48,48,2,'2025-12-07T09:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5a3ef454-0bbc-5933-ab54-3c4a21e904df',65.25,'CONFIRMED','CARD','2025-12-07T11:00:00';
EXEC air.usp_RegisterPayment @id,'6e773a06-9def-57ed-ac53-85020e9617ce',65.25,'CONFIRMED','CARD','2025-12-07T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c61c5793-db1c-5f7a-90af-23b39bfce582',3,'6F',181,181,1,'2025-12-07T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5fe7cff5-4a9e-57c1-a8fb-312057715257',72.50,'CONFIRMED','CARD','2025-12-07T10:00:00';
EXEC air.usp_RegisterPayment @id,'c9680541-c2f5-5cc0-b422-3db40a14815e',72.50,'CONFIRMED','CARD','2025-12-07T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b2e33bb5-7926-5f2d-8928-bb809613c521',3,'7D',198,178,2,'2025-12-07T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f1cbdb5d-bd2a-5dc0-bdb5-9f5133816c17',1.00,'FAILED','CARD','2025-12-07T08:00:00';
EXEC air.usp_RegisterPayment @id,'6d774f3f-da3a-548d-a8b5-7e766ccaa48b',72.50,'CONFIRMED','CARD','2025-12-07T09:00:00';
EXEC air.usp_RegisterPayment @id,'d5076c5a-3c31-5903-bbf3-8d6e74887015',72.50,'CONFIRMED','CARD','2025-12-07T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2c92b526-21b4-595b-9420-bb6e75df27c0',3,'7E',191,191,1,'2025-12-07T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'123905de-9d74-594a-8ff8-cdc70e78f313',72.50,'CONFIRMED','CARD','2025-12-07T08:00:00';
EXEC air.usp_RegisterPayment @id,'c9605a6a-b075-5bf1-af8f-5a391c1ba7c8',72.50,'CONFIRMED','CARD','2025-12-07T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e970defc-58e5-5634-bdd1-ff427f78767a',3,'4E',101,101,2,'2025-12-07T05:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bf325af3-0cac-5cdc-aba3-e220929a57e5',65.25,'CONFIRMED','CARD','2025-12-07T07:00:00';
EXEC air.usp_RegisterPayment @id,'ae64b565-dc66-520e-b516-af1c3d19ddb3',65.25,'CONFIRMED','CARD','2025-12-07T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '197364bc-b5e5-5968-9c2c-528e1ee5d6ea',3,'3E',56,162,1,'2025-12-07T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b91dd1f9-ea46-581d-baa4-296bcf4d098e',72.50,'CONFIRMED','CARD','2025-12-07T06:00:00';
EXEC air.usp_RegisterPayment @id,'caa77105-26df-5eb1-9758-cc66b1176e69',72.50,'CONFIRMED','CARD','2025-12-07T07:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-07T08:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'aa3fb428-0130-577f-980a-da63cca7e9d2',3,'3F',129,129,2,'2025-12-07T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ceb3b93e-16c6-5f99-90b6-b9c0af25467a',72.50,'CONFIRMED','CARD','2025-12-07T05:00:00';
EXEC air.usp_RegisterPayment @id,'127d88b7-aeab-5e88-b153-3bb9cdb3103b',72.50,'CONFIRMED','CARD','2025-12-07T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '05a12be3-17c7-5659-8762-ec2fd58a86fa',3,'3A',57,57,1,'2025-12-07T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'22fbae78-fd50-50e4-b4fc-abf8036b877d',72.50,'CONFIRMED','CARD','2025-12-07T04:00:00';
EXEC air.usp_RegisterPayment @id,'f2eb7875-ab7c-5517-8cff-a99f309c0a61',72.50,'CONFIRMED','CARD','2025-12-07T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0587681d-094d-5e6d-9c61-e878a5c5f748',3,'5D',154,42,2,'2025-12-07T01:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'24c68ed0-ca29-5bbf-9868-c2e9751eda72',1.00,'FAILED','CARD','2025-12-07T02:00:00';
EXEC air.usp_RegisterPayment @id,'15665607-0d4a-5a28-8c55-d078dfe3ebc5',65.25,'CONFIRMED','CARD','2025-12-07T03:00:00';
EXEC air.usp_RegisterPayment @id,'b67d9642-cda8-557a-9a00-4a7298c6868e',65.25,'CONFIRMED','CARD','2025-12-07T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '25164bf5-2fe4-5740-8631-8b0127121dd1',3,'6E',139,139,1,'2025-12-07T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3a655055-e8c9-569d-a249-5ad1255cf1d0',72.50,'CONFIRMED','CARD','2025-12-07T02:00:00';
EXEC air.usp_RegisterPayment @id,'427c7d73-8f30-59f3-8e55-a40ad6272f0a',72.50,'CONFIRMED','CARD','2025-12-07T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd2d027f3-fe5f-51d1-9f7b-0ba50575db54',3,'3C',87,87,2,'2025-12-06T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dcbfd3e7-68cb-53e8-9287-04e7bd098eb8',72.50,'CONFIRMED','CARD','2025-12-07T01:00:00';
EXEC air.usp_RegisterPayment @id,'d0f53400-ce7b-5030-9b52-ecabb7e2f16a',72.50,'CONFIRMED','CARD','2025-12-07T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b33134bc-5b1f-5c59-9b4b-e5dbfeb69f16',3,'2A',142,31,1,'2025-12-06T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a10bde02-d5ae-54d7-ada9-bf5e487adf80',72.50,'CONFIRMED','CARD','2025-12-07T00:00:00';
EXEC air.usp_RegisterPayment @id,'6ec6d9c0-180a-51d0-b2c7-355db4aa503e',72.50,'CONFIRMED','CARD','2025-12-07T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bfef01a4-07d7-54b4-9824-a21c3a263e35',3,'2F',119,119,2,'2025-12-06T21:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a3af2526-2517-54c8-890b-fe46ee6138a7',65.25,'CONFIRMED','CARD','2025-12-06T23:00:00';
EXEC air.usp_RegisterPayment @id,'1c889ff7-44ce-5f79-baf7-a96ed3532728',65.25,'CONFIRMED','CARD','2025-12-07T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bda4b4e2-9a21-5bfc-b856-22b160ea49ed',3,'6C',200,200,1,'2025-12-06T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ac1250db-9f74-59d0-be50-01c0b8938739',72.50,'CONFIRMED','CARD','2025-12-06T22:00:00';
EXEC air.usp_RegisterPayment @id,'7226a685-27c8-5ca1-a400-2e8f7bf6494a',72.50,'CONFIRMED','CARD','2025-12-06T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'abf8aabe-8ed9-5172-aa67-b92181dfaa08',3,'5F',79,23,2,'2025-12-06T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'273946cb-2616-53ae-882c-1c8a26fe1bee',1.00,'FAILED','CARD','2025-12-06T20:00:00';
EXEC air.usp_RegisterPayment @id,'fb5be91d-234f-5eae-aff2-86989d77c3e0',72.50,'CONFIRMED','CARD','2025-12-06T21:00:00';
EXEC air.usp_RegisterPayment @id,'bfb65537-777f-5545-90a8-7b1450efb272',72.50,'CONFIRMED','CARD','2025-12-06T22:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-06T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '325995f3-1f0f-5bc4-b5e4-ca4e92adf997',3,'4F',141,141,1,'2025-12-06T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c133759b-cf69-56e9-8ef2-6be0b7303eea',72.50,'CONFIRMED','CARD','2025-12-06T20:00:00';
EXEC air.usp_RegisterPayment @id,'132b6d05-f6a0-593e-b85a-c51310be2875',72.50,'CONFIRMED','CARD','2025-12-06T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7f347081-52d3-55fa-a70b-83d3750de58d',3,'5C',57,57,2,'2025-12-06T17:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6fe879f9-7d79-5a1b-99aa-5c615ae3bc9a',65.25,'CONFIRMED','CARD','2025-12-06T19:00:00';
EXEC air.usp_RegisterPayment @id,'30b6eaa1-bc12-571f-9b98-9f9aa661e224',65.25,'CONFIRMED','CARD','2025-12-06T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ab350eb7-5fd4-5344-9d3b-ee12ab652d31',3,'2C',165,41,1,'2025-12-06T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2feb7517-1c7e-5ccc-980e-90ca2a968737',72.50,'CONFIRMED','CARD','2025-12-06T18:00:00';
EXEC air.usp_RegisterPayment @id,'df6cd847-0979-5271-adf0-1ba69efd2eda',72.50,'CONFIRMED','CARD','2025-12-06T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9cf36286-fc06-5eee-a6db-e88e4819ee25',3,'4A',70,70,2,'2025-12-06T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ebecdd43-5fbc-505f-a532-0b157cc4d14e',72.50,'CONFIRMED','CARD','2025-12-06T17:00:00';
EXEC air.usp_RegisterPayment @id,'67d71972-c071-5022-9969-41d32ae6c345',72.50,'CONFIRMED','CARD','2025-12-06T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5b6ac7a2-ecee-5b82-adca-753de3bb5370',3,'2D',104,104,1,'2025-12-06T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9ba68be7-a3ef-59b2-b5db-16533bb2aed3',72.50,'CONFIRMED','CARD','2025-12-06T16:00:00';
EXEC air.usp_RegisterPayment @id,'24270485-1fb9-5b3f-8920-63b8d308e2c6',72.50,'CONFIRMED','CARD','2025-12-06T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6251991b-a739-515a-b1e9-ed27da026acc',3,'7C',45,54,2,'2025-12-06T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'58ff2350-dccb-506f-a183-93eb5ff80f0a',1.00,'FAILED','CARD','2025-12-06T14:00:00';
EXEC air.usp_RegisterPayment @id,'5cc8bc95-adeb-5ff5-9a32-4c61d877522b',65.25,'CONFIRMED','CARD','2025-12-06T15:00:00';
EXEC air.usp_RegisterPayment @id,'d4e916e0-d777-5062-856f-4205908aa596',65.25,'CONFIRMED','CARD','2025-12-06T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a8ee5877-8b3f-512f-83f9-38e8a3ceba7d',3,'4D',98,98,1,'2025-12-06T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'563274b0-62aa-5c78-bb1a-4060fa25e2bd',72.50,'CONFIRMED','CARD','2025-12-06T14:00:00';
EXEC air.usp_RegisterPayment @id,'17e90ec9-054c-5ca3-9252-cc537a434fac',72.50,'CONFIRMED','CARD','2025-12-06T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '49442c75-7645-5451-8f18-7ec36f5a4e95',3,'6D',44,44,2,'2025-12-06T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'377e13a8-875a-5813-ab2d-e77f1a4e764a',72.50,'CONFIRMED','CARD','2025-12-06T13:00:00';
EXEC air.usp_RegisterPayment @id,'2b78dd03-2d44-55e9-ae77-e919d8bf4fb7',72.50,'CONFIRMED','CARD','2025-12-06T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c3ca8b84-9c2f-5301-beec-f877ccd44986',3,'7A',115,73,1,'2025-12-06T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d36c1aab-a376-5f36-aadd-e1c9b374851d',72.50,'CONFIRMED','CARD','2025-12-06T12:00:00';
EXEC air.usp_RegisterPayment @id,'02e468f5-8712-5766-90b4-1f512fa0d5eb',72.50,'CONFIRMED','CARD','2025-12-06T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-06T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ad24d5e2-5b00-5646-b546-178695385b1e',4,'1B',44,186,2,'2025-12-07T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ccd9cbec-ff2b-5179-86de-402dc4d441de',1.00,'FAILED','CARD','2025-12-07T19:00:00';
EXEC air.usp_RegisterPayment @id,'3f8f3aa3-c342-58d7-9659-18faf2fd7b17',180.00,'CONFIRMED','CARD','2025-12-07T20:00:00';
EXEC air.usp_RegisterPayment @id,'a9d22bf4-346b-585d-b064-c57bb6c32a4b',180.00,'CONFIRMED','CARD','2025-12-07T21:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-07T22:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '04c91fe2-20a9-5205-892f-f973cace5416',4,'1A',110,110,1,'2025-12-07T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'de61dbdb-3108-538c-b3bf-c5849f8f98c2',200.00,'CONFIRMED','CARD','2025-12-07T19:00:00';
EXEC air.usp_RegisterPayment @id,'faad739c-18c1-5630-a833-51325538bfdb',200.00,'CONFIRMED','CARD','2025-12-07T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fbbe42aa-0f24-5997-9a7e-471e461b6d91',4,'1F',122,122,2,'2025-12-07T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9f9b6fab-7fb6-587e-9a33-93e48ed55631',200.00,'CONFIRMED','CARD','2025-12-07T18:00:00';
EXEC air.usp_RegisterPayment @id,'e504d2b2-2b2d-54b6-94df-cd0d8a8578e4',200.00,'CONFIRMED','CARD','2025-12-07T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '308accb3-7790-5988-a4f4-7292e5666584',4,'1C',122,148,1,'2025-12-07T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3dab273e-e87c-56f2-8d49-fff690d28020',200.00,'CONFIRMED','CARD','2025-12-07T17:00:00';
EXEC air.usp_RegisterPayment @id,'e8360baf-f873-5856-92fc-c94a1d1f6b12',200.00,'CONFIRMED','CARD','2025-12-07T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7ae61174-2f7d-542b-9905-0a7d47de118a',4,'5E',36,36,2,'2025-12-07T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'88878dc7-0e00-52a8-8e57-90b6a51e2bb5',72.00,'CONFIRMED','CARD','2025-12-07T16:00:00';
EXEC air.usp_RegisterPayment @id,'911b196d-9529-5ec3-9493-47a140f76918',72.00,'CONFIRMED','CARD','2025-12-07T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4063a497-44e2-5c0a-8446-17001c98d8b4',4,'4D',73,73,1,'2025-12-07T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e76dcbcb-90ab-5033-82ab-c14dfd92fe02',80.00,'CONFIRMED','CARD','2025-12-07T15:00:00';
EXEC air.usp_RegisterPayment @id,'d610c2b8-40bb-5327-9bd1-fe4e9ee42cc0',80.00,'CONFIRMED','CARD','2025-12-07T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '73951ea7-e3a0-5b11-9f32-e4b6277f9526',4,'3E',194,185,2,'2025-12-07T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3c13be4b-889e-5038-9b18-bcb99b596e88',1.00,'FAILED','CARD','2025-12-07T13:00:00';
EXEC air.usp_RegisterPayment @id,'c5d8cb91-a63e-571a-a1ea-0dbe78e20146',80.00,'CONFIRMED','CARD','2025-12-07T14:00:00';
EXEC air.usp_RegisterPayment @id,'5229a4ae-80fb-55e3-9449-4b69669802c2',80.00,'CONFIRMED','CARD','2025-12-07T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e32a361c-d771-57a8-8982-7ad9ae3c8dc4',4,'5C',195,195,1,'2025-12-07T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2f43fccf-2b12-531f-8018-9021aaebc8c0',80.00,'CONFIRMED','CARD','2025-12-07T13:00:00';
EXEC air.usp_RegisterPayment @id,'161a697c-c977-5ab4-8f1a-9ccd8ab3c4cc',80.00,'CONFIRMED','CARD','2025-12-07T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '549af7cf-cd96-5b41-aead-0c3fc0ace28e',4,'3D',85,85,2,'2025-12-07T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'00731ca6-2ed4-530a-826b-2901ff6d2909',72.00,'CONFIRMED','CARD','2025-12-07T12:00:00';
EXEC air.usp_RegisterPayment @id,'de5ed422-c64f-53cf-b61a-f1c04dbde5c1',72.00,'CONFIRMED','CARD','2025-12-07T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e03eb949-0f65-5962-8550-d41a89b01b67',4,'2A',36,90,1,'2025-12-07T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b5546366-b721-5af5-9f7d-408d38849c02',80.00,'CONFIRMED','CARD','2025-12-07T11:00:00';
EXEC air.usp_RegisterPayment @id,'a9fb4166-6956-54e9-b7df-105712f132c9',80.00,'CONFIRMED','CARD','2025-12-07T12:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-07T13:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '42e8d3d8-0fc7-5062-b4c2-adc74ee3be65',4,'5B',137,137,2,'2025-12-07T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ed7b60c1-c877-5d98-8b2f-3b83091dfb9f',80.00,'CONFIRMED','CARD','2025-12-07T10:00:00';
EXEC air.usp_RegisterPayment @id,'1c8408fe-96ba-5d33-8ebe-875a739fee46',80.00,'CONFIRMED','CARD','2025-12-07T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '89936f8b-8ae2-53c7-91f8-607296069909',4,'4F',114,114,1,'2025-12-07T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'74766b46-0f33-5c1c-aa35-d0112fdb3482',80.00,'CONFIRMED','CARD','2025-12-07T09:00:00';
EXEC air.usp_RegisterPayment @id,'54f6cad6-706a-52cf-bca7-8e2399da7228',80.00,'CONFIRMED','CARD','2025-12-07T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '91b7c46a-fe05-580d-b79f-0816508ef1df',4,'7A',124,69,2,'2025-12-07T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'19f7ebe7-39ae-52c5-98c1-ca61cca4efef',1.00,'FAILED','CARD','2025-12-07T07:00:00';
EXEC air.usp_RegisterPayment @id,'427326c0-5162-5d3c-9b54-9e5f89aa86b4',72.00,'CONFIRMED','CARD','2025-12-07T08:00:00';
EXEC air.usp_RegisterPayment @id,'52645e93-3795-5c27-8075-a196547af283',72.00,'CONFIRMED','CARD','2025-12-07T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'eec95b80-2e9b-57f6-b0c9-6435b7ad0bac',4,'3F',182,182,1,'2025-12-07T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'66fd87a2-4bee-5588-8f62-455f05dda86a',80.00,'CONFIRMED','CARD','2025-12-07T07:00:00';
EXEC air.usp_RegisterPayment @id,'264d7e9f-a375-5041-8448-1aa03b46c9f7',80.00,'CONFIRMED','CARD','2025-12-07T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1cc4c693-3fdb-56e7-9629-3895d0ac008f',4,'4C',93,93,2,'2025-12-07T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ad856da8-abc9-5a62-b5dd-b257a8d98920',80.00,'CONFIRMED','CARD','2025-12-07T06:00:00';
EXEC air.usp_RegisterPayment @id,'77c4e3ec-680a-5dff-adf0-e5ec3e12a7f4',80.00,'CONFIRMED','CARD','2025-12-07T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c02a79bc-a011-5287-8ba1-094f0fa89c7c',4,'2D',159,85,1,'2025-12-07T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f04c99e0-12f1-51fa-b5fd-14b11aad33b0',80.00,'CONFIRMED','CARD','2025-12-07T05:00:00';
EXEC air.usp_RegisterPayment @id,'86815033-3cd4-5a00-818f-7f258f7a4d8f',80.00,'CONFIRMED','CARD','2025-12-07T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e89d0a7e-8e07-5f00-97cb-9f62e23f945b',4,'3B',168,168,2,'2025-12-07T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'16c1d72b-082c-5b79-88fe-5d2048b319ee',72.00,'CONFIRMED','CARD','2025-12-07T04:00:00';
EXEC air.usp_RegisterPayment @id,'c6408152-9366-5be1-b1a2-70c4d90879a0',72.00,'CONFIRMED','CARD','2025-12-07T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3442268a-28c2-5d97-972f-6b187380f434',4,'3A',128,128,1,'2025-12-07T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'441bcf65-ce11-50ee-8213-905a59e453b9',80.00,'CONFIRMED','CARD','2025-12-07T03:00:00';
EXEC air.usp_RegisterPayment @id,'e7a5deba-5846-5153-bbb2-dedebd5711eb',80.00,'CONFIRMED','CARD','2025-12-07T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '858faf53-4549-530a-85c4-1815d0c0a868',4,'6F',192,42,2,'2025-12-07T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0020e08c-acad-595a-a171-3e24778df741',1.00,'FAILED','CARD','2025-12-07T01:00:00';
EXEC air.usp_RegisterPayment @id,'346822c4-47af-5727-9b35-94fe6bbb29a8',80.00,'CONFIRMED','CARD','2025-12-07T02:00:00';
EXEC air.usp_RegisterPayment @id,'a6d241e8-484c-5ad2-afc1-243765c3ea50',80.00,'CONFIRMED','CARD','2025-12-07T03:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-07T04:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4533caeb-517f-508d-a132-7098696ae486',4,'6E',115,115,1,'2025-12-06T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'468d2fbf-59de-5f0a-a268-f9c2cab55b45',80.00,'CONFIRMED','CARD','2025-12-07T01:00:00';
EXEC air.usp_RegisterPayment @id,'4837abcc-86a1-5e35-a539-a05bc797dc96',80.00,'CONFIRMED','CARD','2025-12-07T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c1dd71ee-e728-576b-ae50-08e473c1ab03',4,'5F',114,114,2,'2025-12-06T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5736a621-b40c-5a46-b83a-c79e09b8f3ca',72.00,'CONFIRMED','CARD','2025-12-07T00:00:00';
EXEC air.usp_RegisterPayment @id,'48564730-e269-5f3e-8de9-1987e88ebdce',72.00,'CONFIRMED','CARD','2025-12-07T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4cc23f1c-a270-5472-9ace-5054b82764c4',4,'2E',28,88,1,'2025-12-06T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'95d4746b-17d3-51ef-a657-0d7b632e8331',80.00,'CONFIRMED','CARD','2025-12-06T23:00:00';
EXEC air.usp_RegisterPayment @id,'2b42d3e2-7a1e-5118-bb57-1950e90088b1',80.00,'CONFIRMED','CARD','2025-12-07T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '521498db-5ca7-5fee-9c65-0e0a5a6392aa',4,'6D',143,143,2,'2025-12-06T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9e084cfa-46d0-5ab2-b54f-51ff83a39510',80.00,'CONFIRMED','CARD','2025-12-06T22:00:00';
EXEC air.usp_RegisterPayment @id,'6dcffd0a-f1a6-53a6-858d-cd359b917b53',80.00,'CONFIRMED','CARD','2025-12-06T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '102baf36-b30c-5d97-a392-dce58a31fdb2',4,'7D',114,114,1,'2025-12-06T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b6ad731a-59ab-5d0f-9f81-0947c9f05f60',80.00,'CONFIRMED','CARD','2025-12-06T21:00:00';
EXEC air.usp_RegisterPayment @id,'61c647f1-7065-5c45-ab04-8d9851e39a53',80.00,'CONFIRMED','CARD','2025-12-06T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f23f5c04-3ac1-5b6e-a105-6e2aa40a47ce',4,'2F',35,122,2,'2025-12-06T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a0822a90-6b59-5033-a54e-7e58d949f3b0',1.00,'FAILED','CARD','2025-12-06T19:00:00';
EXEC air.usp_RegisterPayment @id,'77382daa-4f31-57be-b140-5e094af93e55',72.00,'CONFIRMED','CARD','2025-12-06T20:00:00';
EXEC air.usp_RegisterPayment @id,'72405dd7-16c0-5087-a91e-661c745cbc71',72.00,'CONFIRMED','CARD','2025-12-06T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0c11eddb-5121-555d-aa6f-2caedd48852e',4,'6A',123,123,1,'2025-12-06T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'948cb849-aa42-566a-b743-baaf74a89026',80.00,'CONFIRMED','CARD','2025-12-06T19:00:00';
EXEC air.usp_RegisterPayment @id,'2b00b633-f224-57ff-96bc-96b61a478e37',80.00,'CONFIRMED','CARD','2025-12-06T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9340f815-e7e6-5a1c-86e8-9858eb4539ba',4,'2C',47,47,2,'2025-12-06T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b9ce98fe-09a9-520a-beaf-6fafbb0d6f67',80.00,'CONFIRMED','CARD','2025-12-06T18:00:00';
EXEC air.usp_RegisterPayment @id,'e8725288-edf3-53a0-bbe6-8c7b495e9360',80.00,'CONFIRMED','CARD','2025-12-06T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '03b34e92-a187-5aba-bfc4-49d13c3b7339',4,'5D',149,77,1,'2025-12-06T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c4cea0a1-1a29-5cfc-bae6-72dce71b40ce',80.00,'CONFIRMED','CARD','2025-12-06T17:00:00';
EXEC air.usp_RegisterPayment @id,'603911d2-3394-5dc7-9744-651bbfbf225d',80.00,'CONFIRMED','CARD','2025-12-06T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-06T19:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd786de2b-dfea-5db0-aff7-760981e5243d',5,'1E',135,87,2,'2025-12-08T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'002abb8d-0d05-5e33-b733-33222d530af7',1.00,'FAILED','CARD','2025-12-08T15:00:00';
EXEC air.usp_RegisterPayment @id,'9a8b2820-86c1-5fc9-bd50-aed00d03e0a7',196.88,'CONFIRMED','CARD','2025-12-08T16:00:00';
EXEC air.usp_RegisterPayment @id,'cea0129b-82df-50c7-ac28-a9d503b6d6f7',196.87,'CONFIRMED','CARD','2025-12-08T17:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-08T18:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3a7f025a-ccb3-5e43-ac23-db1e798ce883',5,'1C',89,89,1,'2025-12-08T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'13887b1d-e8e4-51c5-931a-4da8f034a492',218.75,'CONFIRMED','CARD','2025-12-08T15:00:00';
EXEC air.usp_RegisterPayment @id,'80f7d995-0fb2-59b3-9b41-070f21b17c8b',218.75,'CONFIRMED','CARD','2025-12-08T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ad545f79-6b8a-5195-bed3-bc2da1749d2d',5,'1F',132,132,2,'2025-12-08T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'773683fe-425e-5624-839a-ecc833f8d3d2',218.75,'CONFIRMED','CARD','2025-12-08T14:00:00';
EXEC air.usp_RegisterPayment @id,'d579d3fb-f550-5ea7-a69b-582ab0b8c5a9',218.75,'CONFIRMED','CARD','2025-12-08T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fbe0d0b5-d953-5986-a99b-da4878753d51',5,'1B',55,175,1,'2025-12-08T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d5df5b3f-d7ad-5a21-b7b5-1873809c8663',218.75,'CONFIRMED','CARD','2025-12-08T13:00:00';
EXEC air.usp_RegisterPayment @id,'c3acffd4-1f22-5d32-b611-55c179c5f875',218.75,'CONFIRMED','CARD','2025-12-08T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd97cfbbf-ffa9-549d-a96a-5e5b7b958ff6',5,'2F',54,54,2,'2025-12-08T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'001e23f1-3675-5c4d-9f32-41b810f62823',78.75,'CONFIRMED','CARD','2025-12-08T12:00:00';
EXEC air.usp_RegisterPayment @id,'adc9adaf-e832-5454-ab3b-4969bf01aa96',78.75,'CONFIRMED','CARD','2025-12-08T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '15d1b2ea-5d7b-5c5f-850f-eacdfed3d481',5,'4A',180,180,1,'2025-12-08T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'07d65658-6a7b-50eb-8e89-d14265d3cfbb',87.50,'CONFIRMED','CARD','2025-12-08T11:00:00';
EXEC air.usp_RegisterPayment @id,'360bdeba-e09a-5e3d-9c86-3ec0f0add3e2',87.50,'CONFIRMED','CARD','2025-12-08T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'faa3c56d-f939-5c59-b900-3757f19abc23',5,'2B',177,189,2,'2025-12-08T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1aa5af6c-f98c-5d28-b699-5a54e64593c5',1.00,'FAILED','CARD','2025-12-08T09:00:00';
EXEC air.usp_RegisterPayment @id,'033b7a79-e50a-5907-97fb-4e95d9779b35',87.50,'CONFIRMED','CARD','2025-12-08T10:00:00';
EXEC air.usp_RegisterPayment @id,'93753d74-8cfc-5b20-8a44-c1df89561ce8',87.50,'CONFIRMED','CARD','2025-12-08T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2cb6bea2-ed5b-551a-a788-8dcbf94ba388',5,'7F',88,88,1,'2025-12-08T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'779cab5a-6e89-53ff-acf5-5abd2cb4c3ac',87.50,'CONFIRMED','CARD','2025-12-08T09:00:00';
EXEC air.usp_RegisterPayment @id,'3d3a949a-d8b0-5214-ad25-9b4dc94c5691',87.50,'CONFIRMED','CARD','2025-12-08T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b2a435b5-e525-5c91-bf3c-7d1f57c1bc26',5,'3F',84,84,2,'2025-12-08T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ee760e2d-44b0-550c-8e1c-4b13893fcf2d',78.75,'CONFIRMED','CARD','2025-12-08T08:00:00';
EXEC air.usp_RegisterPayment @id,'b245090d-2e20-5ede-a0f5-578acc0387a3',78.75,'CONFIRMED','CARD','2025-12-08T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '86de1cc6-ab14-57e5-b43a-9d4f916fb10b',5,'6E',104,8,1,'2025-12-08T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a31ad28e-218f-59d6-821e-3cd9c8eb266d',87.50,'CONFIRMED','CARD','2025-12-08T07:00:00';
EXEC air.usp_RegisterPayment @id,'28d3a5bf-2c43-518b-a488-a82eebdc419e',87.50,'CONFIRMED','CARD','2025-12-08T08:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-08T09:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fd5ab40f-64e0-5ebe-a526-a61579a6e9ad',5,'4F',105,105,2,'2025-12-08T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c9366e1e-c375-5ec6-bf02-058b1a12b8f0',87.50,'CONFIRMED','CARD','2025-12-08T06:00:00';
EXEC air.usp_RegisterPayment @id,'e618e60a-4542-589e-95c0-ece5f2d4dc6f',87.50,'CONFIRMED','CARD','2025-12-08T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f79e8737-8b45-54bf-b14f-8d002ad770a8',5,'7A',140,140,1,'2025-12-08T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'23253140-32b3-5467-9b5b-7275880ece8a',87.50,'CONFIRMED','CARD','2025-12-08T05:00:00';
EXEC air.usp_RegisterPayment @id,'1817573f-feb8-5809-91bc-648f5f7b037e',87.50,'CONFIRMED','CARD','2025-12-08T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ccd3e06d-694e-5db3-9066-4201db7bfc87',5,'5D',171,135,2,'2025-12-08T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'48e980ff-ea16-50af-9212-518e83c17763',1.00,'FAILED','CARD','2025-12-08T03:00:00';
EXEC air.usp_RegisterPayment @id,'0765eaf4-83aa-5163-aef8-7cb944b24d2f',78.75,'CONFIRMED','CARD','2025-12-08T04:00:00';
EXEC air.usp_RegisterPayment @id,'18b57819-17d7-5c43-a3b2-9f519514d20c',78.75,'CONFIRMED','CARD','2025-12-08T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'dc876dbd-04ba-5689-b0cf-8ce9990dd0b2',5,'7C',47,47,1,'2025-12-08T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ddebe3eb-098b-5800-a258-4b4010339d35',87.50,'CONFIRMED','CARD','2025-12-08T03:00:00';
EXEC air.usp_RegisterPayment @id,'10b5d5a4-97a8-55e4-9936-bc24fcdb6b6a',87.50,'CONFIRMED','CARD','2025-12-08T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ec13a2cf-fb8b-5127-b0ab-fe90c360af07',5,'2C',36,36,2,'2025-12-08T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2c1538b2-ce92-5b86-b083-eeb2ad592fe3',87.50,'CONFIRMED','CARD','2025-12-08T02:00:00';
EXEC air.usp_RegisterPayment @id,'449f1e72-c761-5bda-8a62-eab398470137',87.50,'CONFIRMED','CARD','2025-12-08T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '44c86f19-eecb-566d-b805-dca9e18a0906',5,'5B',12,6,1,'2025-12-07T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3dee03d1-6bf5-58ef-bada-bcebe4390b1b',87.50,'CONFIRMED','CARD','2025-12-08T01:00:00';
EXEC air.usp_RegisterPayment @id,'33e6e78b-2983-5136-85c8-a75629d28e0d',87.50,'CONFIRMED','CARD','2025-12-08T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e9c0a3b8-57d2-5f95-a496-2bc2fbfd66e7',5,'2E',134,134,2,'2025-12-07T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a588a6bf-665b-5f5a-a916-216b43de4b7d',78.75,'CONFIRMED','CARD','2025-12-08T00:00:00';
EXEC air.usp_RegisterPayment @id,'fa270fa3-6b36-5fe2-b601-4eef2df8645e',78.75,'CONFIRMED','CARD','2025-12-08T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fa09e789-63fb-5b4c-8099-e7a760dff250',5,'6B',136,136,1,'2025-12-07T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f5ffc3b6-cc4f-5ff6-9b5a-c90f9a217de2',87.50,'CONFIRMED','CARD','2025-12-07T23:00:00';
EXEC air.usp_RegisterPayment @id,'b0514c76-cd12-5146-939a-fceed8afbdbc',87.50,'CONFIRMED','CARD','2025-12-08T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7e9f47e7-355b-5b62-9346-b3bfa3e8ed13',5,'6C',154,5,2,'2025-12-07T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3515be14-d9d8-5c3f-80b8-527e33885631',1.00,'FAILED','CARD','2025-12-07T21:00:00';
EXEC air.usp_RegisterPayment @id,'23203d87-c6de-5c1a-b7b4-ab2764091f82',87.50,'CONFIRMED','CARD','2025-12-07T22:00:00';
EXEC air.usp_RegisterPayment @id,'ba011041-b831-51cc-ba49-042079a5848e',87.50,'CONFIRMED','CARD','2025-12-07T23:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-08T00:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '255acfa7-a718-5d5a-898e-77aaa5c247e3',5,'3A',30,30,1,'2025-12-07T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6f581d9d-ff6e-5ee0-bcf3-e295f7aeee9a',87.50,'CONFIRMED','CARD','2025-12-07T21:00:00';
EXEC air.usp_RegisterPayment @id,'14693ae2-be0e-5711-96c9-8dbdf1e1c9ff',87.50,'CONFIRMED','CARD','2025-12-07T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ce9d16eb-9614-5690-93a8-7c549d41f31d',5,'2A',135,135,2,'2025-12-07T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'96ddcb1e-b90c-5e69-a286-19d475cebd74',78.75,'CONFIRMED','CARD','2025-12-07T20:00:00';
EXEC air.usp_RegisterPayment @id,'fe55b350-68f3-5990-956e-7c8e20a12a79',78.75,'CONFIRMED','CARD','2025-12-07T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e8827242-fca0-58cd-a380-cb16550994cc',5,'6F',93,111,1,'2025-12-07T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d1cca64a-ff42-5146-844b-71ed36f698ff',87.50,'CONFIRMED','CARD','2025-12-07T19:00:00';
EXEC air.usp_RegisterPayment @id,'7f604533-8f75-5478-96ca-e2e8c0cafa24',87.50,'CONFIRMED','CARD','2025-12-07T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8aab0f98-4ffc-50cb-80f2-6317e40d6e5a',5,'4D',152,152,2,'2025-12-07T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bd5ce30d-5e2c-50a5-9215-8e88cd2d297e',87.50,'CONFIRMED','CARD','2025-12-07T18:00:00';
EXEC air.usp_RegisterPayment @id,'e02ec555-f2e1-5c91-b5e6-de3cd116b0ee',87.50,'CONFIRMED','CARD','2025-12-07T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b08f0b94-f4da-5b8e-9030-a287d6e499b9',5,'6A',6,6,1,'2025-12-07T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9c78643a-1c35-5076-bb93-abb6189fa640',87.50,'CONFIRMED','CARD','2025-12-07T17:00:00';
EXEC air.usp_RegisterPayment @id,'eb1dc3e2-9125-5edf-933a-3023c8880dbf',87.50,'CONFIRMED','CARD','2025-12-07T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '96af78ef-eb9a-5707-87ba-91289dc3a066',5,'3C',155,70,2,'2025-12-07T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'17cd3d54-1848-50ac-aad2-972e561cfb2b',1.00,'FAILED','CARD','2025-12-07T15:00:00';
EXEC air.usp_RegisterPayment @id,'2f7eb47f-0135-5e2a-9cc7-6d87958f6f30',78.75,'CONFIRMED','CARD','2025-12-07T16:00:00';
EXEC air.usp_RegisterPayment @id,'dc8994d6-bf73-5575-afc0-df4aeebc72c2',78.75,'CONFIRMED','CARD','2025-12-07T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '502f7c75-0feb-5858-8344-f869b5590c11',5,'2D',197,197,1,'2025-12-07T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'90627781-f954-53ae-a6b1-dd994617e290',87.50,'CONFIRMED','CARD','2025-12-07T15:00:00';
EXEC air.usp_RegisterPayment @id,'b706cba0-d446-553e-ae58-720e78f21a72',87.50,'CONFIRMED','CARD','2025-12-07T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'eb94167f-a864-55bb-ba09-eae3e225f3e7',5,'7B',115,115,2,'2025-12-07T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'846fa645-c8de-5063-adde-ce6a1aa18a01',87.50,'CONFIRMED','CARD','2025-12-07T14:00:00';
EXEC air.usp_RegisterPayment @id,'2ca66c1e-fafa-5f49-beba-a08db35f2cfd',87.50,'CONFIRMED','CARD','2025-12-07T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e30301e6-3170-50f3-9586-7bfd6ee34606',5,'4C',12,167,1,'2025-12-07T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'800bcbc2-20fe-5e87-94ed-d4fbfec6de8b',87.50,'CONFIRMED','CARD','2025-12-07T13:00:00';
EXEC air.usp_RegisterPayment @id,'717a59a1-6c67-5594-a204-e12cddadc484',87.50,'CONFIRMED','CARD','2025-12-07T14:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-07T15:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c1e30d63-cfd2-53d4-b13a-1ab35e6252f9',6,'1A',114,140,2,'2025-12-08T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'38f701a1-d625-558f-8386-cfe78bf317b7',1.00,'FAILED','CARD','2025-12-08T19:00:00';
EXEC air.usp_RegisterPayment @id,'f8901c3a-e617-5b34-8951-37d048689935',213.75,'CONFIRMED','CARD','2025-12-08T20:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-08T22:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd78c5cfd-7116-5038-b811-205bd0361bcb',6,'1B',92,92,1,'2025-12-08T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7fdb4fc1-b09a-50fb-b1ed-78492956a6ad',237.50,'CONFIRMED','CARD','2025-12-08T19:00:00';
EXEC air.usp_RegisterPayment @id,'524cb1a3-6bdd-51d1-9fbc-d2928080c066',237.50,'CONFIRMED','CARD','2025-12-08T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd21cd653-a5df-5e9e-b8e0-8fdc9751dbbb',6,'1D',91,91,2,'2025-12-08T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6276c683-6c29-5535-a408-63efc5d70405',237.50,'CONFIRMED','CARD','2025-12-08T18:00:00';
EXEC air.usp_RegisterPayment @id,'7926da9c-af7f-58a7-8f3c-198f9045bc45',237.50,'CONFIRMED','CARD','2025-12-08T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '765c954a-c264-5b40-bd82-1152edac219d',6,'1C',136,151,1,'2025-12-08T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'82b123e4-05b9-515e-a0dd-feb38fb6ba44',237.50,'CONFIRMED','CARD','2025-12-08T17:00:00';
EXEC air.usp_RegisterPayment @id,'b2f10051-9264-5638-8579-894885d8115a',237.50,'CONFIRMED','CARD','2025-12-08T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1ad21ebd-5830-52af-a103-efb185465bfc',6,'6E',47,47,2,'2025-12-08T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'42e7301f-4ff8-5178-bffe-f52b61f99cb2',85.50,'CONFIRMED','CARD','2025-12-08T16:00:00';
EXEC air.usp_RegisterPayment @id,'dd475444-9767-530c-a08f-e038cc16a8c6',85.50,'CONFIRMED','CARD','2025-12-08T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '544f100b-9e53-5b07-ab3d-2cf6d5b2f8f0',6,'2D',136,136,1,'2025-12-08T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dc40b9f6-aade-5414-b3ae-5b726bf4acee',95.00,'CONFIRMED','CARD','2025-12-08T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1258c642-c5e1-5dbe-96b9-ab72fd5b98f0',6,'3B',4,49,2,'2025-12-08T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f6dc9e8f-02fd-5679-b184-f6955e6f32cd',1.00,'FAILED','CARD','2025-12-08T13:00:00';
EXEC air.usp_RegisterPayment @id,'07ec4b66-9638-5a6e-8619-5c5f2e3347b3',95.00,'CONFIRMED','CARD','2025-12-08T14:00:00';
EXEC air.usp_RegisterPayment @id,'5abf0804-ab0c-576f-8d5d-d64458f50570',95.00,'CONFIRMED','CARD','2025-12-08T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '150de3bc-19bb-583e-8b21-ff7ce3c28ba3',6,'3E',96,96,1,'2025-12-08T11:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '692e53af-3fc6-5748-8427-60d9c8905810',6,'2A',123,123,2,'2025-12-08T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c37af14b-e8af-59b0-bf1c-fb0609e4d57e',85.50,'CONFIRMED','CARD','2025-12-08T12:00:00';
EXEC air.usp_RegisterPayment @id,'ef7935b3-3465-5b78-a05b-d88388f22e96',85.50,'CONFIRMED','CARD','2025-12-08T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2ea18491-4b34-5988-804a-eb84352f882a',6,'6F',197,18,1,'2025-12-08T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'80ed1579-8cde-5262-b6fc-68d8332854ba',95.00,'CONFIRMED','CARD','2025-12-08T11:00:00';
EXEC air.usp_RegisterPayment @id,'4c4ebd80-b93c-5e3e-9e23-5f7192e15ac1',95.00,'CONFIRMED','CARD','2025-12-08T12:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-08T13:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '336d9024-a02f-5dd6-bd1c-d8158eeedfc3',6,'2E',31,31,2,'2025-12-08T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c0994343-b412-50bb-8715-e90e60c3cb84',95.00,'CONFIRMED','CARD','2025-12-08T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '234bfd68-505f-5e86-b9af-a80f97d6586c',6,'6C',117,117,1,'2025-12-08T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d3b9623e-955e-5cee-8a5d-d6bda0c1bab9',95.00,'CONFIRMED','CARD','2025-12-08T09:00:00';
EXEC air.usp_RegisterPayment @id,'3d76791f-0b22-5571-add6-1552f06398b5',95.00,'CONFIRMED','CARD','2025-12-08T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '897e5f36-4a1b-5560-b40d-c36192971426',6,'3C',82,153,2,'2025-12-08T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'975e74e2-b932-5820-9f0d-cea18db48977',1.00,'FAILED','CARD','2025-12-08T07:00:00';
EXEC air.usp_RegisterPayment @id,'2e22538a-3ece-5553-9637-bdb75e5667dc',85.50,'CONFIRMED','CARD','2025-12-08T08:00:00';
EXEC air.usp_RegisterPayment @id,'8b311c56-9528-53aa-8bf0-492374dc3f6b',85.50,'CONFIRMED','CARD','2025-12-08T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c6ef3fb6-59eb-592c-bdd5-5fcfbd37abca',6,'6B',51,51,1,'2025-12-08T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ebffdc04-b951-5252-b761-624010ed46fb',95.00,'CONFIRMED','CARD','2025-12-08T07:00:00';
EXEC air.usp_RegisterPayment @id,'13c3754d-df3c-5cf4-88f1-1b1010324725',95.00,'CONFIRMED','CARD','2025-12-08T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a593352d-36a4-5f85-a209-a57f2cb7e7a9',6,'7C',80,80,2,'2025-12-08T04:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0fcc3741-dbf5-5fcd-a45f-b7035b382034',6,'4E',178,114,1,'2025-12-08T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'037133bf-4c5a-59f4-aaf8-93f20337be88',95.00,'CONFIRMED','CARD','2025-12-08T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '40491707-8c11-5290-b64d-b268f4e12904',6,'2B',2,2,2,'2025-12-08T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'127575bc-7df6-52c2-b412-da4bb0f09331',85.50,'CONFIRMED','CARD','2025-12-08T04:00:00';
EXEC air.usp_RegisterPayment @id,'533d2369-0e19-5be5-8ab5-e0baa41acd2b',85.50,'CONFIRMED','CARD','2025-12-08T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1fd2cb80-71cf-5f39-af24-f45d44645a26',6,'2F',112,112,1,'2025-12-08T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'859bb3aa-491a-52d8-a88e-5353d0a6ae77',95.00,'CONFIRMED','CARD','2025-12-08T03:00:00';
EXEC air.usp_RegisterPayment @id,'f9c34703-669c-5a18-8f41-f890ecf1d26e',95.00,'CONFIRMED','CARD','2025-12-08T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e4a87900-cc23-5d55-a5f4-9837b8c3faf4',6,'5B',177,176,2,'2025-12-08T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'96dded3e-5bb1-50a8-b7f3-900432d75474',1.00,'FAILED','CARD','2025-12-08T01:00:00';
EXEC air.usp_RegisterPayment @id,'2e27a944-7968-5b09-b2db-d9e28ee0da50',95.00,'CONFIRMED','CARD','2025-12-08T02:00:00';
EXEC air.usp_RegisterPayment @id,'663fcde5-aaa2-57c3-b335-cff065259521',95.00,'CONFIRMED','CARD','2025-12-08T03:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-08T04:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fb5de005-351b-5315-b846-89c2e997524f',6,'5E',160,160,1,'2025-12-07T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b9293e81-bd07-5f69-a789-4c7efd4a6792',95.00,'CONFIRMED','CARD','2025-12-08T01:00:00';
EXEC air.usp_RegisterPayment @id,'ecff39ce-d35a-5c23-80cc-d087211d03ec',95.00,'CONFIRMED','CARD','2025-12-08T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b68e29a9-afdf-5bb4-8d3c-fb603c9d700f',6,'6D',29,29,2,'2025-12-07T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'de732c83-38fa-5593-a11b-93fbb78bdddd',85.50,'CONFIRMED','CARD','2025-12-08T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '25b8705d-f68c-5b2a-bafa-e65d5e2fc845',6,'3F',118,125,1,'2025-12-07T21:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7dc67bc6-b785-5b5c-b019-7e4c33227bf9',6,'7F',35,35,2,'2025-12-07T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8b3f9d30-dd87-5d23-9fd5-09fde2a09dea',95.00,'CONFIRMED','CARD','2025-12-07T22:00:00';
EXEC air.usp_RegisterPayment @id,'cbfc7741-9cd1-52dc-ba59-94cc7ef2a2e2',95.00,'CONFIRMED','CARD','2025-12-07T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'af54740d-e25b-51c3-8367-8ebebfbf6d48',6,'4A',197,197,1,'2025-12-07T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'94c0f3ee-c196-51c1-8ebe-f35e8a44154a',95.00,'CONFIRMED','CARD','2025-12-07T21:00:00';
EXEC air.usp_RegisterPayment @id,'03964e64-1f85-5bd8-bcce-c67d6a7ae829',95.00,'CONFIRMED','CARD','2025-12-07T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7d303aeb-541c-5d83-8294-8b7b692fc639',6,'3D',170,83,2,'2025-12-07T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6768ba53-3da9-548b-9784-996ca2dc63bf',1.00,'FAILED','CARD','2025-12-07T19:00:00';
EXEC air.usp_RegisterPayment @id,'6d376d19-5e2e-57b5-b289-1ff62b783287',85.50,'CONFIRMED','CARD','2025-12-07T20:00:00';
EXEC air.usp_RegisterPayment @id,'d610dcec-1762-592a-92bd-d7e9556210cb',85.50,'CONFIRMED','CARD','2025-12-07T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1c061642-cf3f-57e4-9dd3-54d4796fbcfd',6,'5F',10,10,1,'2025-12-07T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b85b37b4-cdcd-5051-bc7a-d3d5ec4adfa4',95.00,'CONFIRMED','CARD','2025-12-07T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e3448f98-e4de-5584-b7a5-f7d89463a0d3',6,'7B',158,158,2,'2025-12-07T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a716e359-069e-57f1-aa95-c9f70341381b',95.00,'CONFIRMED','CARD','2025-12-07T18:00:00';
EXEC air.usp_RegisterPayment @id,'0fca4f99-8a60-56e9-a43b-38e205bf6d2f',95.00,'CONFIRMED','CARD','2025-12-07T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6a26cc51-da42-5925-8cf0-eac02050b531',6,'7E',133,134,1,'2025-12-07T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'227a822c-1327-5553-8057-5c5838b065d8',95.00,'CONFIRMED','CARD','2025-12-07T17:00:00';
EXEC air.usp_RegisterPayment @id,'3c522b3a-c80f-521c-8ff2-d79659e1417c',95.00,'CONFIRMED','CARD','2025-12-07T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-07T19:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0905f86e-c9ae-5add-aafe-924161445673',7,'1B',83,183,2,'2025-12-09T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8bf11d19-53c8-5fda-a550-667f0ed7cea5',1.00,'FAILED','CARD','2025-12-09T07:00:00';
EXEC air.usp_RegisterPayment @id,'b991302b-2cfa-55e7-946b-6d6856e609a1',230.63,'CONFIRMED','CARD','2025-12-09T08:00:00';
EXEC air.usp_RegisterPayment @id,'1ee39982-8dca-53df-bace-51332de0f482',230.62,'CONFIRMED','CARD','2025-12-09T09:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-09T10:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2f9bbe75-6f69-504d-83bc-99daaee129ca',7,'1C',152,152,1,'2025-12-09T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9e4f64db-bbb4-5cfc-ae24-447a52787142',256.25,'CONFIRMED','CARD','2025-12-09T07:00:00';
EXEC air.usp_RegisterPayment @id,'baa3d68e-c1ea-5c1e-aae5-036fad19ae28',256.25,'CONFIRMED','CARD','2025-12-09T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '76817783-019d-5397-a8fd-9fd9c1b1a4f8',7,'1D',18,18,2,'2025-12-09T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3fb9b3da-d434-558e-b278-eb8ecc71a097',256.25,'CONFIRMED','CARD','2025-12-09T06:00:00';
EXEC air.usp_RegisterPayment @id,'df0423a2-536d-5d20-b6b8-5b29c5dbac1b',256.25,'CONFIRMED','CARD','2025-12-09T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '41f4f03b-5362-5130-ad09-d5c2780160c3',7,'1A',139,77,1,'2025-12-09T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bec24709-320b-5db0-a732-d24bdf0e3d45',256.25,'CONFIRMED','CARD','2025-12-09T05:00:00';
EXEC air.usp_RegisterPayment @id,'3b612c45-4f23-5f7e-91d1-01349d33466d',256.25,'CONFIRMED','CARD','2025-12-09T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1c98562b-4d7c-59cd-bcfb-22b8f98c2041',7,'4A',2,2,2,'2025-12-09T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a132e3ca-1b87-5973-a397-7b374d05ffab',92.25,'CONFIRMED','CARD','2025-12-09T04:00:00';
EXEC air.usp_RegisterPayment @id,'0ee082fd-b3a5-5f14-9acf-0618e756488c',92.25,'CONFIRMED','CARD','2025-12-09T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '320ae382-bdfd-5c8f-aace-9e9dff031b45',7,'4E',148,148,1,'2025-12-09T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2f0a57ac-f324-5177-be25-ec613e5d0460',102.50,'CONFIRMED','CARD','2025-12-09T03:00:00';
EXEC air.usp_RegisterPayment @id,'8740f20a-c786-5608-9cbd-67cd73edcf5a',102.50,'CONFIRMED','CARD','2025-12-09T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ee81813a-8cec-5634-b64b-9c1327f7de58',7,'3D',85,136,2,'2025-12-09T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bfdf4edc-805b-5538-a3d0-9bbfa3d720e2',1.00,'FAILED','CARD','2025-12-09T01:00:00';
EXEC air.usp_RegisterPayment @id,'f45ca141-23f8-5e67-8022-638307ac4e58',102.50,'CONFIRMED','CARD','2025-12-09T02:00:00';
EXEC air.usp_RegisterPayment @id,'cc8cd19a-c26a-59d5-a13c-f9e0805cd6d9',102.50,'CONFIRMED','CARD','2025-12-09T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3c8e1131-a5d8-5be1-af5a-672834e68ea5',7,'7D',87,87,1,'2025-12-08T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'350d6cdd-7f15-521b-b62f-39aabf7dec21',102.50,'CONFIRMED','CARD','2025-12-09T01:00:00';
EXEC air.usp_RegisterPayment @id,'58fda452-e99d-5371-a6ac-1006552bba4e',102.50,'CONFIRMED','CARD','2025-12-09T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a4e04cbe-2d0a-5198-a432-9aee08a7d942',7,'2D',182,182,2,'2025-12-08T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'740bccfb-0c8b-5289-b7cd-68859b26df5f',92.25,'CONFIRMED','CARD','2025-12-09T00:00:00';
EXEC air.usp_RegisterPayment @id,'5505f9ed-cff8-5deb-b82f-f6e74f20a2a9',92.25,'CONFIRMED','CARD','2025-12-09T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'aa2a2d4a-a57f-52b3-9a81-0977f0ecb9e4',7,'2E',75,2,1,'2025-12-08T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'94960936-9d82-573f-af53-05db9c698b91',102.50,'CONFIRMED','CARD','2025-12-08T23:00:00';
EXEC air.usp_RegisterPayment @id,'cf0562f9-9eb9-5519-8110-5be0a787a56e',102.50,'CONFIRMED','CARD','2025-12-09T00:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-09T01:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '662010bb-971b-5e3e-a8a8-e0eb59fdc11a',7,'2B',123,123,2,'2025-12-08T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b62a895e-b2d3-5f33-9d8e-2c2b23a85ae2',102.50,'CONFIRMED','CARD','2025-12-08T22:00:00';
EXEC air.usp_RegisterPayment @id,'2e452ef8-08d0-596f-a97d-d18e8c7fc6b7',102.50,'CONFIRMED','CARD','2025-12-08T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9ceabbf7-2cb2-52e1-bc91-ae04335003d3',7,'5F',85,85,1,'2025-12-08T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1920b378-b6ad-5f1d-b937-45e06c545381',102.50,'CONFIRMED','CARD','2025-12-08T21:00:00';
EXEC air.usp_RegisterPayment @id,'24aa93ec-d992-50a6-b735-61a4d8b7ebb2',102.50,'CONFIRMED','CARD','2025-12-08T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ac006977-0599-5e1c-b1ef-c2b5abdf1dac',7,'2F',105,97,2,'2025-12-08T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c7d26dd1-b613-5f49-b966-f1e20f319aea',1.00,'FAILED','CARD','2025-12-08T19:00:00';
EXEC air.usp_RegisterPayment @id,'6b03d293-92ee-5c5a-b182-11792e2cdf55',92.25,'CONFIRMED','CARD','2025-12-08T20:00:00';
EXEC air.usp_RegisterPayment @id,'f7c03dc4-7bd6-5c74-b1ef-e89a0980c837',92.25,'CONFIRMED','CARD','2025-12-08T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8d2046fa-c47d-5c96-8d74-ee410ca85556',7,'3A',83,83,1,'2025-12-08T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6e8faf35-8276-5a56-a72c-11897c517ae9',102.50,'CONFIRMED','CARD','2025-12-08T19:00:00';
EXEC air.usp_RegisterPayment @id,'7dcd281d-1857-5bc7-835d-cdda88403b21',102.50,'CONFIRMED','CARD','2025-12-08T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '989034e0-956f-558f-bc4c-46555c504428',7,'7B',139,139,2,'2025-12-08T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bc6dcf9b-e8f7-5e1b-965b-5ee3b86e3183',102.50,'CONFIRMED','CARD','2025-12-08T18:00:00';
EXEC air.usp_RegisterPayment @id,'090423dc-6dc4-50b9-8451-60e899b4af69',102.50,'CONFIRMED','CARD','2025-12-08T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5b1635fb-3bb8-558d-b4fb-ea2777850693',7,'6E',57,175,1,'2025-12-08T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e29d4dc3-ed1e-5331-a80a-943def8a0717',102.50,'CONFIRMED','CARD','2025-12-08T17:00:00';
EXEC air.usp_RegisterPayment @id,'f36cdd4d-d564-508a-866e-e14f37d018ca',102.50,'CONFIRMED','CARD','2025-12-08T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6cb1455d-fc31-545a-a374-bdbe5fd59a50',7,'5C',167,167,2,'2025-12-08T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bfe424c6-6019-50da-b876-cf95f11f3619',92.25,'CONFIRMED','CARD','2025-12-08T16:00:00';
EXEC air.usp_RegisterPayment @id,'96ac1547-76b8-5264-b4a8-10c788168b28',92.25,'CONFIRMED','CARD','2025-12-08T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9995a1a7-d5b8-5a68-88d9-23c98cacc46f',7,'7F',46,46,1,'2025-12-08T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'105c0f6a-b527-56a1-90ed-5ad0a8059d58',102.50,'CONFIRMED','CARD','2025-12-08T15:00:00';
EXEC air.usp_RegisterPayment @id,'26ab6f4b-f78e-5af2-9272-0ae1bfcd1cc3',102.50,'CONFIRMED','CARD','2025-12-08T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '855567b3-96e9-5bd3-a58d-bc9a7cd4ef64',7,'7C',86,41,2,'2025-12-08T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3557481a-058d-592f-9e38-2892ec05d5ac',1.00,'FAILED','CARD','2025-12-08T13:00:00';
EXEC air.usp_RegisterPayment @id,'532bad52-dd1c-5d45-b825-d560db50cc51',102.50,'CONFIRMED','CARD','2025-12-08T14:00:00';
EXEC air.usp_RegisterPayment @id,'cffc2c5e-f409-52de-a902-317d508a1040',102.50,'CONFIRMED','CARD','2025-12-08T15:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-08T16:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd70f3194-36f2-59b2-9434-d80ab580ed35',7,'3C',93,93,1,'2025-12-08T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'87357f55-3f1b-5af7-bbd7-09554d623f8c',102.50,'CONFIRMED','CARD','2025-12-08T13:00:00';
EXEC air.usp_RegisterPayment @id,'0738a35c-541c-50d4-9d5d-019d2b9856c0',102.50,'CONFIRMED','CARD','2025-12-08T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '868ff878-8b4d-58fb-a7a7-2aca3143838c',7,'7E',18,18,2,'2025-12-08T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9b7bee4f-c082-54ef-87f3-ebc13271252a',92.25,'CONFIRMED','CARD','2025-12-08T12:00:00';
EXEC air.usp_RegisterPayment @id,'ecab903d-c08e-5211-868c-4846f3e684d1',92.25,'CONFIRMED','CARD','2025-12-08T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '75a8239f-2b4f-5fd4-9b0a-ce783229c57e',7,'4B',10,10,1,'2025-12-08T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0fbfbec2-091e-55e2-8e75-7ef0e4c62ca8',102.50,'CONFIRMED','CARD','2025-12-08T11:00:00';
EXEC air.usp_RegisterPayment @id,'7cbfb74f-2c15-5cd8-80c9-df9846fd77f7',102.50,'CONFIRMED','CARD','2025-12-08T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ab9440f1-6683-5c14-a755-993e31dbfa64',7,'4C',162,162,2,'2025-12-08T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6ef31e2d-3b2b-58e3-99b8-c7d0ab522007',102.50,'CONFIRMED','CARD','2025-12-08T10:00:00';
EXEC air.usp_RegisterPayment @id,'eb7a1ea9-6bfa-58ac-8490-cd6e81ce9059',102.50,'CONFIRMED','CARD','2025-12-08T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '66588cb2-35f2-59d5-9e90-68d4342cb922',7,'2A',71,71,1,'2025-12-08T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6b4951c1-c4a7-5b9a-a668-6264bcfc47de',102.50,'CONFIRMED','CARD','2025-12-08T09:00:00';
EXEC air.usp_RegisterPayment @id,'89e8a666-f71d-5b36-b6e4-a544c6654bd3',102.50,'CONFIRMED','CARD','2025-12-08T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7582c194-406f-5186-95fd-0a2c5e352a8d',7,'6D',7,114,2,'2025-12-08T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bcacd82d-4766-5ff4-945f-b06917523b5a',1.00,'FAILED','CARD','2025-12-08T07:00:00';
EXEC air.usp_RegisterPayment @id,'a75524dd-b43e-5604-b6cf-18ab7430ebd5',92.25,'CONFIRMED','CARD','2025-12-08T08:00:00';
EXEC air.usp_RegisterPayment @id,'5896b64b-d5e2-5a38-9ff4-efc20e6cf26a',92.25,'CONFIRMED','CARD','2025-12-08T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3e3712ca-25e3-51c1-a752-8b535db6ad21',7,'5B',196,196,1,'2025-12-08T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'65c20650-6bbc-5b2e-96d6-5fb68d3fcd7f',102.50,'CONFIRMED','CARD','2025-12-08T07:00:00';
EXEC air.usp_RegisterPayment @id,'c769ba11-413a-5a63-a38c-fac579bb7690',102.50,'CONFIRMED','CARD','2025-12-08T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0c328744-e465-5f36-a53f-cdb03a318969',7,'5E',38,38,2,'2025-12-08T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a6eb777d-ac2c-5b57-b934-5a45d33b2e15',102.50,'CONFIRMED','CARD','2025-12-08T06:00:00';
EXEC air.usp_RegisterPayment @id,'b11bc53d-2b9c-5975-8dd7-534ed320d788',102.50,'CONFIRMED','CARD','2025-12-08T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '90a2e12e-4cf2-5b12-8a94-a8fd51eeaf2a',7,'7A',3,60,1,'2025-12-08T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ddb4da5e-59b9-5dc2-afee-ae1558dcbbab',102.50,'CONFIRMED','CARD','2025-12-08T05:00:00';
EXEC air.usp_RegisterPayment @id,'dac7a8af-e17d-5aa4-b3c2-1bfd89d1e4f1',102.50,'CONFIRMED','CARD','2025-12-08T06:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-08T07:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '777127c5-4e55-5e3d-b328-f633220edbf8',8,'1D',93,41,2,'2025-12-09T19:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7640b2f0-56fc-5b03-83df-bb476efe41d9',1.00,'FAILED','CARD','2025-12-09T20:00:00';
EXEC air.usp_RegisterPayment @id,'95c5232b-d1e9-5c8a-90f7-4d20a8986518',247.50,'CONFIRMED','CARD','2025-12-09T21:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-09T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '283339a2-f892-5e6c-9795-17a244aa42ab',8,'1C',131,131,1,'2025-12-09T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e80a2d1a-31e6-574a-adeb-799c23b013b6',275.00,'CONFIRMED','CARD','2025-12-09T20:00:00';
EXEC air.usp_RegisterPayment @id,'714369db-5907-5c32-a13a-8e017dce2bac',275.00,'CONFIRMED','CARD','2025-12-09T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3bbcfe25-f9ae-53fa-aff7-a8675cb26282',8,'1E',12,12,2,'2025-12-09T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4470871c-9ae3-5422-968d-3fa52cabbcf5',275.00,'CONFIRMED','CARD','2025-12-09T19:00:00';
EXEC air.usp_RegisterPayment @id,'c8657535-8710-53f6-bd53-5b1139e700ee',275.00,'CONFIRMED','CARD','2025-12-09T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c28c2544-746c-562b-9585-6b8493fd9674',8,'1B',126,121,1,'2025-12-09T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'104b730d-7f6f-5a19-add0-0a4164e9d6d5',275.00,'CONFIRMED','CARD','2025-12-09T18:00:00';
EXEC air.usp_RegisterPayment @id,'78d7ec46-6c5c-58b3-827e-733b57bad93d',275.00,'CONFIRMED','CARD','2025-12-09T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '745c76c6-9a5b-50a1-8801-7fd5b5bd9164',8,'2F',190,190,2,'2025-12-09T15:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6e7cfa3f-d593-5091-8bd3-cdb38255dd37',99.00,'CONFIRMED','CARD','2025-12-09T17:00:00';
EXEC air.usp_RegisterPayment @id,'2712042e-28b2-5060-845b-ba3c79d1dd0e',99.00,'CONFIRMED','CARD','2025-12-09T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e374a05a-5aae-5fbc-aa26-58eb367d6b29',8,'2D',116,116,1,'2025-12-09T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'551740a6-f366-58ba-834e-a699be902f3c',110.00,'CONFIRMED','CARD','2025-12-09T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '79c3d93e-c0c2-54dd-ac99-836b101a5450',8,'5F',114,128,2,'2025-12-09T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'22a54463-0c78-5da5-8c45-57c67ce8ec2d',1.00,'FAILED','CARD','2025-12-09T14:00:00';
EXEC air.usp_RegisterPayment @id,'86b5b7be-8e32-5313-b087-75d4f6cb8e5f',110.00,'CONFIRMED','CARD','2025-12-09T15:00:00';
EXEC air.usp_RegisterPayment @id,'f8ccbc3d-24f4-52fb-816b-692cc153bae6',110.00,'CONFIRMED','CARD','2025-12-09T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4d0734f4-048f-5ecf-95ce-ee8bedbc0b13',8,'7C',58,58,1,'2025-12-09T12:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '45dad07a-cc98-5cb0-ae3a-804cb54a7255',8,'4B',122,122,2,'2025-12-09T11:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b5e05a73-c610-5c90-a6be-505595bbb797',99.00,'CONFIRMED','CARD','2025-12-09T13:00:00';
EXEC air.usp_RegisterPayment @id,'ff698c7a-c05b-5293-b2f7-5e4111ea14ea',99.00,'CONFIRMED','CARD','2025-12-09T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '567ee320-7242-5407-bc82-e49ba8ac40ee',8,'2C',146,135,1,'2025-12-09T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e383bb7d-63fd-59a1-98f3-885384307891',110.00,'CONFIRMED','CARD','2025-12-09T12:00:00';
EXEC air.usp_RegisterPayment @id,'4830407a-9dbb-5233-830c-6678b6235588',110.00,'CONFIRMED','CARD','2025-12-09T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-09T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0be18008-0757-5004-bcc1-33cc7cb194e0',8,'4D',146,146,2,'2025-12-09T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f786d3d1-cf2a-5ec6-9957-29122d41dcaa',110.00,'CONFIRMED','CARD','2025-12-09T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2223b943-087a-5208-be2d-07b1f57f7f9d',8,'7D',3,3,1,'2025-12-09T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'97d1995c-039c-5dfe-bce7-e5eb42b7199d',110.00,'CONFIRMED','CARD','2025-12-09T10:00:00';
EXEC air.usp_RegisterPayment @id,'29fcc2c1-0727-575d-ad67-0eb52bc2132b',110.00,'CONFIRMED','CARD','2025-12-09T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e7644025-44c4-571b-8e5b-c71c800dca30',8,'3D',183,52,2,'2025-12-09T07:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e1fc9177-8516-5ffc-98bd-b2fc1b20aef0',1.00,'FAILED','CARD','2025-12-09T08:00:00';
EXEC air.usp_RegisterPayment @id,'2f3a1727-16d7-56ff-87aa-fbe9318d3d05',99.00,'CONFIRMED','CARD','2025-12-09T09:00:00';
EXEC air.usp_RegisterPayment @id,'281c9e51-e2b8-5236-b0e2-657aeeb7248b',99.00,'CONFIRMED','CARD','2025-12-09T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5a225ed8-155c-5f76-ac61-62a530269287',8,'3B',50,50,1,'2025-12-09T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8c9800d2-ec65-5702-9908-f951ca1f6b51',110.00,'CONFIRMED','CARD','2025-12-09T08:00:00';
EXEC air.usp_RegisterPayment @id,'4811ecde-a07b-5b37-8e49-62ff0981e2b8',110.00,'CONFIRMED','CARD','2025-12-09T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e9a0f9df-5806-5905-8b24-bacfe40f42be',8,'7B',99,99,2,'2025-12-09T05:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b79120a5-f250-520f-ad88-6909b8d0760a',8,'2E',142,109,1,'2025-12-09T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'385d4c0f-9bdf-53ab-bf9b-0982464e4ced',110.00,'CONFIRMED','CARD','2025-12-09T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ce9a4fa3-7ca7-56d1-874b-7e6efd250521',8,'4F',156,156,2,'2025-12-09T03:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f8228e9c-1ee2-5448-b5d3-ea6e8153d94f',99.00,'CONFIRMED','CARD','2025-12-09T05:00:00';
EXEC air.usp_RegisterPayment @id,'c7738dff-cc22-5b3b-a4f6-7bfccaa6776c',99.00,'CONFIRMED','CARD','2025-12-09T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2233c8c3-4b8f-58b6-8e46-0364caf5c4c1',8,'2B',61,61,1,'2025-12-09T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fbdb88e4-775e-5a51-a742-c1318f0d2be8',110.00,'CONFIRMED','CARD','2025-12-09T04:00:00';
EXEC air.usp_RegisterPayment @id,'a24db569-e1bc-5e7a-9b39-30cb62fd48ed',110.00,'CONFIRMED','CARD','2025-12-09T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fc129700-a267-5304-be0e-e86329ecd9e9',8,'6D',115,117,2,'2025-12-09T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2767001a-9322-5274-a95e-460464f703b7',1.00,'FAILED','CARD','2025-12-09T02:00:00';
EXEC air.usp_RegisterPayment @id,'ec778c10-6915-575e-86e9-dd2536194b4e',110.00,'CONFIRMED','CARD','2025-12-09T03:00:00';
EXEC air.usp_RegisterPayment @id,'0124f0c2-18ac-59d7-9ffd-50e15df0ed54',110.00,'CONFIRMED','CARD','2025-12-09T04:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-09T05:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0ddd2326-1982-5a18-a6da-28c1d062731d',8,'7A',194,194,1,'2025-12-09T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5e66d029-352b-5c86-a9c0-560ea81436e8',110.00,'CONFIRMED','CARD','2025-12-09T02:00:00';
EXEC air.usp_RegisterPayment @id,'64ed88ab-6259-5f56-8609-3eebca962854',110.00,'CONFIRMED','CARD','2025-12-09T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'aef3c1e0-9da0-5a75-920f-b39c254e279b',8,'4A',167,167,2,'2025-12-08T23:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ee1cb19d-50dd-5c42-916d-0db6bc741bf7',99.00,'CONFIRMED','CARD','2025-12-09T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e75bff8f-6e6e-59c5-a9e1-6e6ca2f34685',8,'5A',177,127,1,'2025-12-08T22:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd72fa99b-383e-5f87-80fb-50a3ddf952b7',8,'5E',163,163,2,'2025-12-08T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'edf9d895-cde1-57fa-9f76-8986088baaf3',110.00,'CONFIRMED','CARD','2025-12-08T23:00:00';
EXEC air.usp_RegisterPayment @id,'21feb861-b58c-5416-b34a-ed955f7879fe',110.00,'CONFIRMED','CARD','2025-12-09T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e56ae76d-fd5f-514c-a877-f81a76582ffe',8,'5C',17,17,1,'2025-12-08T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d2a1c626-763e-5102-9a0d-85bf9ae3ce17',110.00,'CONFIRMED','CARD','2025-12-08T22:00:00';
EXEC air.usp_RegisterPayment @id,'c6384325-9f85-5f22-9a01-8b9231d0edcc',110.00,'CONFIRMED','CARD','2025-12-08T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0d2f4e1c-476f-52a8-8809-d53df9f3838a',8,'7E',184,123,2,'2025-12-08T19:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3b09593f-25c8-5a06-9b47-6009722c5d0c',1.00,'FAILED','CARD','2025-12-08T20:00:00';
EXEC air.usp_RegisterPayment @id,'936697cf-9a46-5357-9c8b-03e296be0f06',99.00,'CONFIRMED','CARD','2025-12-08T21:00:00';
EXEC air.usp_RegisterPayment @id,'4e92fa3d-fe14-5588-837d-37128983153a',99.00,'CONFIRMED','CARD','2025-12-08T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2cecee33-44fd-54d9-a310-8894b0741ccb',8,'3A',103,103,1,'2025-12-08T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5c010911-d86a-579a-8a30-54807c0e5513',110.00,'CONFIRMED','CARD','2025-12-08T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2e670e50-dc8f-5a5b-8a40-7c0b19057849',8,'4E',25,25,2,'2025-12-08T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'741c3ad3-ae13-5ff3-b7b6-be4a40216a95',110.00,'CONFIRMED','CARD','2025-12-08T19:00:00';
EXEC air.usp_RegisterPayment @id,'bba846a5-e23a-578c-aaa6-27de1c04fae4',110.00,'CONFIRMED','CARD','2025-12-08T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '809f38e6-6814-5565-b43b-2c28025a3ddf',8,'3E',38,71,1,'2025-12-08T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e3d1d1e9-d00a-5cff-9d8d-844c87f4b649',110.00,'CONFIRMED','CARD','2025-12-08T18:00:00';
EXEC air.usp_RegisterPayment @id,'bfdb0b1b-bb2d-5712-88e4-30fdd7cce937',110.00,'CONFIRMED','CARD','2025-12-08T19:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-08T20:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '387e4271-8649-5bc3-a28b-b98174f27871',9,'1F',167,130,2,'2025-12-13T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2eaee333-3777-51e3-90a1-ad557a3392ea',1.00,'FAILED','CARD','2025-12-13T14:00:00';
EXEC air.usp_RegisterPayment @id,'34b984a5-cea8-5cfc-89ac-5c25d51c3069',129.38,'CONFIRMED','CARD','2025-12-13T15:00:00';
EXEC air.usp_RegisterPayment @id,'215a08c7-4942-53ff-8f80-b7ebc11197b5',129.37,'CONFIRMED','CARD','2025-12-13T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-13T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0b832767-a007-5314-929e-2aab941fe56e',9,'1E',36,36,1,'2025-12-13T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3ecce783-e7cf-5616-b7cc-54772926a4cf',143.75,'CONFIRMED','CARD','2025-12-13T14:00:00';
EXEC air.usp_RegisterPayment @id,'965ae33e-90ff-548b-bfa9-b6b16d05ad3b',143.75,'CONFIRMED','CARD','2025-12-13T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ba2689fd-fb6a-56ec-bb54-3cdf418d2305',9,'1C',13,13,2,'2025-12-13T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cbf81c50-130f-5d28-8c8f-f73ba80ee719',143.75,'CONFIRMED','CARD','2025-12-13T13:00:00';
EXEC air.usp_RegisterPayment @id,'e1fe0bce-5252-5743-bba9-8424587eb8b6',143.75,'CONFIRMED','CARD','2025-12-13T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '63b0e6e5-9e03-5f89-95f9-8d790a21afbb',9,'1D',59,29,1,'2025-12-13T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5af8a5ce-d44c-5754-8224-428a51afa5c7',143.75,'CONFIRMED','CARD','2025-12-13T12:00:00';
EXEC air.usp_RegisterPayment @id,'43550261-b491-5fc3-8648-868804a7cf7b',143.75,'CONFIRMED','CARD','2025-12-13T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e9a1b331-6b9c-59cc-a047-bd81f7d42130',9,'3C',115,115,2,'2025-12-13T09:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fd39e4ff-6b0f-55f8-bc80-f2d9a710f67f',51.75,'CONFIRMED','CARD','2025-12-13T11:00:00';
EXEC air.usp_RegisterPayment @id,'133a00b0-256f-587a-a069-890a2a0fcd70',51.75,'CONFIRMED','CARD','2025-12-13T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7d4b9ae8-d8b3-5545-a3f6-9accf66ef2d1',9,'3E',18,18,1,'2025-12-13T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dc20cf23-cfc7-5908-bd8a-352d099f0e5a',57.50,'CONFIRMED','CARD','2025-12-13T10:00:00';
EXEC air.usp_RegisterPayment @id,'a08232f8-bf24-5fb8-b9a3-23424b28298c',57.50,'CONFIRMED','CARD','2025-12-13T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6f252151-1e9d-5861-8bbe-bc6f9d4c8bd8',9,'2E',132,167,2,'2025-12-13T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5d239b24-7175-5424-b95a-81f8eebd9456',1.00,'FAILED','CARD','2025-12-13T08:00:00';
EXEC air.usp_RegisterPayment @id,'4b23c089-001e-5157-8697-c93563c4f0c1',57.50,'CONFIRMED','CARD','2025-12-13T09:00:00';
EXEC air.usp_RegisterPayment @id,'20caaac8-cc49-5c9d-8627-11b0927bd9c4',57.50,'CONFIRMED','CARD','2025-12-13T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3ad5b30c-2c68-55c6-98c8-aafd3172da3a',9,'7C',147,147,1,'2025-12-13T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'89479e16-81f9-56ee-b87e-608d0ea2b710',57.50,'CONFIRMED','CARD','2025-12-13T08:00:00';
EXEC air.usp_RegisterPayment @id,'678d6cf4-b5f1-5eb0-b610-770e665940ef',57.50,'CONFIRMED','CARD','2025-12-13T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b7c41d29-4601-5b62-80c5-dae9d6e93d19',9,'4B',170,170,2,'2025-12-13T05:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1152e532-4081-5f51-8d08-b7e2b70530b8',51.75,'CONFIRMED','CARD','2025-12-13T07:00:00';
EXEC air.usp_RegisterPayment @id,'c365a7f5-d1de-523e-b8b5-ee8ab96fe391',51.75,'CONFIRMED','CARD','2025-12-13T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '67b33667-3f69-5732-94e5-40a60e7e9855',9,'6B',5,119,1,'2025-12-13T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'48190ec7-ba2c-5e9d-aac0-5ee4345731e1',57.50,'CONFIRMED','CARD','2025-12-13T06:00:00';
EXEC air.usp_RegisterPayment @id,'463c0dd9-4392-5a5a-8c24-8a6d6f57d50f',57.50,'CONFIRMED','CARD','2025-12-13T07:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-13T08:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9ad18248-9b19-5025-9bac-40db14e6a4dd',9,'2A',105,105,2,'2025-12-13T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'56e88c6b-9c66-5fdc-8d22-7c53dcc79516',57.50,'CONFIRMED','CARD','2025-12-13T05:00:00';
EXEC air.usp_RegisterPayment @id,'63056eb7-521d-50b2-987d-f95b0fede4e5',57.50,'CONFIRMED','CARD','2025-12-13T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6ce7c550-5b08-55de-825a-1a64d28051de',9,'2C',41,41,1,'2025-12-13T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d7b3e78f-e264-5ae7-9964-b77b019dd439',57.50,'CONFIRMED','CARD','2025-12-13T04:00:00';
EXEC air.usp_RegisterPayment @id,'f8ff6773-d81b-517f-8d84-59c7eaea488a',57.50,'CONFIRMED','CARD','2025-12-13T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c75f26dd-b994-5e07-a714-fd93e936eb58',9,'6D',6,108,2,'2025-12-13T01:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0cb3618e-e471-5a9c-99e1-d3463a1ffe60',1.00,'FAILED','CARD','2025-12-13T02:00:00';
EXEC air.usp_RegisterPayment @id,'b7f50839-e2b7-5f54-a7d0-d59dc364a623',51.75,'CONFIRMED','CARD','2025-12-13T03:00:00';
EXEC air.usp_RegisterPayment @id,'ce3c8cd2-b690-5659-91a8-3228f7b0ed21',51.75,'CONFIRMED','CARD','2025-12-13T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b177c292-896a-5e5f-aa6b-8f6240120600',9,'3A',79,79,1,'2025-12-13T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3db341ad-b71c-592c-9f9a-3b30ad4ba977',57.50,'CONFIRMED','CARD','2025-12-13T02:00:00';
EXEC air.usp_RegisterPayment @id,'0429f99e-1edf-5e36-af6e-2edadbbd7611',57.50,'CONFIRMED','CARD','2025-12-13T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '43fc85e4-6cc9-5734-8f1d-e343745df3d9',9,'4E',51,51,2,'2025-12-12T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'78c6c900-aa48-5981-8d84-d55e4f445278',57.50,'CONFIRMED','CARD','2025-12-13T01:00:00';
EXEC air.usp_RegisterPayment @id,'baafa74a-401c-597d-9bd2-9d642aab687a',57.50,'CONFIRMED','CARD','2025-12-13T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b3c09db4-35b4-5da7-b3fd-1a747c4a736b',9,'5E',21,118,1,'2025-12-12T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f0d4e4ab-564c-5e69-bd68-fba8b234d6f8',57.50,'CONFIRMED','CARD','2025-12-13T00:00:00';
EXEC air.usp_RegisterPayment @id,'28a79341-8451-5a0e-9b64-a12301693e4f',57.50,'CONFIRMED','CARD','2025-12-13T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0b3d2ba4-ec38-5d89-a93e-44d1ae1f2ef4',9,'5D',170,170,2,'2025-12-12T21:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'db1f24ae-db13-563a-8eee-4962d1abee48',51.75,'CONFIRMED','CARD','2025-12-12T23:00:00';
EXEC air.usp_RegisterPayment @id,'c5ffa37e-babd-5cdc-a7a6-22a7e6f4d9e5',51.75,'CONFIRMED','CARD','2025-12-13T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ddcf2797-a0f8-59ce-aec3-838ed7084d89',9,'3B',36,36,1,'2025-12-12T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1324229c-d4d4-536d-af8d-c0781d7fc1a0',57.50,'CONFIRMED','CARD','2025-12-12T22:00:00';
EXEC air.usp_RegisterPayment @id,'43be6278-aa40-547f-8376-dd583bd2704d',57.50,'CONFIRMED','CARD','2025-12-12T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '30e0412b-9f25-58b3-9cc6-08862e540913',9,'5B',34,187,2,'2025-12-12T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4c86d13e-7a74-51a0-b04a-0b6fbc734cf4',1.00,'FAILED','CARD','2025-12-12T20:00:00';
EXEC air.usp_RegisterPayment @id,'200b436e-a415-54db-9ebe-f68231eb4b78',57.50,'CONFIRMED','CARD','2025-12-12T21:00:00';
EXEC air.usp_RegisterPayment @id,'8340dc9c-a523-5987-a8af-3409880b0f14',57.50,'CONFIRMED','CARD','2025-12-12T22:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-12T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '775f1b0a-7b34-5012-bed2-fe5ec6f513bb',9,'4D',176,176,1,'2025-12-12T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f26f370e-dd3d-5d14-81ef-f286013f465e',57.50,'CONFIRMED','CARD','2025-12-12T20:00:00';
EXEC air.usp_RegisterPayment @id,'db68337f-e671-54bd-a3d9-bfb59e64819a',57.50,'CONFIRMED','CARD','2025-12-12T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3224d81a-986e-5952-89da-41ea5200ab34',9,'7F',55,55,2,'2025-12-12T17:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4e9238e2-f98a-54f0-952c-af8d7855d2f8',51.75,'CONFIRMED','CARD','2025-12-12T19:00:00';
EXEC air.usp_RegisterPayment @id,'1f95f10a-ca96-51f4-88a9-a72a1d131bfa',51.75,'CONFIRMED','CARD','2025-12-12T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2f1e1376-ae25-5ea7-bd75-ddf467f78e94',9,'5F',107,13,1,'2025-12-12T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d1662472-eca9-517a-92fa-e4d8aeaceda7',57.50,'CONFIRMED','CARD','2025-12-12T18:00:00';
EXEC air.usp_RegisterPayment @id,'a48d7790-e5d5-5537-aa77-13eab66cc018',57.50,'CONFIRMED','CARD','2025-12-12T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c6259920-5ce7-5e38-99f2-34a1b26f202c',9,'7B',147,147,2,'2025-12-12T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0957b3d6-fcad-501b-aa9a-17631688f575',57.50,'CONFIRMED','CARD','2025-12-12T17:00:00';
EXEC air.usp_RegisterPayment @id,'c7057098-46d5-5c32-afdb-82ba8115506f',57.50,'CONFIRMED','CARD','2025-12-12T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '91c843d1-828d-57da-8b8c-28b1d6ff2de7',9,'7A',162,162,1,'2025-12-12T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0caeb956-55e8-5434-9f48-c80d7f1ff868',57.50,'CONFIRMED','CARD','2025-12-12T16:00:00';
EXEC air.usp_RegisterPayment @id,'2d91faec-a581-5a55-843e-827f113cbd8d',57.50,'CONFIRMED','CARD','2025-12-12T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9ceb8f15-e405-54db-a11a-89a49b6c446b',9,'6C',34,99,2,'2025-12-12T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'94df225c-6d4d-5655-b0e8-f80fd6396602',1.00,'FAILED','CARD','2025-12-12T14:00:00';
EXEC air.usp_RegisterPayment @id,'0274e58d-2695-578f-a6f3-bfb6076f1822',51.75,'CONFIRMED','CARD','2025-12-12T15:00:00';
EXEC air.usp_RegisterPayment @id,'25b3ff42-765f-595e-bbaf-74b8485c3f5b',51.75,'CONFIRMED','CARD','2025-12-12T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ded01e9a-156f-5c0c-a071-b2c820aad53e',9,'6E',187,187,1,'2025-12-12T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e3dfaa88-aeb4-590e-904b-83bf725c6a99',57.50,'CONFIRMED','CARD','2025-12-12T14:00:00';
EXEC air.usp_RegisterPayment @id,'19fa5174-898f-513b-97e7-b4cd314a8fa6',57.50,'CONFIRMED','CARD','2025-12-12T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '54c9cf63-3f71-5a1f-bdf0-e41fcf254b52',9,'5A',16,16,2,'2025-12-12T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3ab9978f-5285-5f8e-a90d-287bd7dd2e43',57.50,'CONFIRMED','CARD','2025-12-12T13:00:00';
EXEC air.usp_RegisterPayment @id,'d43e6155-ae75-57ff-a6ce-6a425fccb4e0',57.50,'CONFIRMED','CARD','2025-12-12T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '73a03087-8977-55c0-b784-36eefc3d9d28',9,'4F',92,16,1,'2025-12-12T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ce818594-279c-5608-8484-d967d2f0d82b',57.50,'CONFIRMED','CARD','2025-12-12T12:00:00';
EXEC air.usp_RegisterPayment @id,'6855ba6b-6a07-53f9-bd83-0c9f36a698f4',57.50,'CONFIRMED','CARD','2025-12-12T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-12T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f074f8f9-8f01-56fd-a159-74b344658eee',10,'1B',18,118,2,'2025-12-13T16:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'03f70ccc-1337-5d20-944d-b68e13b06a19',1.00,'FAILED','CARD','2025-12-13T17:00:00';
EXEC air.usp_RegisterPayment @id,'c425dea9-b5c3-5a68-8409-5cdd4bd543fd',146.25,'CONFIRMED','CARD','2025-12-13T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-13T20:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5a5050a8-77e4-5b3c-a96a-91d8a1001589',10,'1A',38,38,1,'2025-12-13T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'44dc2c9d-fb8c-548c-b27e-9445bc106ab0',162.50,'CONFIRMED','CARD','2025-12-13T17:00:00';
EXEC air.usp_RegisterPayment @id,'7e7044ae-94dd-5e0c-a24b-82e997d8b786',162.50,'CONFIRMED','CARD','2025-12-13T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b1e1d6f7-8c01-5496-aca3-1d81c66c237e',10,'1F',196,196,2,'2025-12-13T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ab44a3e4-e93d-59e3-950f-f44abe73339d',162.50,'CONFIRMED','CARD','2025-12-13T16:00:00';
EXEC air.usp_RegisterPayment @id,'8cf76b4f-d879-5ab8-b873-d31250b11525',162.50,'CONFIRMED','CARD','2025-12-13T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '28efc04e-ab67-5c6b-9b12-dde8a2499f82',10,'1D',40,81,1,'2025-12-13T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1d30936c-6a0a-58e4-ad3b-edd093c0d555',162.50,'CONFIRMED','CARD','2025-12-13T15:00:00';
EXEC air.usp_RegisterPayment @id,'22352985-5d97-5b62-83e2-1a55e7fa501b',162.50,'CONFIRMED','CARD','2025-12-13T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1f156df6-5174-5370-b545-4e2885cd9001',10,'2D',163,163,2,'2025-12-13T12:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4bef2fce-7e40-5109-bf4a-9e73f01b5d11',58.50,'CONFIRMED','CARD','2025-12-13T14:00:00';
EXEC air.usp_RegisterPayment @id,'ad2854b5-cf41-5c5a-808b-19b6f1dcc03f',58.50,'CONFIRMED','CARD','2025-12-13T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '11825dd2-5a4b-54df-8670-84fa86464182',10,'4F',1,1,1,'2025-12-13T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'66239760-5210-54f1-8e3c-c856e4b2839a',65.00,'CONFIRMED','CARD','2025-12-13T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '375aff03-1361-5e6e-8896-0e3bd15aff95',10,'7F',5,80,2,'2025-12-13T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2dfc57e6-7fbf-5342-97e0-2845556595f3',1.00,'FAILED','CARD','2025-12-13T11:00:00';
EXEC air.usp_RegisterPayment @id,'ea2346d8-02ac-507b-99db-11b9c114d306',65.00,'CONFIRMED','CARD','2025-12-13T12:00:00';
EXEC air.usp_RegisterPayment @id,'9ae2d1b6-b653-52e6-9cf8-71d4d7d133f6',65.00,'CONFIRMED','CARD','2025-12-13T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f3e57d07-56fc-5365-bb7e-79468ccf4090',10,'6C',14,14,1,'2025-12-13T09:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3f9dbd11-ef09-5733-afb9-9ee1dca2b24f',10,'2B',39,39,2,'2025-12-13T08:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e4c264a5-3986-5a39-818a-0b99e4562896',58.50,'CONFIRMED','CARD','2025-12-13T10:00:00';
EXEC air.usp_RegisterPayment @id,'b9e8ae5b-a3d6-5ec7-beb9-8ce3c22fc889',58.50,'CONFIRMED','CARD','2025-12-13T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cc96da92-567a-51eb-8ce0-4d941271ee63',10,'7B',40,137,1,'2025-12-13T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8746169b-0997-5a7d-ad1a-dc270379b927',65.00,'CONFIRMED','CARD','2025-12-13T09:00:00';
EXEC air.usp_RegisterPayment @id,'e98db001-b9cb-5210-80a4-3c3f5b5348b8',65.00,'CONFIRMED','CARD','2025-12-13T10:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-13T11:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8234b3ab-1fa2-5f47-8e5c-0af6f65e676b',10,'3D',47,47,2,'2025-12-13T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bb1c25ae-4996-59a0-a4d8-32c3d3a3b004',65.00,'CONFIRMED','CARD','2025-12-13T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd52adad2-59dc-5442-9660-1050e94828b2',10,'7C',148,148,1,'2025-12-13T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'31b6ce59-ffcc-550f-b8ff-160d900c9f00',65.00,'CONFIRMED','CARD','2025-12-13T07:00:00';
EXEC air.usp_RegisterPayment @id,'8e2a8dbd-e7c3-519e-be28-81b13a9b86b4',65.00,'CONFIRMED','CARD','2025-12-13T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c9852093-cee6-5608-a2a8-d6be10c51808',10,'6B',122,114,2,'2025-12-13T04:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5d2d04a4-dc11-56b1-beb0-7f2af0ccf50f',1.00,'FAILED','CARD','2025-12-13T05:00:00';
EXEC air.usp_RegisterPayment @id,'2d110445-d834-5447-af6c-86339eeda831',58.50,'CONFIRMED','CARD','2025-12-13T06:00:00';
EXEC air.usp_RegisterPayment @id,'dd736051-0818-5344-86a9-edd0f7f7de3d',58.50,'CONFIRMED','CARD','2025-12-13T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8aee521e-8ad9-5e53-9572-09c63a99be1a',10,'6F',173,173,1,'2025-12-13T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e313bf8d-4884-5191-840a-2e4a1d5f4afe',65.00,'CONFIRMED','CARD','2025-12-13T05:00:00';
EXEC air.usp_RegisterPayment @id,'d332de86-c848-50a0-860d-47048cfe5c07',65.00,'CONFIRMED','CARD','2025-12-13T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '44df409f-14ff-50d4-881f-57e18353f093',10,'7D',172,172,2,'2025-12-13T02:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a58cc241-675b-5bca-a3e5-0173d675f175',10,'2F',124,89,1,'2025-12-13T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'403f38cc-790d-5b3c-98e4-c57e7db01590',65.00,'CONFIRMED','CARD','2025-12-13T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ef5eb4a7-8744-513d-a671-c1b2f9fd55e3',10,'6A',102,102,2,'2025-12-13T00:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'65205789-152c-5cd1-8fdd-877b9c51948a',58.50,'CONFIRMED','CARD','2025-12-13T02:00:00';
EXEC air.usp_RegisterPayment @id,'168b6d7e-cba7-552f-811e-620a0b7eeda6',58.50,'CONFIRMED','CARD','2025-12-13T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '288eac84-96d4-5780-9d41-c2ebca642ccf',10,'5E',115,115,1,'2025-12-12T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e1a381eb-b03d-5ab9-bd14-e8c98df4fd3b',65.00,'CONFIRMED','CARD','2025-12-13T01:00:00';
EXEC air.usp_RegisterPayment @id,'7433c151-0329-5465-bd5d-b37d0b641040',65.00,'CONFIRMED','CARD','2025-12-13T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd505c6fb-9381-585e-9041-3413936e9339',10,'2E',163,75,2,'2025-12-12T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f3a6410d-3ba5-5f20-ad2e-21c3615c36ee',1.00,'FAILED','CARD','2025-12-12T23:00:00';
EXEC air.usp_RegisterPayment @id,'a68f9c76-0831-561a-b907-15aa41920133',65.00,'CONFIRMED','CARD','2025-12-13T00:00:00';
EXEC air.usp_RegisterPayment @id,'bfccccb4-f52d-5fa6-b948-db0b9eba60fd',65.00,'CONFIRMED','CARD','2025-12-13T01:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-13T02:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3ef61933-0cb4-5743-827b-7560ff5e0ad7',10,'6E',15,15,1,'2025-12-12T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'440a1cb8-e569-5f56-b10b-7a2e3087932e',65.00,'CONFIRMED','CARD','2025-12-12T23:00:00';
EXEC air.usp_RegisterPayment @id,'28f7bdf1-a699-5a57-95d3-264334cfbf42',65.00,'CONFIRMED','CARD','2025-12-13T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '46d84cc6-361b-53b8-b47e-4f165b3659b7',10,'3C',96,96,2,'2025-12-12T20:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c4c48fb0-2d0c-5484-9362-759bccbbb9ab',58.50,'CONFIRMED','CARD','2025-12-12T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f077ab0a-308c-5e8f-a44d-31fc6807302d',10,'6D',29,161,1,'2025-12-12T19:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'de912b6c-0db0-5ab4-9356-bd67861b2df8',10,'5C',96,96,2,'2025-12-12T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'991fea41-8144-59a1-a058-59314cbdb102',65.00,'CONFIRMED','CARD','2025-12-12T20:00:00';
EXEC air.usp_RegisterPayment @id,'5f30001e-ad18-5780-bfa7-4a2f56d431ca',65.00,'CONFIRMED','CARD','2025-12-12T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c4271b7d-3cb2-5902-984c-ed389036f80b',10,'3E',40,40,1,'2025-12-12T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cd11677d-182e-576e-b47f-e2e6a1f94d99',65.00,'CONFIRMED','CARD','2025-12-12T19:00:00';
EXEC air.usp_RegisterPayment @id,'e309f9e6-2d0d-5b78-802c-367f9b4c2d96',65.00,'CONFIRMED','CARD','2025-12-12T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '75fd9eb3-91fc-5a89-bf27-bf5b63ff05ae',10,'4D',190,108,2,'2025-12-12T16:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8813fa4c-aaff-5e44-8355-815d839681b5',1.00,'FAILED','CARD','2025-12-12T17:00:00';
EXEC air.usp_RegisterPayment @id,'d6a34d5f-03ad-5c5a-8b91-f2ac8d4dc31a',58.50,'CONFIRMED','CARD','2025-12-12T18:00:00';
EXEC air.usp_RegisterPayment @id,'a9ad5e1e-1aff-5bda-a511-3f09641f46b9',58.50,'CONFIRMED','CARD','2025-12-12T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b7112242-f785-587d-87bf-a3cf3b1724eb',10,'4E',108,108,1,'2025-12-12T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e81baeda-8742-51cb-8e1d-9a3b30361d27',65.00,'CONFIRMED','CARD','2025-12-12T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f7920b11-3a6b-533c-9469-91c37122fefc',10,'4B',131,131,2,'2025-12-12T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ccd2bda7-cbae-54c3-9369-bed939695681',65.00,'CONFIRMED','CARD','2025-12-12T16:00:00';
EXEC air.usp_RegisterPayment @id,'aa96b0d4-e4e1-5bdb-91a0-127ca1717c73',65.00,'CONFIRMED','CARD','2025-12-12T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '74c76f8e-b256-5afc-8d56-17a210601f6e',10,'3F',130,167,1,'2025-12-12T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'229454e0-b003-528d-9cb8-5eae5547e7b1',65.00,'CONFIRMED','CARD','2025-12-12T15:00:00';
EXEC air.usp_RegisterPayment @id,'1362890a-efde-5535-9108-c60383a6a3d3',65.00,'CONFIRMED','CARD','2025-12-12T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-12T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5058f612-e5f9-549f-a88e-9dcd79847645',11,'1E',194,29,2,'2025-12-14T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'58055c48-f877-502c-a6f6-b2d1315ab5f3',1.00,'FAILED','CARD','2025-12-14T14:00:00';
EXEC air.usp_RegisterPayment @id,'42a28dba-9d91-56ec-a6e8-4954f36c2186',163.13,'CONFIRMED','CARD','2025-12-14T15:00:00';
EXEC air.usp_RegisterPayment @id,'790fb450-3c37-5f66-a292-3b7f1b6f9b79',163.12,'CONFIRMED','CARD','2025-12-14T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-14T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0577665c-a324-5c05-a925-149d93838a0b',11,'1D',150,150,1,'2025-12-14T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fcd05147-5466-57ad-9228-64dacc218d78',181.25,'CONFIRMED','CARD','2025-12-14T14:00:00';
EXEC air.usp_RegisterPayment @id,'ac735ff8-434e-53c1-b1d5-4f7f9ac7b8d4',181.25,'CONFIRMED','CARD','2025-12-14T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e6f6c889-2e8f-5bd2-af18-c45d7253e3b1',11,'1B',62,62,2,'2025-12-14T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3db6de37-ae08-5844-9335-05ebdabc0e79',181.25,'CONFIRMED','CARD','2025-12-14T13:00:00';
EXEC air.usp_RegisterPayment @id,'5583757e-b79a-5483-aa77-af183dca1853',181.25,'CONFIRMED','CARD','2025-12-14T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f8322f72-7e51-5af5-9051-124e3111f23d',11,'1C',117,24,1,'2025-12-14T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'673f6375-4431-5b65-a29b-da9322f0c6d6',181.25,'CONFIRMED','CARD','2025-12-14T12:00:00';
EXEC air.usp_RegisterPayment @id,'66857a71-45ba-5b8d-bde1-77effd344df3',181.25,'CONFIRMED','CARD','2025-12-14T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '01c59ab0-1d52-5fb9-af94-ee49e8e503f2',11,'5B',134,134,2,'2025-12-14T09:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b92cc9f6-1393-56e6-8b67-a0fe3ebd6cb5',65.25,'CONFIRMED','CARD','2025-12-14T11:00:00';
EXEC air.usp_RegisterPayment @id,'73a8a7f0-4290-5fbf-9cab-4778ff1c5b9d',65.25,'CONFIRMED','CARD','2025-12-14T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '453e9dab-66e6-587e-a349-179954b18df4',11,'4C',168,168,1,'2025-12-14T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'03ef9e01-cc4c-50d2-ae1e-44d030b94806',72.50,'CONFIRMED','CARD','2025-12-14T10:00:00';
EXEC air.usp_RegisterPayment @id,'d3065927-0f18-5c61-bdcd-920ece2cba49',72.50,'CONFIRMED','CARD','2025-12-14T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '22a959a5-9770-596c-b74a-46a40e4f6f2b',11,'7B',1,127,2,'2025-12-14T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'932e0496-d7c1-5a3a-96cd-b2ebe20fd994',1.00,'FAILED','CARD','2025-12-14T08:00:00';
EXEC air.usp_RegisterPayment @id,'c4539ba2-bc37-5735-8e70-569d3437080f',72.50,'CONFIRMED','CARD','2025-12-14T09:00:00';
EXEC air.usp_RegisterPayment @id,'bfad8801-82da-5216-a218-77cf7362634f',72.50,'CONFIRMED','CARD','2025-12-14T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '37fe243f-feea-5b26-aaec-3e4991b9ab52',11,'2D',175,175,1,'2025-12-14T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ad849f24-f404-52db-8eb4-ae83ff48a567',72.50,'CONFIRMED','CARD','2025-12-14T08:00:00';
EXEC air.usp_RegisterPayment @id,'2f3c002c-59b9-5e44-9f03-ab9ac7e542f7',72.50,'CONFIRMED','CARD','2025-12-14T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bded1234-22ae-57d8-8a16-3619479a69b6',11,'6C',21,21,2,'2025-12-14T05:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d7ad8ca0-10f6-599d-9225-ae559a46d54a',65.25,'CONFIRMED','CARD','2025-12-14T07:00:00';
EXEC air.usp_RegisterPayment @id,'2b3d7bf7-2931-5704-ab12-07a4fbe51961',65.25,'CONFIRMED','CARD','2025-12-14T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'da9db513-a2e5-5e44-9ede-868741781b32',11,'2A',157,8,1,'2025-12-14T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1c5727ab-c100-582c-ab5c-f4923957b2bd',72.50,'CONFIRMED','CARD','2025-12-14T06:00:00';
EXEC air.usp_RegisterPayment @id,'547c3aa5-c83b-59a0-a3f6-a0febb1428c0',72.50,'CONFIRMED','CARD','2025-12-14T07:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-14T08:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ac876371-339c-5e17-addb-246c2c2e2f6b',11,'6B',60,60,2,'2025-12-14T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5d79e7c3-0185-5a8e-bd88-5102f0f9c3e1',72.50,'CONFIRMED','CARD','2025-12-14T05:00:00';
EXEC air.usp_RegisterPayment @id,'76c98acc-4421-59ed-a049-0324f073e41a',72.50,'CONFIRMED','CARD','2025-12-14T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '400242f0-c4c4-546d-8da0-6e58bfd7f7e3',11,'7A',56,56,1,'2025-12-14T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7be7b3bb-e0c1-541b-9f0a-16261fb7d730',72.50,'CONFIRMED','CARD','2025-12-14T04:00:00';
EXEC air.usp_RegisterPayment @id,'20889e31-69fa-5821-ba1b-e8e49faac627',72.50,'CONFIRMED','CARD','2025-12-14T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8ad5484c-b3bf-5c75-afe4-04bb14dd409e',11,'6F',51,102,2,'2025-12-14T01:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cdf09d52-a5dc-5ee0-885b-243f41e5102d',1.00,'FAILED','CARD','2025-12-14T02:00:00';
EXEC air.usp_RegisterPayment @id,'69ad6c01-ef73-5ac5-82e3-e2dcaace8f41',65.25,'CONFIRMED','CARD','2025-12-14T03:00:00';
EXEC air.usp_RegisterPayment @id,'26d931f4-8cdf-5531-9be9-18bca7aad57d',65.25,'CONFIRMED','CARD','2025-12-14T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd77dba6e-32ab-5478-8670-f1f9d7465348',11,'3E',57,57,1,'2025-12-14T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6f5a9aa6-346a-550e-85a5-04f902b12907',72.50,'CONFIRMED','CARD','2025-12-14T02:00:00';
EXEC air.usp_RegisterPayment @id,'b3debdd1-be15-5174-a532-59f0b6028e02',72.50,'CONFIRMED','CARD','2025-12-14T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '40fe5c57-f7c5-5220-80cb-f7158ece9e12',11,'6D',73,73,2,'2025-12-13T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7fec4724-08e2-58c2-bb1c-6158e8a153f7',72.50,'CONFIRMED','CARD','2025-12-14T01:00:00';
EXEC air.usp_RegisterPayment @id,'413b7bb6-3d03-5c80-b0f5-3425969ef236',72.50,'CONFIRMED','CARD','2025-12-14T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7c42e5a3-5a49-5c85-b9fc-f0efcc2a336c',11,'2B',5,131,1,'2025-12-13T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e851bf04-a398-55b1-976d-b732c3214afc',72.50,'CONFIRMED','CARD','2025-12-14T00:00:00';
EXEC air.usp_RegisterPayment @id,'77d80dda-267d-55d0-8146-13130eb87b9d',72.50,'CONFIRMED','CARD','2025-12-14T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e1aff8c8-e41a-5ced-afd1-68539cccc5b3',11,'7F',176,176,2,'2025-12-13T21:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'caca69d7-3999-5281-b97f-479e34eeb974',65.25,'CONFIRMED','CARD','2025-12-13T23:00:00';
EXEC air.usp_RegisterPayment @id,'39ac4fe4-ee7b-5387-b60e-3620bce2da77',65.25,'CONFIRMED','CARD','2025-12-14T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '04d96d5f-123f-5762-90b0-48ff4cf07197',11,'4B',177,177,1,'2025-12-13T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f61b305e-d39c-53e5-827d-3aed9b8bc1d2',72.50,'CONFIRMED','CARD','2025-12-13T22:00:00';
EXEC air.usp_RegisterPayment @id,'c746dccd-3210-5721-b003-ea425387c641',72.50,'CONFIRMED','CARD','2025-12-13T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fdfa809f-4b51-5f27-b90e-5c3614067de1',11,'7E',139,79,2,'2025-12-13T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7d858383-bd18-533f-a8a5-26b1dd43bd18',1.00,'FAILED','CARD','2025-12-13T20:00:00';
EXEC air.usp_RegisterPayment @id,'3e0bb47d-9cf9-507b-8e7d-ec87c4f34666',72.50,'CONFIRMED','CARD','2025-12-13T21:00:00';
EXEC air.usp_RegisterPayment @id,'578f3eb0-ae17-53b9-a41d-7f29a7258c9d',72.50,'CONFIRMED','CARD','2025-12-13T22:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-13T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'af3d45eb-ac60-52f5-bd4a-fa65b9f093cd',11,'7D',100,100,1,'2025-12-13T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fe5d4065-12b0-5f0b-841d-782e2fabcbef',72.50,'CONFIRMED','CARD','2025-12-13T20:00:00';
EXEC air.usp_RegisterPayment @id,'c5371631-84a2-560a-a2fd-1a41dc05485c',72.50,'CONFIRMED','CARD','2025-12-13T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'efd688fb-cd0d-5b4c-967d-e32070a6fc6a',11,'3C',28,28,2,'2025-12-13T17:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d9deedf4-67c6-580e-8f99-a8bbf310e689',65.25,'CONFIRMED','CARD','2025-12-13T19:00:00';
EXEC air.usp_RegisterPayment @id,'f350a33b-f3b2-5e36-8e52-1c814f30067a',65.25,'CONFIRMED','CARD','2025-12-13T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7b9e59f7-4e4d-5c5a-bce1-0a550453d433',11,'4F',64,57,1,'2025-12-13T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'381c5334-50ed-5498-a06d-126ab2c6f574',72.50,'CONFIRMED','CARD','2025-12-13T18:00:00';
EXEC air.usp_RegisterPayment @id,'6ff2b190-4b5d-5c78-be88-3fb71cc3ae66',72.50,'CONFIRMED','CARD','2025-12-13T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8811b083-8ba4-5ce9-ac75-6e829d05830e',11,'2E',33,33,2,'2025-12-13T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ed928dbb-df62-5b61-a1fd-dde517439184',72.50,'CONFIRMED','CARD','2025-12-13T17:00:00';
EXEC air.usp_RegisterPayment @id,'3468c8f3-e4fd-595e-9e31-8798b0077b62',72.50,'CONFIRMED','CARD','2025-12-13T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6481bb21-2de9-5aee-8e77-699b56183771',11,'3F',166,166,1,'2025-12-13T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2950206c-be91-5aad-aafb-c198e60ed077',72.50,'CONFIRMED','CARD','2025-12-13T16:00:00';
EXEC air.usp_RegisterPayment @id,'993aebcf-6ff5-5c98-ae06-17ed281ad9d8',72.50,'CONFIRMED','CARD','2025-12-13T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '64bdeb6e-1aab-5ad3-8946-be228e250ea0',11,'2C',100,12,2,'2025-12-13T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d2c12337-2154-57f1-9e31-ef4331d2fb3f',1.00,'FAILED','CARD','2025-12-13T14:00:00';
EXEC air.usp_RegisterPayment @id,'ea601f08-c4cb-5575-be35-17ce38144cd5',65.25,'CONFIRMED','CARD','2025-12-13T15:00:00';
EXEC air.usp_RegisterPayment @id,'bebc5285-0da1-51e3-bf84-3e4aacccd64e',65.25,'CONFIRMED','CARD','2025-12-13T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b01fe00a-3add-5d67-a9b3-caba9cbe1476',11,'5A',190,190,1,'2025-12-13T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'87a5eff1-a180-58e1-9ee6-eff27b2e4eaf',72.50,'CONFIRMED','CARD','2025-12-13T14:00:00';
EXEC air.usp_RegisterPayment @id,'9f5279ae-cb4a-5f27-b35e-b4694c88b973',72.50,'CONFIRMED','CARD','2025-12-13T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '02078524-69b7-5769-bbe5-5b943f56ef62',11,'4E',158,158,2,'2025-12-13T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0468b82f-ab95-5bc1-a1e5-ecfae46cd99b',72.50,'CONFIRMED','CARD','2025-12-13T13:00:00';
EXEC air.usp_RegisterPayment @id,'9d83ec11-f3c2-59e3-a996-afed2e6eb550',72.50,'CONFIRMED','CARD','2025-12-13T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '494f66c9-3f57-5a19-b10b-156dc646f33c',11,'4A',60,161,1,'2025-12-13T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'37511c8f-2bb5-5910-a5b8-272a47c4bae9',72.50,'CONFIRMED','CARD','2025-12-13T12:00:00';
EXEC air.usp_RegisterPayment @id,'7174cb35-1399-53ad-b137-643eaa2af5f0',72.50,'CONFIRMED','CARD','2025-12-13T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-13T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6d625fe7-77d0-5dae-8b1b-a716d21ef0fd',12,'1C',134,151,2,'2025-12-14T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'358d1755-fc98-5ce1-ae14-841d2bb4ffe7',1.00,'FAILED','CARD','2025-12-14T19:00:00';
EXEC air.usp_RegisterPayment @id,'3a2aac5b-ed20-5fed-a948-ae18e0fa70a4',180.00,'CONFIRMED','CARD','2025-12-14T20:00:00';
EXEC air.usp_RegisterPayment @id,'8c90e5f6-cb05-513f-adf2-9f13135e8119',180.00,'CONFIRMED','CARD','2025-12-14T21:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-14T22:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7329d6fb-4594-5f27-b643-fc9a7feec213',12,'1A',91,91,1,'2025-12-14T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1ffb015e-61e5-5ce2-8337-cbf5e182b5e0',200.00,'CONFIRMED','CARD','2025-12-14T19:00:00';
EXEC air.usp_RegisterPayment @id,'8d7e2e5d-e874-587d-aaba-4f266d8027ed',200.00,'CONFIRMED','CARD','2025-12-14T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '440d7e8e-c273-5c98-8130-088786b934af',12,'1D',173,173,2,'2025-12-14T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5b304783-6308-5c84-8399-51e660285fe2',200.00,'CONFIRMED','CARD','2025-12-14T18:00:00';
EXEC air.usp_RegisterPayment @id,'198fdd64-3706-551a-9dcb-d7d18d001427',200.00,'CONFIRMED','CARD','2025-12-14T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '14eda833-ac00-5d09-9554-e0b38e67d2f1',12,'1E',36,12,1,'2025-12-14T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8d4f018a-add6-58a5-9ad6-41eee0b8f3f5',200.00,'CONFIRMED','CARD','2025-12-14T17:00:00';
EXEC air.usp_RegisterPayment @id,'a6ea6444-b13d-52f0-9543-f01a6300b43d',200.00,'CONFIRMED','CARD','2025-12-14T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a870c0fd-925f-5174-8721-b83271062be9',12,'4C',134,134,2,'2025-12-14T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8afadc2a-a973-581f-94af-54878ff2491a',72.00,'CONFIRMED','CARD','2025-12-14T16:00:00';
EXEC air.usp_RegisterPayment @id,'67cf42f9-4915-5019-beed-8888d99478fd',72.00,'CONFIRMED','CARD','2025-12-14T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ffd850e6-83f6-58c1-a11e-1b43059b02be',12,'6E',73,73,1,'2025-12-14T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'25f43a9c-1317-5efa-b084-bb2dbc9cab09',80.00,'CONFIRMED','CARD','2025-12-14T15:00:00';
EXEC air.usp_RegisterPayment @id,'0576ea37-05b0-5b81-87dc-96a8067d3e92',80.00,'CONFIRMED','CARD','2025-12-14T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a916d125-08e9-59a6-adf8-8a39117a83f0',12,'5C',165,151,2,'2025-12-14T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6caad3cc-e459-54fc-9b96-b9f8aebc60b0',1.00,'FAILED','CARD','2025-12-14T13:00:00';
EXEC air.usp_RegisterPayment @id,'f2ae08ec-92fe-5e9b-bb0e-31e6d970d694',80.00,'CONFIRMED','CARD','2025-12-14T14:00:00';
EXEC air.usp_RegisterPayment @id,'33cbe814-031e-57c8-bc97-76be610764ad',80.00,'CONFIRMED','CARD','2025-12-14T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f237aee7-df46-593c-8457-095ae1a424da',12,'4A',111,111,1,'2025-12-14T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1aa04f01-1fbe-53f2-9ab7-05034ae2ea86',80.00,'CONFIRMED','CARD','2025-12-14T13:00:00';
EXEC air.usp_RegisterPayment @id,'35f1a331-5bdb-5d42-ba2f-23ef999cf147',80.00,'CONFIRMED','CARD','2025-12-14T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9275d690-4748-5f02-8627-a5e01b742016',12,'3C',158,158,2,'2025-12-14T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0da39ea1-94c8-5138-85d3-0edaa57ab449',72.00,'CONFIRMED','CARD','2025-12-14T12:00:00';
EXEC air.usp_RegisterPayment @id,'a93cceae-0607-5a49-a54a-c9bb2cff097d',72.00,'CONFIRMED','CARD','2025-12-14T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e973c510-16f9-5027-83cc-2ea2f1f9ad79',12,'2C',88,200,1,'2025-12-14T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'751f1971-45d0-5d78-8005-d13076073216',80.00,'CONFIRMED','CARD','2025-12-14T11:00:00';
EXEC air.usp_RegisterPayment @id,'2ba090f4-7109-550f-ad36-f53374c4472b',80.00,'CONFIRMED','CARD','2025-12-14T12:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-14T13:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2600ae17-8126-5b2f-82a4-1032acca505a',12,'6A',138,138,2,'2025-12-14T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'08154ddb-c578-5a21-91b0-33db4d3d5b79',80.00,'CONFIRMED','CARD','2025-12-14T10:00:00';
EXEC air.usp_RegisterPayment @id,'c6bcfc44-2f58-5401-b744-4b22af06a528',80.00,'CONFIRMED','CARD','2025-12-14T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a27c40a0-4e01-5d4b-9618-a51d1340cb3e',12,'7B',84,84,1,'2025-12-14T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a0ae5df0-8ad0-50ea-a93b-713ea98d8c0f',80.00,'CONFIRMED','CARD','2025-12-14T09:00:00';
EXEC air.usp_RegisterPayment @id,'b7acc8d0-86d8-5d00-9dc0-b4fc294d0a64',80.00,'CONFIRMED','CARD','2025-12-14T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '33f28121-ca78-5612-990d-0aabe70feb29',12,'7A',6,192,2,'2025-12-14T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ab3c73e5-a313-5cb7-af94-0f471f686cb1',1.00,'FAILED','CARD','2025-12-14T07:00:00';
EXEC air.usp_RegisterPayment @id,'fb6c6162-d469-5533-a65c-1156beb8915a',72.00,'CONFIRMED','CARD','2025-12-14T08:00:00';
EXEC air.usp_RegisterPayment @id,'2ef85974-532e-5a72-a26f-9e9846d82a26',72.00,'CONFIRMED','CARD','2025-12-14T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ca7ba130-a222-5922-a42d-b5946b9593cb',12,'3E',113,113,1,'2025-12-14T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9fe7d275-ddd1-587a-8aff-d5fe2dd03828',80.00,'CONFIRMED','CARD','2025-12-14T07:00:00';
EXEC air.usp_RegisterPayment @id,'1b483c8e-8b47-591b-8a6c-4d7655848433',80.00,'CONFIRMED','CARD','2025-12-14T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2b248c7e-0525-5eaa-8882-ad5afc2bec45',12,'2D',153,153,2,'2025-12-14T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b988cdfd-d5cc-5fec-875d-69a91767d8f1',80.00,'CONFIRMED','CARD','2025-12-14T06:00:00';
EXEC air.usp_RegisterPayment @id,'3af19652-f244-5926-a7fe-b39a188b7f0b',80.00,'CONFIRMED','CARD','2025-12-14T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4fb80c3b-1332-5623-869f-8b32120bde7c',12,'2A',105,45,1,'2025-12-14T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'40a95aa2-81ea-5c8b-a3be-ab9e9d8ed5ad',80.00,'CONFIRMED','CARD','2025-12-14T05:00:00';
EXEC air.usp_RegisterPayment @id,'c49811a3-3a0a-59e1-8555-b807a720c77f',80.00,'CONFIRMED','CARD','2025-12-14T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a38a621c-3b90-5934-9b4d-e82452ed158e',12,'7E',191,191,2,'2025-12-14T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8033ef0e-b415-5459-a80f-c05e3353c402',72.00,'CONFIRMED','CARD','2025-12-14T04:00:00';
EXEC air.usp_RegisterPayment @id,'824e99c0-229d-5cbb-8003-7b9075b3b87b',72.00,'CONFIRMED','CARD','2025-12-14T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd1651e6d-0037-5291-9afc-c2b0939c874d',12,'5D',174,174,1,'2025-12-14T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4df9e049-cd2f-5c7b-aa60-9cc44fcae7d2',80.00,'CONFIRMED','CARD','2025-12-14T03:00:00';
EXEC air.usp_RegisterPayment @id,'b5c15276-ab25-585e-b32b-92939389ffa2',80.00,'CONFIRMED','CARD','2025-12-14T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0e5d3e47-1a74-5e45-94ce-93ff2d5250bd',12,'6F',74,123,2,'2025-12-14T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1a9168b3-0a4c-5a6b-8c36-55f45ae31eb8',1.00,'FAILED','CARD','2025-12-14T01:00:00';
EXEC air.usp_RegisterPayment @id,'fc86f929-bc76-580f-b236-23ff28413bdb',80.00,'CONFIRMED','CARD','2025-12-14T02:00:00';
EXEC air.usp_RegisterPayment @id,'4f051d98-952d-567b-8bba-311d7b2749d2',80.00,'CONFIRMED','CARD','2025-12-14T03:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-14T04:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '101b9e34-4a01-578a-8be4-28de3c6d60f7',12,'2B',193,193,1,'2025-12-13T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8b9c747b-6f0e-59f0-a9a7-22b8d7b0676f',80.00,'CONFIRMED','CARD','2025-12-14T01:00:00';
EXEC air.usp_RegisterPayment @id,'2a513e45-0f1a-5402-afbb-a83d4f517af9',80.00,'CONFIRMED','CARD','2025-12-14T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f0a8bb36-f3f8-53eb-8ab7-1ad13597e927',12,'4F',193,193,2,'2025-12-13T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6b620d09-a324-574b-ae93-52a29dbfee30',72.00,'CONFIRMED','CARD','2025-12-14T00:00:00';
EXEC air.usp_RegisterPayment @id,'9a40da07-9063-5d26-b635-e8d2498e2a96',72.00,'CONFIRMED','CARD','2025-12-14T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1b85974a-2d4b-5175-93e6-2cdd73f38972',12,'3B',193,133,1,'2025-12-13T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'97d80ea1-0550-5f69-93f8-e62b14c0f41e',80.00,'CONFIRMED','CARD','2025-12-13T23:00:00';
EXEC air.usp_RegisterPayment @id,'58800fdc-025d-5344-9b72-152322f7505e',80.00,'CONFIRMED','CARD','2025-12-14T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '62d3ccc4-a33b-5406-b17d-569d5e302d93',12,'7C',34,34,2,'2025-12-13T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4def646d-4a4c-5a06-b907-087767573471',80.00,'CONFIRMED','CARD','2025-12-13T22:00:00';
EXEC air.usp_RegisterPayment @id,'7aa619e8-9c28-5798-93d9-a590a33999c6',80.00,'CONFIRMED','CARD','2025-12-13T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fab6f9f2-c1f2-5b0d-993a-229e84c79872',12,'3F',164,164,1,'2025-12-13T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f772fe90-869d-5101-87b6-b2ef746eac25',80.00,'CONFIRMED','CARD','2025-12-13T21:00:00';
EXEC air.usp_RegisterPayment @id,'f2b2ae42-965d-5ec0-a865-0c41e7449510',80.00,'CONFIRMED','CARD','2025-12-13T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '448b6d16-2097-58c2-8070-94957d122e1f',12,'5F',159,75,2,'2025-12-13T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1c1c40c8-bf4e-5f0f-aef5-b39732334b1c',1.00,'FAILED','CARD','2025-12-13T19:00:00';
EXEC air.usp_RegisterPayment @id,'07fb3e57-0ad1-5c46-821b-fcc776bde097',72.00,'CONFIRMED','CARD','2025-12-13T20:00:00';
EXEC air.usp_RegisterPayment @id,'bbfd8dc7-592b-5e39-af3d-0ceebe5225df',72.00,'CONFIRMED','CARD','2025-12-13T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '35010348-7384-5a10-96e3-1f55b9e753a2',12,'6D',49,49,1,'2025-12-13T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c6cff10e-981d-5ceb-bb8c-752cb9720722',80.00,'CONFIRMED','CARD','2025-12-13T19:00:00';
EXEC air.usp_RegisterPayment @id,'0e0a6a0b-b411-5ac6-b7c6-6234aa2b542f',80.00,'CONFIRMED','CARD','2025-12-13T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '445c4d82-f52e-557a-a046-a1440a0bf4ad',12,'5B',44,44,2,'2025-12-13T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a32de105-3559-54ea-93e2-f191b122e775',80.00,'CONFIRMED','CARD','2025-12-13T18:00:00';
EXEC air.usp_RegisterPayment @id,'98e8951c-200d-5f92-b747-d25fa4e3d72f',80.00,'CONFIRMED','CARD','2025-12-13T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f9d4fc0c-037b-55e7-b2c2-6439613b8612',12,'4B',185,178,1,'2025-12-13T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7d1bae9e-21b7-59d7-8aa6-38d16809dfbc',80.00,'CONFIRMED','CARD','2025-12-13T17:00:00';
EXEC air.usp_RegisterPayment @id,'e04e1a8e-b221-5bb9-b314-ac61d5c6f222',80.00,'CONFIRMED','CARD','2025-12-13T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-13T19:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8cf7644e-86da-549a-9bb0-111c937d4934',13,'1C',100,175,2,'2025-12-15T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'07fc7bdc-2166-504c-b6eb-5f18173f01c9',1.00,'FAILED','CARD','2025-12-15T15:00:00';
EXEC air.usp_RegisterPayment @id,'0b051097-382e-5881-968d-7ceebc493f34',196.88,'CONFIRMED','CARD','2025-12-15T16:00:00';
EXEC air.usp_RegisterPayment @id,'d2bb5bfc-4a4a-5ffe-87e1-ef660db45de2',196.87,'CONFIRMED','CARD','2025-12-15T17:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-15T18:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bde45842-92cd-5a28-85ee-8fc413494e6b',13,'1B',13,13,1,'2025-12-15T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3e269167-52c3-5bba-ae55-01b2a363fab6',218.75,'CONFIRMED','CARD','2025-12-15T15:00:00';
EXEC air.usp_RegisterPayment @id,'b4a37e4c-403e-58e1-ae3a-32fcc0f3eedd',218.75,'CONFIRMED','CARD','2025-12-15T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ce959de8-289b-57e5-85b6-cb8655c7e798',13,'1E',176,176,2,'2025-12-15T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cd9c8208-6fb2-583b-9813-cb1f5d4e2027',218.75,'CONFIRMED','CARD','2025-12-15T14:00:00';
EXEC air.usp_RegisterPayment @id,'4faeda9f-2e41-5ea6-a43d-6265941762e6',218.75,'CONFIRMED','CARD','2025-12-15T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd78ec7b7-23aa-582f-8216-5a50a090db49',13,'1F',56,114,1,'2025-12-15T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'83300c27-a726-5dd1-9c71-dfd138597191',218.75,'CONFIRMED','CARD','2025-12-15T13:00:00';
EXEC air.usp_RegisterPayment @id,'310c3109-cd1d-5c7f-9bde-aeb3c3aada01',218.75,'CONFIRMED','CARD','2025-12-15T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f832ef6e-638d-5339-9914-fea873327823',13,'5B',126,126,2,'2025-12-15T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0bcc40c3-5389-587c-b3ee-27963dbeb0ee',78.75,'CONFIRMED','CARD','2025-12-15T12:00:00';
EXEC air.usp_RegisterPayment @id,'f2cb791e-e4b6-5937-a499-78e36b15c000',78.75,'CONFIRMED','CARD','2025-12-15T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3c5dc137-3c1e-53ee-ae92-97efc2dadb6d',13,'7C',67,67,1,'2025-12-15T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f0e1e860-5a94-5b08-b92f-bcaa459e4d65',87.50,'CONFIRMED','CARD','2025-12-15T11:00:00';
EXEC air.usp_RegisterPayment @id,'3c4b028b-0a81-5935-9c75-c258dac9bd8a',87.50,'CONFIRMED','CARD','2025-12-15T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9e0d8390-572e-56c6-b5b3-19b898616156',13,'2E',106,167,2,'2025-12-15T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'69aac1f5-9ef9-5978-bf7a-35c48088922b',1.00,'FAILED','CARD','2025-12-15T09:00:00';
EXEC air.usp_RegisterPayment @id,'bb82ed77-aaf0-5e15-a252-83c7cc238710',87.50,'CONFIRMED','CARD','2025-12-15T10:00:00';
EXEC air.usp_RegisterPayment @id,'0ff74164-3967-564a-b343-c5de0646c0ce',87.50,'CONFIRMED','CARD','2025-12-15T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd8d810af-f2a3-5851-a707-8ab926ce2cab',13,'6B',50,50,1,'2025-12-15T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0d52c461-6552-528f-a90f-3e0cdbc54834',87.50,'CONFIRMED','CARD','2025-12-15T09:00:00';
EXEC air.usp_RegisterPayment @id,'3afd0da5-9242-544c-aa04-d3ece0293132',87.50,'CONFIRMED','CARD','2025-12-15T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd31ceba2-91ad-5db1-a1d0-cf8432a3c031',13,'4C',162,162,2,'2025-12-15T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'349fc527-7ac0-5947-8d88-7792ff7cdff0',78.75,'CONFIRMED','CARD','2025-12-15T08:00:00';
EXEC air.usp_RegisterPayment @id,'e5a1d5bc-a337-5fd4-ba8c-209f49398214',78.75,'CONFIRMED','CARD','2025-12-15T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c8d4cf86-1363-5448-a3b7-d4f0855b3929',13,'6D',1,33,1,'2025-12-15T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c0cf04c5-f356-57f9-a38c-e96419b0d661',87.50,'CONFIRMED','CARD','2025-12-15T07:00:00';
EXEC air.usp_RegisterPayment @id,'e54c8260-e0b6-51a4-823e-73406fe676bc',87.50,'CONFIRMED','CARD','2025-12-15T08:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-15T09:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0ce3b4b2-e989-5a2e-9cb9-2bf9b1604a69',13,'6C',145,145,2,'2025-12-15T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d2a56c93-82b1-5f78-931a-c0cc643793a4',87.50,'CONFIRMED','CARD','2025-12-15T06:00:00';
EXEC air.usp_RegisterPayment @id,'2fd9e29c-3ced-5914-94ef-2433faa2cf8a',87.50,'CONFIRMED','CARD','2025-12-15T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1267af56-95d6-5823-a383-5957af72d2fa',13,'2A',9,9,1,'2025-12-15T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'473c1062-4e5e-58c9-914d-474fd0f2ef24',87.50,'CONFIRMED','CARD','2025-12-15T05:00:00';
EXEC air.usp_RegisterPayment @id,'a32d13ce-580c-5f4d-baea-3ba3ba385f66',87.50,'CONFIRMED','CARD','2025-12-15T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fe1ec0e0-cfdd-55f2-9c2e-dfd3f42bf571',13,'2D',11,9,2,'2025-12-15T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7f49c35a-70f3-533e-8687-1b354fca2623',1.00,'FAILED','CARD','2025-12-15T03:00:00';
EXEC air.usp_RegisterPayment @id,'cb366f9f-0ecd-5261-8f37-2343005aea5d',78.75,'CONFIRMED','CARD','2025-12-15T04:00:00';
EXEC air.usp_RegisterPayment @id,'381c5f51-c44c-5b35-b53c-8e6ede1e719a',78.75,'CONFIRMED','CARD','2025-12-15T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7bc7b3e5-79fb-5500-ae48-775b5454f0cf',13,'3A',132,132,1,'2025-12-15T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6456959b-485e-5536-976e-1657e6d885f0',87.50,'CONFIRMED','CARD','2025-12-15T03:00:00';
EXEC air.usp_RegisterPayment @id,'347fc8d4-b744-5b51-af72-d6a5887099ee',87.50,'CONFIRMED','CARD','2025-12-15T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '79578837-7062-5276-bd8e-54c60f6c326f',13,'7B',67,67,2,'2025-12-15T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d50e4c05-5232-5250-b400-047c62f124ea',87.50,'CONFIRMED','CARD','2025-12-15T02:00:00';
EXEC air.usp_RegisterPayment @id,'f8ec8bae-bf59-5081-99e7-e248d741eea1',87.50,'CONFIRMED','CARD','2025-12-15T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a24c4ee4-eb0d-5e61-b11c-78cfb7911dc3',13,'2C',114,153,1,'2025-12-14T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f37b6e07-cd2c-5083-9646-ad645213fe98',87.50,'CONFIRMED','CARD','2025-12-15T01:00:00';
EXEC air.usp_RegisterPayment @id,'c2d8e8f6-70b2-56d2-a1a1-3ab16b2dd6ff',87.50,'CONFIRMED','CARD','2025-12-15T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd6734050-b1c6-5f0e-ae05-4c6362bb979b',13,'5D',169,169,2,'2025-12-14T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'93439c55-c1f3-5ca8-a5f1-0cc465c4e646',78.75,'CONFIRMED','CARD','2025-12-15T00:00:00';
EXEC air.usp_RegisterPayment @id,'f99e03cd-822e-52d3-a561-f97a2ff32e7d',78.75,'CONFIRMED','CARD','2025-12-15T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5b3ef46b-cb6c-5fba-988d-97372cbd0c59',13,'3E',8,8,1,'2025-12-14T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'34c845b0-fa09-5c76-bc51-2bc574751161',87.50,'CONFIRMED','CARD','2025-12-14T23:00:00';
EXEC air.usp_RegisterPayment @id,'f33051a6-0a7d-5e2f-b382-8b4bcee7544a',87.50,'CONFIRMED','CARD','2025-12-15T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '016c9d03-1512-54e7-aa21-4db57b35ac08',13,'2B',16,73,2,'2025-12-14T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2e06a7cc-2fe0-5574-8737-963b3ded7c71',1.00,'FAILED','CARD','2025-12-14T21:00:00';
EXEC air.usp_RegisterPayment @id,'c8b4d363-7a3a-50ee-969b-e0dbb25e0dd7',87.50,'CONFIRMED','CARD','2025-12-14T22:00:00';
EXEC air.usp_RegisterPayment @id,'4326066a-098b-54ed-bb8a-10ead8fcf930',87.50,'CONFIRMED','CARD','2025-12-14T23:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-15T00:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1edace44-7123-538e-8050-e331d26a80ce',13,'7E',171,171,1,'2025-12-14T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b8ceffcf-8f57-5780-85cc-39b50ad615d3',87.50,'CONFIRMED','CARD','2025-12-14T21:00:00';
EXEC air.usp_RegisterPayment @id,'0b07f6b4-1699-5bc5-8fee-51d77eef29ac',87.50,'CONFIRMED','CARD','2025-12-14T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '607c7bdc-1afe-565d-baab-b4c5209ec7b6',13,'4B',130,130,2,'2025-12-14T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8fcf3fa4-76f1-5a52-813b-057095217028',78.75,'CONFIRMED','CARD','2025-12-14T20:00:00';
EXEC air.usp_RegisterPayment @id,'69fa241f-7f65-5df3-91e6-26ffe064a194',78.75,'CONFIRMED','CARD','2025-12-14T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fdc6c21a-6469-5fa3-b417-8528773fc594',13,'5C',104,101,1,'2025-12-14T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'67b852d0-1090-53ab-bac4-753662edf762',87.50,'CONFIRMED','CARD','2025-12-14T19:00:00';
EXEC air.usp_RegisterPayment @id,'8cf140fe-dcb2-57f4-be42-69352a2da83a',87.50,'CONFIRMED','CARD','2025-12-14T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e48c8a8c-04c8-5596-ab07-bf350f4092c6',13,'2F',120,120,2,'2025-12-14T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4e238820-2b8c-5891-b05e-92ca0b9f7774',87.50,'CONFIRMED','CARD','2025-12-14T18:00:00';
EXEC air.usp_RegisterPayment @id,'a023fe8c-3ddc-5869-bde5-af1116345522',87.50,'CONFIRMED','CARD','2025-12-14T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '91e08e4c-3ff1-553c-921e-5cd5ff936fc3',13,'4D',123,123,1,'2025-12-14T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6c1f0a8d-1892-58e7-ab64-8f0cf6e68b65',87.50,'CONFIRMED','CARD','2025-12-14T17:00:00';
EXEC air.usp_RegisterPayment @id,'464243c6-36b2-59da-bd7c-5857e3e1e2a1',87.50,'CONFIRMED','CARD','2025-12-14T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '86c103e2-7a99-55d3-a8bd-7def7ac81310',13,'3D',136,189,2,'2025-12-14T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'87328bed-64e4-5fd7-94ed-b910f8d4956a',1.00,'FAILED','CARD','2025-12-14T15:00:00';
EXEC air.usp_RegisterPayment @id,'cd342c6d-83be-5b7c-8ea8-fbe16017757d',78.75,'CONFIRMED','CARD','2025-12-14T16:00:00';
EXEC air.usp_RegisterPayment @id,'2e975e3e-01e2-5da7-b035-a9f61b7c79bc',78.75,'CONFIRMED','CARD','2025-12-14T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5833e909-8978-5903-b185-19639b08d89d',13,'6A',183,183,1,'2025-12-14T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'329bfda0-8030-57b9-86f0-d950e692b790',87.50,'CONFIRMED','CARD','2025-12-14T15:00:00';
EXEC air.usp_RegisterPayment @id,'567fc78e-bbba-5eac-8955-eb68dfc7d8cc',87.50,'CONFIRMED','CARD','2025-12-14T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ba9d56bb-6492-5a46-b75c-2ffb00daf2c0',13,'5E',85,85,2,'2025-12-14T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'23eec975-5a64-57e5-b1a9-5b38028af538',87.50,'CONFIRMED','CARD','2025-12-14T14:00:00';
EXEC air.usp_RegisterPayment @id,'1109f84a-5d91-5e5f-a52c-6388c5740a75',87.50,'CONFIRMED','CARD','2025-12-14T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '93d2786b-8884-5bb7-a994-959d4a236573',13,'7F',147,88,1,'2025-12-14T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'122ac50f-3a65-5691-a1b3-e204fbe1a98c',87.50,'CONFIRMED','CARD','2025-12-14T13:00:00';
EXEC air.usp_RegisterPayment @id,'34e23e7d-9722-5caa-bac5-5bf5c0b72479',87.50,'CONFIRMED','CARD','2025-12-14T14:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-14T15:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2c93715e-69dc-5ca6-8410-420fc530dfa0',14,'1E',127,76,2,'2025-12-15T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bf21a6ae-0cf4-503e-90f6-297d69c4508d',1.00,'FAILED','CARD','2025-12-15T19:00:00';
EXEC air.usp_RegisterPayment @id,'50c71b59-cb6c-5de9-afba-12e97c9d6565',213.75,'CONFIRMED','CARD','2025-12-15T20:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-15T22:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '615f9b25-2da6-539a-9efe-b4844d775953',14,'1B',15,15,1,'2025-12-15T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'69961957-40cd-580b-957d-ae388ba1429a',237.50,'CONFIRMED','CARD','2025-12-15T19:00:00';
EXEC air.usp_RegisterPayment @id,'17701127-0838-5ece-ada4-453bd9e7f42f',237.50,'CONFIRMED','CARD','2025-12-15T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0b1eef7b-53c0-58f5-bc4f-72c2f2d2944d',14,'1A',31,31,2,'2025-12-15T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f220d1d8-9cfb-51b5-84c3-ba421701e83c',237.50,'CONFIRMED','CARD','2025-12-15T18:00:00';
EXEC air.usp_RegisterPayment @id,'3179c8e2-153c-5344-b2f1-c8fd4f8dc94e',237.50,'CONFIRMED','CARD','2025-12-15T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c75e0fee-98a6-5273-b375-4618c6dc47bb',14,'1F',92,136,1,'2025-12-15T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7ca373ad-56ed-5b3b-87d0-a1545ea84198',237.50,'CONFIRMED','CARD','2025-12-15T17:00:00';
EXEC air.usp_RegisterPayment @id,'a96a2b2e-a442-577b-98b4-a39c50036978',237.50,'CONFIRMED','CARD','2025-12-15T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '75a2e8c0-ed5f-55b6-b5d0-40697da4fdbc',14,'2D',23,23,2,'2025-12-15T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'13416a0c-9748-58c7-a402-88891117714a',85.50,'CONFIRMED','CARD','2025-12-15T16:00:00';
EXEC air.usp_RegisterPayment @id,'0c10f9db-c579-5186-9033-b70203d5b3f1',85.50,'CONFIRMED','CARD','2025-12-15T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0d66e025-6607-5337-b549-b2811fd5e782',14,'3C',132,132,1,'2025-12-15T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a909c537-76f4-5bcb-8f35-b58ac277f296',95.00,'CONFIRMED','CARD','2025-12-15T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c663fb86-8dd3-560a-a23b-7695eb53984a',14,'4E',183,22,2,'2025-12-15T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'96d9719a-796b-5217-98fe-faeebc273ba4',1.00,'FAILED','CARD','2025-12-15T13:00:00';
EXEC air.usp_RegisterPayment @id,'98ee6f49-6457-5c0b-831b-94892ed11506',95.00,'CONFIRMED','CARD','2025-12-15T14:00:00';
EXEC air.usp_RegisterPayment @id,'821cc94d-a738-5e6d-ba2a-cce70a86ed38',95.00,'CONFIRMED','CARD','2025-12-15T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0059606a-085b-5e41-ba9e-fb1dc4a2c1d8',14,'4B',119,119,1,'2025-12-15T11:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '361ce9f7-8dcc-5aed-b1e4-2238e87c9d9f',14,'2C',183,183,2,'2025-12-15T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d13ef9e1-a65a-5cbb-845d-72577ec64171',85.50,'CONFIRMED','CARD','2025-12-15T12:00:00';
EXEC air.usp_RegisterPayment @id,'f9bbd9dd-0f5c-5166-a43f-0534d2984f01',85.50,'CONFIRMED','CARD','2025-12-15T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9615d437-41c4-5d8e-89e5-b1cad45c6e08',14,'5E',164,196,1,'2025-12-15T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cefff510-533c-55cf-ba57-3d35f480927e',95.00,'CONFIRMED','CARD','2025-12-15T11:00:00';
EXEC air.usp_RegisterPayment @id,'bde75101-5344-541b-9c6d-e0d993dbd5ae',95.00,'CONFIRMED','CARD','2025-12-15T12:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-15T13:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f102ce0d-8dcb-5c75-bdd6-154fa9d5123d',14,'7F',158,158,2,'2025-12-15T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'efa0745f-73f5-5505-a367-9f60c2ec35f5',95.00,'CONFIRMED','CARD','2025-12-15T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b101748c-6bee-50f2-ac9e-cea6c27d29bc',14,'4A',118,118,1,'2025-12-15T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d36f3b71-b179-5cd7-90fb-12e9fafa6c4a',95.00,'CONFIRMED','CARD','2025-12-15T09:00:00';
EXEC air.usp_RegisterPayment @id,'d026b4e7-1b5f-5d5b-b426-b6ccb3823ea2',95.00,'CONFIRMED','CARD','2025-12-15T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4eed25f3-fb9a-57af-bca3-ae6dbd7039d9',14,'7B',4,81,2,'2025-12-15T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cd86e8a6-caa8-5401-949b-e59df1aa06e3',1.00,'FAILED','CARD','2025-12-15T07:00:00';
EXEC air.usp_RegisterPayment @id,'1a63e184-689e-5e61-afdf-7936fbe7c777',85.50,'CONFIRMED','CARD','2025-12-15T08:00:00';
EXEC air.usp_RegisterPayment @id,'9a8624d1-5b64-51b0-9935-1327e52e086b',85.50,'CONFIRMED','CARD','2025-12-15T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '971aac1a-b4b6-591f-9050-0ce11dc5a396',14,'7C',117,117,1,'2025-12-15T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'67ca8ec3-aca9-5e0d-9bc1-420b2ae47ec5',95.00,'CONFIRMED','CARD','2025-12-15T07:00:00';
EXEC air.usp_RegisterPayment @id,'a34b41b3-80c1-5afc-b167-3c61ffe14ff3',95.00,'CONFIRMED','CARD','2025-12-15T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ff5fda71-3c87-5c9f-b370-824b112e2ca1',14,'6C',180,180,2,'2025-12-15T04:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '73306558-ba57-573a-989c-630017ccad9a',14,'2E',122,31,1,'2025-12-15T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'225f79d9-cfef-5fce-9ac8-024c9bc71515',95.00,'CONFIRMED','CARD','2025-12-15T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0071b0b6-6f7a-5fe6-9a00-00defa31c2db',14,'7E',92,92,2,'2025-12-15T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'14830fa4-4c56-5cca-8c6e-e784fbf993ac',85.50,'CONFIRMED','CARD','2025-12-15T04:00:00';
EXEC air.usp_RegisterPayment @id,'a01b7879-9a7c-5b74-af0b-30ed8d5c0351',85.50,'CONFIRMED','CARD','2025-12-15T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '18794ccb-e20a-59be-8177-63b4002a1524',14,'6A',187,187,1,'2025-12-15T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'22291677-9227-5981-8996-fd16f325aa03',95.00,'CONFIRMED','CARD','2025-12-15T03:00:00';
EXEC air.usp_RegisterPayment @id,'8aff4add-06a0-5b26-a05d-221360515c6e',95.00,'CONFIRMED','CARD','2025-12-15T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '68c28b4b-9022-5d05-a753-2bb873522676',14,'6D',109,186,2,'2025-12-15T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f96dd151-02f6-5038-bb1b-0c8d9194d325',1.00,'FAILED','CARD','2025-12-15T01:00:00';
EXEC air.usp_RegisterPayment @id,'96a60f5c-fb95-5a0f-b93e-010f2e3aa5cd',95.00,'CONFIRMED','CARD','2025-12-15T02:00:00';
EXEC air.usp_RegisterPayment @id,'ec8c2c77-394c-563e-ad18-751f94b6e060',95.00,'CONFIRMED','CARD','2025-12-15T03:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-15T04:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '77ff40fd-2727-5263-a059-e4df0aaea3ba',14,'3F',119,119,1,'2025-12-14T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'06f117f8-c73e-5cee-b373-5699a227eb06',95.00,'CONFIRMED','CARD','2025-12-15T01:00:00';
EXEC air.usp_RegisterPayment @id,'4e4b9489-8086-5b0a-833a-578016e175f6',95.00,'CONFIRMED','CARD','2025-12-15T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '17ae7400-2409-5440-bbfe-c8404e5c7572',14,'3B',58,58,2,'2025-12-14T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7cbdece0-3808-5047-bf41-99d144aeaef8',85.50,'CONFIRMED','CARD','2025-12-15T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fe71c3e5-ea42-5758-bcb8-e0159f414db9',14,'2A',45,27,1,'2025-12-14T21:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8d68561f-d7fb-5146-9d81-0f3ac7066be9',14,'4F',108,108,2,'2025-12-14T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ad5dd90d-7090-5814-aaeb-d68222816d74',95.00,'CONFIRMED','CARD','2025-12-14T22:00:00';
EXEC air.usp_RegisterPayment @id,'d9298b61-cd85-509b-bbb3-219ad53dee4c',95.00,'CONFIRMED','CARD','2025-12-14T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5edc39f3-00c0-58cc-9f11-b7e7ebc0828a',14,'3D',104,104,1,'2025-12-14T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'952c94b2-f563-56eb-90ad-7dbec7d958ae',95.00,'CONFIRMED','CARD','2025-12-14T21:00:00';
EXEC air.usp_RegisterPayment @id,'f7872d8a-01d6-5f6b-b236-75002ae59831',95.00,'CONFIRMED','CARD','2025-12-14T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c59dda27-9e1d-5b31-b84f-fe11c50004ac',14,'5C',155,35,2,'2025-12-14T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'23c2ee8a-5e87-51d5-9b48-e4e300bcd4f3',1.00,'FAILED','CARD','2025-12-14T19:00:00';
EXEC air.usp_RegisterPayment @id,'d618684b-2a82-51a8-97af-5721e78cfc1d',85.50,'CONFIRMED','CARD','2025-12-14T20:00:00';
EXEC air.usp_RegisterPayment @id,'5015d1e5-b5f5-58b0-b602-d4e046d8cf4b',85.50,'CONFIRMED','CARD','2025-12-14T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e1dc17ab-9937-52a8-b42f-1cb752fbbb4a',14,'2F',49,49,1,'2025-12-14T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3b5d45de-2f94-5470-b3de-c18f2665f583',95.00,'CONFIRMED','CARD','2025-12-14T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3f86fdc3-0b3a-5932-b9cf-cdc6294d405d',14,'5D',175,175,2,'2025-12-14T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'abcd5469-34a2-5f0b-88f6-91e11ed683da',95.00,'CONFIRMED','CARD','2025-12-14T18:00:00';
EXEC air.usp_RegisterPayment @id,'5bdad717-005b-5317-90ab-f50e1393e83a',95.00,'CONFIRMED','CARD','2025-12-14T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2f2522d6-0dd1-514d-b547-87ec89f092c0',14,'4C',85,92,1,'2025-12-14T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5f683a45-76cc-51ca-96cf-7f364756afe5',95.00,'CONFIRMED','CARD','2025-12-14T17:00:00';
EXEC air.usp_RegisterPayment @id,'069d5251-0d63-58b4-9d37-84bf3ca64c76',95.00,'CONFIRMED','CARD','2025-12-14T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-14T19:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '513a07fb-6005-592f-8a67-3481fbac96dd',15,'1D',157,21,2,'2025-12-16T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'89a8609c-3b1c-51e3-b583-1e6a3aee726c',1.00,'FAILED','CARD','2025-12-16T07:00:00';
EXEC air.usp_RegisterPayment @id,'2c3b4065-644d-5d36-97b3-c2d37b887adf',230.63,'CONFIRMED','CARD','2025-12-16T08:00:00';
EXEC air.usp_RegisterPayment @id,'39e5f2d3-6ee4-535f-9cd0-f084ab1489ff',230.62,'CONFIRMED','CARD','2025-12-16T09:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-16T10:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2532510a-538c-585a-b5a4-f74a5f9ea9de',15,'1E',135,135,1,'2025-12-16T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bcd64d98-ea45-50ab-b12a-f8197790a0a1',256.25,'CONFIRMED','CARD','2025-12-16T07:00:00';
EXEC air.usp_RegisterPayment @id,'1b782a09-9a75-55a7-854e-978dd037329d',256.25,'CONFIRMED','CARD','2025-12-16T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cd48d7ee-6b23-55a5-8ac5-1aed8b06c970',15,'1F',69,69,2,'2025-12-16T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4a76f66d-1f77-5e4f-87aa-064d0f1fa7f2',256.25,'CONFIRMED','CARD','2025-12-16T06:00:00';
EXEC air.usp_RegisterPayment @id,'e0feddd8-f390-5e80-bb83-9b0aa9eba78c',256.25,'CONFIRMED','CARD','2025-12-16T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '05cecce4-ca83-54bc-a5b5-11b691d061e4',15,'1C',73,153,1,'2025-12-16T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d11a510f-5e37-5297-aef2-0b1a10b290ec',256.25,'CONFIRMED','CARD','2025-12-16T05:00:00';
EXEC air.usp_RegisterPayment @id,'49595c00-2f79-5f2d-838e-32e6d0b9c4b7',256.25,'CONFIRMED','CARD','2025-12-16T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b6095e86-025e-568f-9164-4a7a92eb5c3c',15,'7A',87,87,2,'2025-12-16T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e3faac74-e4a7-5ce3-aeef-79739d338c21',92.25,'CONFIRMED','CARD','2025-12-16T04:00:00';
EXEC air.usp_RegisterPayment @id,'9df719a9-b57e-574e-9c35-a8e68fdb056d',92.25,'CONFIRMED','CARD','2025-12-16T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a04170ce-6170-5579-bd3e-cf7c6ac7ee04',15,'2F',32,32,1,'2025-12-16T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8dbd8a03-c126-5d2e-9713-e70c3a4fbfa3',102.50,'CONFIRMED','CARD','2025-12-16T03:00:00';
EXEC air.usp_RegisterPayment @id,'b537cf84-52e6-5f38-b3a2-dd6968b96943',102.50,'CONFIRMED','CARD','2025-12-16T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1f7faeca-595e-519b-8e26-4d624b337569',15,'4E',33,129,2,'2025-12-16T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9ee673bd-a987-52f6-897b-0f0ce280771c',1.00,'FAILED','CARD','2025-12-16T01:00:00';
EXEC air.usp_RegisterPayment @id,'74cef935-3a06-5b1d-b6fd-2d6fa3ca7104',102.50,'CONFIRMED','CARD','2025-12-16T02:00:00';
EXEC air.usp_RegisterPayment @id,'3cfc1f38-29bb-5e42-9746-cad06b300869',102.50,'CONFIRMED','CARD','2025-12-16T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '74a97324-7e46-5103-af71-55de9ce40552',15,'6D',169,169,1,'2025-12-15T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4b4916b1-643f-5c9c-81c6-2b678237c06b',102.50,'CONFIRMED','CARD','2025-12-16T01:00:00';
EXEC air.usp_RegisterPayment @id,'55348145-6daf-5e54-8148-641036acc197',102.50,'CONFIRMED','CARD','2025-12-16T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4962190e-f50f-5d41-92f6-58baf0e9403f',15,'2A',149,149,2,'2025-12-15T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f92d44e7-8af1-5bec-84ae-c61c7d4a051a',92.25,'CONFIRMED','CARD','2025-12-16T00:00:00';
EXEC air.usp_RegisterPayment @id,'aa22389e-f2c6-5077-a06c-d74f5d8c826b',92.25,'CONFIRMED','CARD','2025-12-16T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3b857392-d030-59bb-b4bf-2e3daec0c9a3',15,'2C',99,21,1,'2025-12-15T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'18b34cab-a9b1-56a6-b6fe-ad2c9b458201',102.50,'CONFIRMED','CARD','2025-12-15T23:00:00';
EXEC air.usp_RegisterPayment @id,'16df06ea-944c-5247-825f-9596f18c290b',102.50,'CONFIRMED','CARD','2025-12-16T00:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-16T01:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '59f8fb3c-8870-5dce-bea4-c2b46157c54f',15,'6E',183,183,2,'2025-12-15T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fc56e6fb-4d7c-5ceb-a579-d980300fb637',102.50,'CONFIRMED','CARD','2025-12-15T22:00:00';
EXEC air.usp_RegisterPayment @id,'39e08983-7d49-5cc5-903f-f64f79134321',102.50,'CONFIRMED','CARD','2025-12-15T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '21812414-b763-53f4-bb61-09c57b49e352',15,'3C',181,181,1,'2025-12-15T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'640833ac-b65e-59aa-af7a-62cf5680f63e',102.50,'CONFIRMED','CARD','2025-12-15T21:00:00';
EXEC air.usp_RegisterPayment @id,'67a50798-15ac-591e-a486-aed5cd166f12',102.50,'CONFIRMED','CARD','2025-12-15T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c233a704-f72f-5066-9c79-4096ae5b5094',15,'6B',51,40,2,'2025-12-15T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'74821e83-8e01-50f2-82bd-c2f2f4c8dc27',1.00,'FAILED','CARD','2025-12-15T19:00:00';
EXEC air.usp_RegisterPayment @id,'ee5ed040-afd6-5f99-86b7-a6f1017b50b3',92.25,'CONFIRMED','CARD','2025-12-15T20:00:00';
EXEC air.usp_RegisterPayment @id,'bf9a6cb5-6610-5360-ae00-e01155840266',92.25,'CONFIRMED','CARD','2025-12-15T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '23fd5493-d128-5b46-932f-17cfe997ff99',15,'4B',118,118,1,'2025-12-15T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b263615f-6466-5fb9-9bc3-965e4dc2e45f',102.50,'CONFIRMED','CARD','2025-12-15T19:00:00';
EXEC air.usp_RegisterPayment @id,'9a1be12d-c076-5c80-9e63-a24b7ab14762',102.50,'CONFIRMED','CARD','2025-12-15T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '60797e54-c6ee-5dae-b41c-413868d2b37c',15,'2B',53,53,2,'2025-12-15T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'69d9ab75-af16-5ae7-99dc-22f4b16b6eea',102.50,'CONFIRMED','CARD','2025-12-15T18:00:00';
EXEC air.usp_RegisterPayment @id,'22b48b82-0b71-51f1-b261-184b5fe75094',102.50,'CONFIRMED','CARD','2025-12-15T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a3825d29-7aec-57ac-806c-6c0d0066981c',15,'3B',36,68,1,'2025-12-15T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b17423cc-a0ef-52a5-a0bc-3e1399e38a4a',102.50,'CONFIRMED','CARD','2025-12-15T17:00:00';
EXEC air.usp_RegisterPayment @id,'096f431e-ae50-5565-90e7-b31ba042117d',102.50,'CONFIRMED','CARD','2025-12-15T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ea714134-5e8f-5a9e-a9a3-01c6eccac3bd',15,'5A',5,5,2,'2025-12-15T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cd797747-151b-53ba-8a14-9c60f6dfefad',92.25,'CONFIRMED','CARD','2025-12-15T16:00:00';
EXEC air.usp_RegisterPayment @id,'b969e01a-bb88-5d8c-b86e-27026798f12d',92.25,'CONFIRMED','CARD','2025-12-15T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'dd0f1ea0-aeb6-59f9-96da-96daf53636f8',15,'7B',121,121,1,'2025-12-15T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dd1d54d1-9417-548b-89c6-b95ef33c596a',102.50,'CONFIRMED','CARD','2025-12-15T15:00:00';
EXEC air.usp_RegisterPayment @id,'8b700540-3c47-5a85-8114-e9ca2c486dd5',102.50,'CONFIRMED','CARD','2025-12-15T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '09260022-cdfc-58dc-aa6d-5e9ec3634cd6',15,'3D',173,171,2,'2025-12-15T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'11de39ae-5a24-5142-a763-823b3c266f9c',1.00,'FAILED','CARD','2025-12-15T13:00:00';
EXEC air.usp_RegisterPayment @id,'d6b977fb-adcb-58d6-ad6b-3e975fd470fd',102.50,'CONFIRMED','CARD','2025-12-15T14:00:00';
EXEC air.usp_RegisterPayment @id,'63878802-5d9b-5be0-8333-f8c65304435c',102.50,'CONFIRMED','CARD','2025-12-15T15:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-15T16:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '66d94c55-0dda-5a98-bcb7-44302ccb155a',15,'3F',159,159,1,'2025-12-15T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'aa6ada99-dd29-53c1-ad3f-a248aafe3952',102.50,'CONFIRMED','CARD','2025-12-15T13:00:00';
EXEC air.usp_RegisterPayment @id,'b9dec991-364d-53cc-bd32-f5aeb46a697d',102.50,'CONFIRMED','CARD','2025-12-15T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd6d68565-468f-5de8-9ba4-7730154635a8',15,'2E',141,141,2,'2025-12-15T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3939561c-8f39-5236-930c-45557f84f9af',92.25,'CONFIRMED','CARD','2025-12-15T12:00:00';
EXEC air.usp_RegisterPayment @id,'89b5f526-fbb5-5501-bd18-ef843e20b176',92.25,'CONFIRMED','CARD','2025-12-15T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '10424607-4e1a-5229-8910-4d62c0dd248f',15,'4D',34,76,1,'2025-12-15T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e19820e4-9782-5e38-8d98-cd9f95b4bc0f',102.50,'CONFIRMED','CARD','2025-12-15T11:00:00';
EXEC air.usp_RegisterPayment @id,'c9be4251-cbb1-5864-b69e-8170d51af9ec',102.50,'CONFIRMED','CARD','2025-12-15T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c046647d-bc09-5e87-9ed3-fd6894d9e323',15,'2D',148,148,2,'2025-12-15T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4643d477-a323-53de-8b9b-4d83f4a70ac2',102.50,'CONFIRMED','CARD','2025-12-15T10:00:00';
EXEC air.usp_RegisterPayment @id,'8df31d6e-afea-506a-a6af-85128d240cc5',102.50,'CONFIRMED','CARD','2025-12-15T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b836a3f2-109d-537a-9378-0d44cff7f0e3',15,'4A',194,194,1,'2025-12-15T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7faa368a-ea78-5d16-ae77-4e6e732c5ee1',102.50,'CONFIRMED','CARD','2025-12-15T09:00:00';
EXEC air.usp_RegisterPayment @id,'1a7ddddc-21ee-5551-a8a4-d823c508e17d',102.50,'CONFIRMED','CARD','2025-12-15T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a7a15c92-322a-51ba-bec6-8bcfee315803',15,'5F',181,143,2,'2025-12-15T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b3f5b901-e4b8-5a62-b96b-86310cfc32fa',1.00,'FAILED','CARD','2025-12-15T07:00:00';
EXEC air.usp_RegisterPayment @id,'b7f77de4-a77f-530f-87a4-42c959828a2d',92.25,'CONFIRMED','CARD','2025-12-15T08:00:00';
EXEC air.usp_RegisterPayment @id,'9593e07b-6a56-5cf2-95b1-a092d6c7dfdd',92.25,'CONFIRMED','CARD','2025-12-15T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e5eb3777-0641-598c-9880-44c489c767fd',15,'7F',95,95,1,'2025-12-15T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5e07f9bb-9d63-5d1d-928a-b27e2988729a',102.50,'CONFIRMED','CARD','2025-12-15T07:00:00';
EXEC air.usp_RegisterPayment @id,'c94132f7-0814-5b32-a2af-fcdc0b397d4a',102.50,'CONFIRMED','CARD','2025-12-15T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0eed0d33-3000-5904-9a12-779e7e809a0a',15,'4F',156,156,2,'2025-12-15T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'de0f7ee9-1573-5710-8749-99ff4d41e6e2',102.50,'CONFIRMED','CARD','2025-12-15T06:00:00';
EXEC air.usp_RegisterPayment @id,'c373971e-592e-53f6-ad6c-6d8d5a622c13',102.50,'CONFIRMED','CARD','2025-12-15T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b7a10ced-affc-5de4-8763-eabd013a89c9',15,'3A',36,77,1,'2025-12-15T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3e2c50e2-6d8a-528f-ab7c-d43fb7bb071b',102.50,'CONFIRMED','CARD','2025-12-15T05:00:00';
EXEC air.usp_RegisterPayment @id,'8da2f937-d9c9-5c3d-aed5-de0ffd509de5',102.50,'CONFIRMED','CARD','2025-12-15T06:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-15T07:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e7077752-d27e-59df-aa7a-6099766e8cb6',16,'1C',109,89,2,'2025-12-16T19:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a6c1ac04-3b12-5f4b-aa97-ebb63b3e47ea',1.00,'FAILED','CARD','2025-12-16T20:00:00';
EXEC air.usp_RegisterPayment @id,'763c9412-2c01-5edc-a9ea-550ae535d4fd',247.50,'CONFIRMED','CARD','2025-12-16T21:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-16T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7961053c-029e-5b88-8afb-d61e5ae2c015',16,'1E',131,131,1,'2025-12-16T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b94376c7-2254-5c9a-b2bb-22c03dce3656',275.00,'CONFIRMED','CARD','2025-12-16T20:00:00';
EXEC air.usp_RegisterPayment @id,'704301cf-9173-5a47-bbe9-d16671b35601',275.00,'CONFIRMED','CARD','2025-12-16T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fb2e9dae-bf14-57a9-9b54-19e112a01804',16,'1F',26,26,2,'2025-12-16T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4777b3b6-c881-5f3d-bc80-a27171c38bb9',275.00,'CONFIRMED','CARD','2025-12-16T19:00:00';
EXEC air.usp_RegisterPayment @id,'5ee9dd33-7000-51f9-a8eb-f23c5fc96bce',275.00,'CONFIRMED','CARD','2025-12-16T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f64b7d86-b975-5b29-8e81-fdee32fc5964',16,'1A',42,41,1,'2025-12-16T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'287c796c-bb1e-51f6-8f0a-b73b3863fe38',275.00,'CONFIRMED','CARD','2025-12-16T18:00:00';
EXEC air.usp_RegisterPayment @id,'09cbc1cf-e56c-594b-a511-051c9ecbd7b5',275.00,'CONFIRMED','CARD','2025-12-16T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7238494d-3853-5c5b-a438-6bf79dc5ff36',16,'7D',140,140,2,'2025-12-16T15:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b3b83134-ffc9-5eb5-9c3b-ff79015467af',99.00,'CONFIRMED','CARD','2025-12-16T17:00:00';
EXEC air.usp_RegisterPayment @id,'d6abd38c-1e69-539e-93b2-5830d01275a7',99.00,'CONFIRMED','CARD','2025-12-16T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd91ea3b5-f044-512c-82f4-11293d9a5fa2',16,'6F',176,176,1,'2025-12-16T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2abaa24d-e400-5a34-bc8f-33b3c3e06ec2',110.00,'CONFIRMED','CARD','2025-12-16T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c9d73be0-0d28-53bf-b314-7de6a551b185',16,'2E',52,200,2,'2025-12-16T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a67c6ed2-887e-579f-ac4e-69b30ebb917c',1.00,'FAILED','CARD','2025-12-16T14:00:00';
EXEC air.usp_RegisterPayment @id,'bbae900d-393b-584e-8fe3-20bd9d1ff2ea',110.00,'CONFIRMED','CARD','2025-12-16T15:00:00';
EXEC air.usp_RegisterPayment @id,'e9a4f7ed-cc4d-5080-96f4-62f492801f89',110.00,'CONFIRMED','CARD','2025-12-16T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '92802a22-f9f0-5862-b44e-ddaf5f9d0a5d',16,'7C',133,133,1,'2025-12-16T12:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'afc0590b-83de-5464-b2c6-0876dbf81189',16,'6E',150,150,2,'2025-12-16T11:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'55291072-1062-519e-ad1b-f47d3c3f1dc6',99.00,'CONFIRMED','CARD','2025-12-16T13:00:00';
EXEC air.usp_RegisterPayment @id,'3530a44c-4a21-5e49-a27f-3fa3c074c4c6',99.00,'CONFIRMED','CARD','2025-12-16T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9c996d73-f4e6-5b16-bf9a-729f566ad9a9',16,'4A',171,181,1,'2025-12-16T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6468ce74-6192-56bd-93f0-9e734400115d',110.00,'CONFIRMED','CARD','2025-12-16T12:00:00';
EXEC air.usp_RegisterPayment @id,'aac571ce-3971-5495-b445-c154b323174c',110.00,'CONFIRMED','CARD','2025-12-16T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-16T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '63a43647-a829-57ee-8539-ccf632eabaf4',16,'3A',187,187,2,'2025-12-16T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cf1d71ab-2540-5f15-a330-eda7daefd3e7',110.00,'CONFIRMED','CARD','2025-12-16T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5a042254-8b99-5419-8074-dac283649fa2',16,'7E',61,61,1,'2025-12-16T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3555558e-d3f8-536c-b22a-9c97a6a0175f',110.00,'CONFIRMED','CARD','2025-12-16T10:00:00';
EXEC air.usp_RegisterPayment @id,'33168bf5-8cd1-5401-8eda-add45ef9c16d',110.00,'CONFIRMED','CARD','2025-12-16T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd0c2f109-18da-5ede-a2a2-d851d3306396',16,'3F',140,154,2,'2025-12-16T07:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'71bfbbc0-d9a8-51d8-bc9f-ecc636da3698',1.00,'FAILED','CARD','2025-12-16T08:00:00';
EXEC air.usp_RegisterPayment @id,'94f19ed0-2465-554e-9272-67091ebb28bb',99.00,'CONFIRMED','CARD','2025-12-16T09:00:00';
EXEC air.usp_RegisterPayment @id,'a5273425-1006-5801-b891-13a96522595c',99.00,'CONFIRMED','CARD','2025-12-16T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '794ff1b6-c6eb-5b6a-a86f-aa37caadc8b6',16,'5B',59,59,1,'2025-12-16T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'50283e72-75bb-5688-b688-cd8b3acab350',110.00,'CONFIRMED','CARD','2025-12-16T08:00:00';
EXEC air.usp_RegisterPayment @id,'ca9b56cc-fe62-5aee-a9ac-0fb33df77c6c',110.00,'CONFIRMED','CARD','2025-12-16T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '969d20ba-06d6-56a2-a199-d36a293d68f1',16,'5D',119,119,2,'2025-12-16T05:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd1bebdbd-a6e7-50ab-99e6-c3d55b522429',16,'7F',120,36,1,'2025-12-16T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dcd8cb89-4441-51fb-84b8-035b18a4db4e',110.00,'CONFIRMED','CARD','2025-12-16T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '10942878-3b27-5afa-9083-af93287a2cdc',16,'3D',10,10,2,'2025-12-16T03:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'10753948-e482-5c07-a653-97a2924218c8',99.00,'CONFIRMED','CARD','2025-12-16T05:00:00';
EXEC air.usp_RegisterPayment @id,'6e8e05c7-7a5e-520b-bcdb-389419f1398b',99.00,'CONFIRMED','CARD','2025-12-16T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '81137741-3116-5a89-a4a3-9fc39a1cc155',16,'2B',145,145,1,'2025-12-16T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b1cf9bef-4ba5-55b0-b05f-9f99e2a6af14',110.00,'CONFIRMED','CARD','2025-12-16T04:00:00';
EXEC air.usp_RegisterPayment @id,'0b13b73c-6536-5855-90eb-d91b97b7695c',110.00,'CONFIRMED','CARD','2025-12-16T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '51029986-4db1-5456-b3e1-eb7b9b92ca37',16,'7A',184,170,2,'2025-12-16T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'87be5109-88d0-52de-a3ad-258e818e9d92',1.00,'FAILED','CARD','2025-12-16T02:00:00';
EXEC air.usp_RegisterPayment @id,'747cdd53-6e67-58e7-9af0-0acc2805c476',110.00,'CONFIRMED','CARD','2025-12-16T03:00:00';
EXEC air.usp_RegisterPayment @id,'908ddd3d-2495-5903-874f-160bc0536c16',110.00,'CONFIRMED','CARD','2025-12-16T04:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-16T05:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1720e5a2-16fb-5e96-99b5-0fe96f8c6a71',16,'2F',4,4,1,'2025-12-16T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cf9cdff8-2d56-5376-b115-5af74127f372',110.00,'CONFIRMED','CARD','2025-12-16T02:00:00';
EXEC air.usp_RegisterPayment @id,'e878ce34-4b8a-5ad9-925a-e913971beac9',110.00,'CONFIRMED','CARD','2025-12-16T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b41f5377-8cd1-50f6-bcb3-bbbb017369ec',16,'5F',3,3,2,'2025-12-15T23:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'00425509-1c49-59cf-b4f2-c944ee57de77',99.00,'CONFIRMED','CARD','2025-12-16T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd23c8d4b-8906-5216-b9b1-96776fbbf8b9',16,'7B',145,44,1,'2025-12-15T22:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fa6639be-e997-5397-a61b-aee0e82e2178',16,'4E',131,131,2,'2025-12-15T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c7b666be-5949-5fac-b8ed-9b9b87f7e404',110.00,'CONFIRMED','CARD','2025-12-15T23:00:00';
EXEC air.usp_RegisterPayment @id,'5e1a4cc1-e50f-5fa6-bfc0-514ebce8fbbd',110.00,'CONFIRMED','CARD','2025-12-16T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '118166f7-7b08-54d8-942f-3ea8a8e556ec',16,'4F',72,72,1,'2025-12-15T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f2e86132-45fe-5d1b-b733-320ba08fea93',110.00,'CONFIRMED','CARD','2025-12-15T22:00:00';
EXEC air.usp_RegisterPayment @id,'d32b0563-8671-52a8-a8e0-db0ef16efbb7',110.00,'CONFIRMED','CARD','2025-12-15T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a5f9e7c9-2873-57c0-beb0-7db299ccf4d2',16,'6B',171,125,2,'2025-12-15T19:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'11a95519-be2c-5bbb-a6b7-0a7d09b711c9',1.00,'FAILED','CARD','2025-12-15T20:00:00';
EXEC air.usp_RegisterPayment @id,'61958690-233c-5de4-a7a2-cfc04708e510',99.00,'CONFIRMED','CARD','2025-12-15T21:00:00';
EXEC air.usp_RegisterPayment @id,'79c531db-8d5d-5c70-9f98-0cc82bee0047',99.00,'CONFIRMED','CARD','2025-12-15T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2eec8127-1a35-5834-bcc2-134fe36b0535',16,'5A',29,29,1,'2025-12-15T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cd9513ff-a570-52b8-9510-891e99d1300b',110.00,'CONFIRMED','CARD','2025-12-15T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c71c79ed-c147-55a7-93c1-67303b3117bd',16,'3B',151,151,2,'2025-12-15T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6621fa0e-d49a-5e21-8eaa-4ad60e7bae2b',110.00,'CONFIRMED','CARD','2025-12-15T19:00:00';
EXEC air.usp_RegisterPayment @id,'b8909829-a232-5e38-ad38-b908bcda0b4c',110.00,'CONFIRMED','CARD','2025-12-15T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3519aeba-1f04-5fa1-af0b-69ea3f3660a8',16,'4B',64,110,1,'2025-12-15T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c3265cf8-295f-5484-9889-9422fa25c5e9',110.00,'CONFIRMED','CARD','2025-12-15T18:00:00';
EXEC air.usp_RegisterPayment @id,'38294c11-7ff3-5800-bf94-4d56bec2a5b9',110.00,'CONFIRMED','CARD','2025-12-15T19:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-15T20:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '53859a0b-f3dd-5613-ba79-0e8786c13e2a',17,'1F',156,61,2,'2025-12-20T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6f2078d9-97bc-5a80-b118-ed3aed1c71bb',1.00,'FAILED','CARD','2025-12-20T14:00:00';
EXEC air.usp_RegisterPayment @id,'de88c31d-f9e8-50a1-817c-866ce4cdfb08',129.38,'CONFIRMED','CARD','2025-12-20T15:00:00';
EXEC air.usp_RegisterPayment @id,'d97b81ad-09e0-5e4c-bfe2-41f775f4b287',129.37,'CONFIRMED','CARD','2025-12-20T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-20T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '209859f8-c284-516d-8c69-23febae44903',17,'1D',151,151,1,'2025-12-20T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3d07f5ee-ab80-55f4-8c9d-c3fecb7051db',143.75,'CONFIRMED','CARD','2025-12-20T14:00:00';
EXEC air.usp_RegisterPayment @id,'adf72b82-b08e-5889-864c-218899745c1e',143.75,'CONFIRMED','CARD','2025-12-20T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e83016b3-58a5-5ed7-b3e5-3d5aee02a086',17,'1E',93,93,2,'2025-12-20T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'593ab1e6-17c5-5c77-a376-f9f4e5f25342',143.75,'CONFIRMED','CARD','2025-12-20T13:00:00';
EXEC air.usp_RegisterPayment @id,'a11c5a19-914f-5a73-a047-a0dd6573e661',143.75,'CONFIRMED','CARD','2025-12-20T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ccb1ec4a-fd0a-5a35-bb44-d3751952f4ee',17,'1C',48,179,1,'2025-12-20T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'66a5ed79-62c9-5120-b441-efaf0285c829',143.75,'CONFIRMED','CARD','2025-12-20T12:00:00';
EXEC air.usp_RegisterPayment @id,'965e681d-9b71-54a3-8bac-881648f2fc3c',143.75,'CONFIRMED','CARD','2025-12-20T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fa97a30e-0743-5ee8-8392-5af3818d7bda',17,'6E',49,49,2,'2025-12-20T09:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'33265af0-9ae1-56de-87a9-efc8efc23410',51.75,'CONFIRMED','CARD','2025-12-20T11:00:00';
EXEC air.usp_RegisterPayment @id,'c4ff87d9-d5ec-5392-a9bf-a98f5244b608',51.75,'CONFIRMED','CARD','2025-12-20T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '11824397-87ea-56f1-933e-3b81c6f15be4',17,'2A',58,58,1,'2025-12-20T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2b34decf-7892-5951-b889-26462ba8c561',57.50,'CONFIRMED','CARD','2025-12-20T10:00:00';
EXEC air.usp_RegisterPayment @id,'34c730ea-a6b7-5221-8103-a579232afe7a',57.50,'CONFIRMED','CARD','2025-12-20T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'eccb1c9e-3187-561b-b77a-242d39e5095d',17,'2C',138,153,2,'2025-12-20T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'69319b43-a285-5f57-b21f-1778a7afc37d',1.00,'FAILED','CARD','2025-12-20T08:00:00';
EXEC air.usp_RegisterPayment @id,'cc5d6bd6-3698-5c35-914a-4c3498258a16',57.50,'CONFIRMED','CARD','2025-12-20T09:00:00';
EXEC air.usp_RegisterPayment @id,'de35dbae-fc7f-5f86-903b-fe1e19bd4843',57.50,'CONFIRMED','CARD','2025-12-20T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5c565d08-4777-5b2d-9432-89c580cfd816',17,'7E',144,144,1,'2025-12-20T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b45394e1-f533-593f-b339-2712557acacd',57.50,'CONFIRMED','CARD','2025-12-20T08:00:00';
EXEC air.usp_RegisterPayment @id,'a88f6f8c-77bb-566d-ad58-027108cd0c9c',57.50,'CONFIRMED','CARD','2025-12-20T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '380854fe-c61d-50a2-bf29-4c38d6640c47',17,'5A',34,34,2,'2025-12-20T05:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'496087ef-c27c-5036-8c16-2e8b27b3f146',51.75,'CONFIRMED','CARD','2025-12-20T07:00:00';
EXEC air.usp_RegisterPayment @id,'3066ff63-1ad7-5882-bf33-ba8e4e88ebad',51.75,'CONFIRMED','CARD','2025-12-20T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f2b2bd30-ad7a-5265-b279-124ed8dc453c',17,'3F',5,57,1,'2025-12-20T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7423da57-ca0e-5ce3-8390-c3353b284e7b',57.50,'CONFIRMED','CARD','2025-12-20T06:00:00';
EXEC air.usp_RegisterPayment @id,'d1b25f79-b250-5c6f-a1d8-447461fdbcc9',57.50,'CONFIRMED','CARD','2025-12-20T07:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-20T08:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1040eb3d-ac5c-5bf8-8161-87a21d804165',17,'6A',46,46,2,'2025-12-20T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d2ee7324-5b16-54c8-b63f-235f46e4cb79',57.50,'CONFIRMED','CARD','2025-12-20T05:00:00';
EXEC air.usp_RegisterPayment @id,'cf7ff420-3834-51a8-9dd3-97b2927304b6',57.50,'CONFIRMED','CARD','2025-12-20T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '77e758d4-addf-5118-bf2e-ab0c06e403ef',17,'2D',156,156,1,'2025-12-20T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fd6d80e2-9225-5698-8126-401b1fc98153',57.50,'CONFIRMED','CARD','2025-12-20T04:00:00';
EXEC air.usp_RegisterPayment @id,'8a3495d5-5490-5c8b-8c61-8ab166f5916f',57.50,'CONFIRMED','CARD','2025-12-20T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b67ac2d9-0b6f-5903-9a7d-5875c21a9f76',17,'5B',155,111,2,'2025-12-20T01:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e375a15a-d5a7-5e83-b76a-fc9df17f0467',1.00,'FAILED','CARD','2025-12-20T02:00:00';
EXEC air.usp_RegisterPayment @id,'e1ad8c12-f38a-5885-adae-5cb94503af01',51.75,'CONFIRMED','CARD','2025-12-20T03:00:00';
EXEC air.usp_RegisterPayment @id,'d67508f9-5e91-5ed4-9d71-da8088507d78',51.75,'CONFIRMED','CARD','2025-12-20T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bebf8743-ae4a-54fa-85cf-b0c9e6266c0d',17,'7A',6,6,1,'2025-12-20T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'45cd8d5f-c92b-5dfb-a867-20267ec1c72d',57.50,'CONFIRMED','CARD','2025-12-20T02:00:00';
EXEC air.usp_RegisterPayment @id,'c1944466-1d4a-5fc6-bcc3-27e96a7efb97',57.50,'CONFIRMED','CARD','2025-12-20T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c0f4b039-93e9-5d13-8f9f-e94818cf3d3c',17,'5C',76,76,2,'2025-12-19T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fd0f6a51-a3cb-5cd8-ad0e-bfd4a36ef459',57.50,'CONFIRMED','CARD','2025-12-20T01:00:00';
EXEC air.usp_RegisterPayment @id,'381b437a-5048-538a-88d6-1e323ab920d8',57.50,'CONFIRMED','CARD','2025-12-20T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2bf4bbc4-2b66-5993-90dd-f62d0d46e5cc',17,'4A',8,156,1,'2025-12-19T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8d337de3-86da-5326-b7e4-e1377039eee2',57.50,'CONFIRMED','CARD','2025-12-20T00:00:00';
EXEC air.usp_RegisterPayment @id,'eb83a5c7-302b-5f6d-9660-e7dd089d8631',57.50,'CONFIRMED','CARD','2025-12-20T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '072cc218-692d-55d9-9387-4813be5d9612',17,'3D',200,200,2,'2025-12-19T21:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7fe14259-d626-5e59-a753-76901268ca44',51.75,'CONFIRMED','CARD','2025-12-19T23:00:00';
EXEC air.usp_RegisterPayment @id,'1fd81359-2701-5f3e-89ed-88f0329a2805',51.75,'CONFIRMED','CARD','2025-12-20T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '46280be1-78f7-5c0c-9079-27ad2c1d9544',17,'5E',47,47,1,'2025-12-19T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'656a8060-19b9-5875-b10a-1fb2ee86790c',57.50,'CONFIRMED','CARD','2025-12-19T22:00:00';
EXEC air.usp_RegisterPayment @id,'c32682b5-b9a5-5108-8c0c-6e000d22e375',57.50,'CONFIRMED','CARD','2025-12-19T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd649e84c-6726-57da-af24-53d9650e7672',17,'5D',146,126,2,'2025-12-19T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'04b50bd9-3caa-5438-859f-66a9adc9b0fe',1.00,'FAILED','CARD','2025-12-19T20:00:00';
EXEC air.usp_RegisterPayment @id,'3c841a79-3dfb-5004-af80-7b7db55bddfe',57.50,'CONFIRMED','CARD','2025-12-19T21:00:00';
EXEC air.usp_RegisterPayment @id,'05f7197e-2a13-5144-ab0e-68e5325d75e1',57.50,'CONFIRMED','CARD','2025-12-19T22:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-19T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bb9f7fd6-8ba8-5c13-8f9c-8fa23e9b2170',17,'2F',53,53,1,'2025-12-19T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bf7879f8-4ad8-5fad-9b40-708fcf3514b3',57.50,'CONFIRMED','CARD','2025-12-19T20:00:00';
EXEC air.usp_RegisterPayment @id,'c04f5f7c-8b3d-598e-8d5c-82664a832154',57.50,'CONFIRMED','CARD','2025-12-19T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '02431906-1920-5fcc-9b21-be5dd5177d10',17,'6D',61,61,2,'2025-12-19T17:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'87b35162-92ae-514d-b213-9f70e1a89313',51.75,'CONFIRMED','CARD','2025-12-19T19:00:00';
EXEC air.usp_RegisterPayment @id,'bcc24af8-c94e-5bdf-b8bb-303910a202c6',51.75,'CONFIRMED','CARD','2025-12-19T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7bcd2714-620e-527e-b981-c9d13989b590',17,'3C',190,8,1,'2025-12-19T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d77069ce-3917-5947-968a-336c886ea2f7',57.50,'CONFIRMED','CARD','2025-12-19T18:00:00';
EXEC air.usp_RegisterPayment @id,'33f2bdf9-ac45-5c01-a607-b78596d503a1',57.50,'CONFIRMED','CARD','2025-12-19T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9689e7bc-1d59-566f-a5b5-c2b3e501feab',17,'4E',110,110,2,'2025-12-19T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'72a90b68-117c-53ab-9e2c-19595c88db0e',57.50,'CONFIRMED','CARD','2025-12-19T17:00:00';
EXEC air.usp_RegisterPayment @id,'30303e54-ff84-513f-b1cb-46a6ac5c628f',57.50,'CONFIRMED','CARD','2025-12-19T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '34d9b45a-43ef-52c1-9abb-8cb2ccdad607',17,'4D',141,141,1,'2025-12-19T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4ab58bd2-844e-59c4-8371-7008997dd511',57.50,'CONFIRMED','CARD','2025-12-19T16:00:00';
EXEC air.usp_RegisterPayment @id,'eea55456-dc0c-5ff9-be62-9eccd402085b',57.50,'CONFIRMED','CARD','2025-12-19T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3c6e0304-7632-5312-abd4-84ef7ef09b7e',17,'6F',84,169,2,'2025-12-19T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'27adbebf-7e72-56a0-9c4e-42b84412e934',1.00,'FAILED','CARD','2025-12-19T14:00:00';
EXEC air.usp_RegisterPayment @id,'e48d4875-011a-58fb-baec-152b9752c14e',51.75,'CONFIRMED','CARD','2025-12-19T15:00:00';
EXEC air.usp_RegisterPayment @id,'e40f9cf7-feda-5694-ab10-1da29f1d0611',51.75,'CONFIRMED','CARD','2025-12-19T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ab80c45b-503f-5c82-8d5d-2d3200d66e9a',17,'4F',107,107,1,'2025-12-19T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e2020de6-9923-5096-b18f-ef12ae8b3212',57.50,'CONFIRMED','CARD','2025-12-19T14:00:00';
EXEC air.usp_RegisterPayment @id,'a2838f9a-afa1-5546-b1c3-2fc6c10d97fc',57.50,'CONFIRMED','CARD','2025-12-19T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a3483e62-19ba-5616-85e1-006c4793d0ea',17,'4B',43,43,2,'2025-12-19T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cddaab4b-37f2-5e05-9373-a442d5ffe8a6',57.50,'CONFIRMED','CARD','2025-12-19T13:00:00';
EXEC air.usp_RegisterPayment @id,'ecba01f3-9028-53fe-9ad8-d96436ee02f2',57.50,'CONFIRMED','CARD','2025-12-19T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0dd2609e-fe8f-553b-a99e-40e5f4905d57',17,'7B',182,175,1,'2025-12-19T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'262261e9-46a2-5a55-b1c0-120a1f3f9f4a',57.50,'CONFIRMED','CARD','2025-12-19T12:00:00';
EXEC air.usp_RegisterPayment @id,'d0492554-55b8-571b-8908-3a6918db5894',57.50,'CONFIRMED','CARD','2025-12-19T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-19T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3f7f52a3-69f9-54a1-bf68-d484c2278c41',18,'1B',136,82,2,'2025-12-20T16:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d5c8d259-8640-5532-ad7d-23214027f9b6',1.00,'FAILED','CARD','2025-12-20T17:00:00';
EXEC air.usp_RegisterPayment @id,'48cf2bb2-02b2-5712-83b5-323db730358b',146.25,'CONFIRMED','CARD','2025-12-20T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-20T20:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9639586f-5f5b-5fe4-97ff-7817d229746b',18,'1A',5,5,1,'2025-12-20T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'87e44d20-1229-5644-95e4-a14ff8fd2ae4',162.50,'CONFIRMED','CARD','2025-12-20T17:00:00';
EXEC air.usp_RegisterPayment @id,'2d0b9688-f498-53a0-ac21-1ca4c6c35977',162.50,'CONFIRMED','CARD','2025-12-20T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bef7cb21-468d-535c-9cea-9e0f93a2d389',18,'1C',82,82,2,'2025-12-20T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8e449f3a-0bb2-5c94-9145-aa3bdb1a198a',162.50,'CONFIRMED','CARD','2025-12-20T16:00:00';
EXEC air.usp_RegisterPayment @id,'84e63735-83fb-5f02-83c6-e6a86b0d18e2',162.50,'CONFIRMED','CARD','2025-12-20T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e5d92d67-baa7-5f85-8676-44935fc042c2',18,'1F',120,134,1,'2025-12-20T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6d31f75e-657e-55c3-92d0-4afd2dd7267c',162.50,'CONFIRMED','CARD','2025-12-20T15:00:00';
EXEC air.usp_RegisterPayment @id,'ce3dbc8a-f022-5b52-b56f-08cc853106a6',162.50,'CONFIRMED','CARD','2025-12-20T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9be8c95c-3f30-5450-84c3-e1541648b672',18,'6F',112,112,2,'2025-12-20T12:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'32d8eb4b-6284-514c-9607-1112ccb8e063',58.50,'CONFIRMED','CARD','2025-12-20T14:00:00';
EXEC air.usp_RegisterPayment @id,'a229910d-382f-59d8-9fd8-e99164275e5f',58.50,'CONFIRMED','CARD','2025-12-20T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'da525e68-2044-544c-8b33-96eda31ba8eb',18,'5E',187,187,1,'2025-12-20T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d0d15da8-39f7-533d-8eb2-775f405fc11a',65.00,'CONFIRMED','CARD','2025-12-20T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5858d525-a731-5955-85db-5859471352df',18,'4D',43,149,2,'2025-12-20T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f56347c8-edfe-57d5-b622-25fa999c2035',1.00,'FAILED','CARD','2025-12-20T11:00:00';
EXEC air.usp_RegisterPayment @id,'19f14a80-0565-56be-a4da-4dcaafe0d7e7',65.00,'CONFIRMED','CARD','2025-12-20T12:00:00';
EXEC air.usp_RegisterPayment @id,'4689eb27-df11-566c-9e85-3aa136976be9',65.00,'CONFIRMED','CARD','2025-12-20T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8b856c26-69d5-5bbc-b66f-a5bb9585a44f',18,'2E',181,181,1,'2025-12-20T09:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7a3b8a19-5d45-594b-98a6-ed5470762006',18,'4C',3,3,2,'2025-12-20T08:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2a31a1ed-d340-5905-871e-331e7488eeea',58.50,'CONFIRMED','CARD','2025-12-20T10:00:00';
EXEC air.usp_RegisterPayment @id,'6a0d3dc9-c418-5f8f-b1fa-eeaa00f155e6',58.50,'CONFIRMED','CARD','2025-12-20T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '952f7328-4d5a-5897-8e3a-db6472ef1af4',18,'3B',76,85,1,'2025-12-20T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fd85bcd4-4273-5866-9183-0e889e4613c8',65.00,'CONFIRMED','CARD','2025-12-20T09:00:00';
EXEC air.usp_RegisterPayment @id,'6344ed91-9cd2-5227-bf79-c0bdd2c01104',65.00,'CONFIRMED','CARD','2025-12-20T10:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-20T11:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '29134021-a9a0-5c62-bd86-6b5e6015ab26',18,'2A',12,12,2,'2025-12-20T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ec51c958-54a2-5380-848c-311f50678279',65.00,'CONFIRMED','CARD','2025-12-20T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '51fe3b43-d921-58c6-8cb0-c934c4e69262',18,'5B',78,78,1,'2025-12-20T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e8428a2f-6086-567a-b0eb-5b7605330699',65.00,'CONFIRMED','CARD','2025-12-20T07:00:00';
EXEC air.usp_RegisterPayment @id,'acc5e46d-3827-5377-8352-43d3c4090880',65.00,'CONFIRMED','CARD','2025-12-20T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '689585bd-76e4-5115-8cd2-99cb0a0be901',18,'2B',124,37,2,'2025-12-20T04:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d4b2ce0c-7da3-5a32-8f53-ed083948ee7b',1.00,'FAILED','CARD','2025-12-20T05:00:00';
EXEC air.usp_RegisterPayment @id,'22f2f209-0fe0-5e3f-8dc1-e26974d56f61',58.50,'CONFIRMED','CARD','2025-12-20T06:00:00';
EXEC air.usp_RegisterPayment @id,'f53138e9-7a27-50f2-81d6-836bba906b2c',58.50,'CONFIRMED','CARD','2025-12-20T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '61b41440-edcf-5ced-a4ef-1c1224bb25a7',18,'6D',172,172,1,'2025-12-20T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dd59118b-95c5-5ce7-8a9e-32276b8f42ab',65.00,'CONFIRMED','CARD','2025-12-20T05:00:00';
EXEC air.usp_RegisterPayment @id,'58cc329d-e38d-5e84-8b71-d152ae86fa8c',65.00,'CONFIRMED','CARD','2025-12-20T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '42199ee4-f88b-548f-b173-c9ff1fb9deae',18,'5F',167,167,2,'2025-12-20T02:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '01536604-5a35-5651-a6b0-f4c276454c25',18,'3A',74,7,1,'2025-12-20T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'54c2d0b0-9c9a-5ff9-81a0-2c5279ec7e1a',65.00,'CONFIRMED','CARD','2025-12-20T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2f252c20-6f07-52ad-9a42-87c9678462e6',18,'7D',121,121,2,'2025-12-20T00:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cc277e57-d419-5314-ad01-ac545df27b85',58.50,'CONFIRMED','CARD','2025-12-20T02:00:00';
EXEC air.usp_RegisterPayment @id,'06bb915e-f755-524f-a303-4a46afca509e',58.50,'CONFIRMED','CARD','2025-12-20T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'dc33c927-fa1a-5255-bef6-69032beec91b',18,'4A',32,32,1,'2025-12-19T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e2111018-07dd-5c1c-9d12-68019d44930e',65.00,'CONFIRMED','CARD','2025-12-20T01:00:00';
EXEC air.usp_RegisterPayment @id,'b8b26386-d741-5bf8-8b23-a682c45d03e1',65.00,'CONFIRMED','CARD','2025-12-20T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7a459701-de1d-57e0-84ae-fa1d661265e1',18,'7E',36,129,2,'2025-12-19T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bd06483e-b229-5b51-9b71-d11edbd160eb',1.00,'FAILED','CARD','2025-12-19T23:00:00';
EXEC air.usp_RegisterPayment @id,'0368d4e4-86f3-5f1f-b012-94352e85d3ff',65.00,'CONFIRMED','CARD','2025-12-20T00:00:00';
EXEC air.usp_RegisterPayment @id,'27ef4eab-3eeb-56b5-ae3f-80fefa0d3de3',65.00,'CONFIRMED','CARD','2025-12-20T01:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-20T02:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd7e50984-21a0-5f0d-900f-c25121b1454e',18,'5C',25,25,1,'2025-12-19T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7097c28e-1b60-5a0c-a3fd-a19090e18739',65.00,'CONFIRMED','CARD','2025-12-19T23:00:00';
EXEC air.usp_RegisterPayment @id,'a6b2139a-14b0-53f1-bbe2-96e7777bda71',65.00,'CONFIRMED','CARD','2025-12-20T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4c538c23-cdcc-5acd-a412-3ccbf035ee89',18,'2F',20,20,2,'2025-12-19T20:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5764cf93-f588-5233-91a0-a97599d22acc',58.50,'CONFIRMED','CARD','2025-12-19T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '90486392-0b28-5d0a-a73e-9ed29ef528a3',18,'6E',185,35,1,'2025-12-19T19:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '84bad2c1-912e-5990-947a-4a831088035b',18,'7C',26,26,2,'2025-12-19T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e69f496c-22c0-55d6-ae1f-abf70679888e',65.00,'CONFIRMED','CARD','2025-12-19T20:00:00';
EXEC air.usp_RegisterPayment @id,'29c0c881-57e2-5ccb-8aa8-2d55f429382b',65.00,'CONFIRMED','CARD','2025-12-19T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b66be82f-f768-50a0-af23-59f90f63a026',18,'2C',84,84,1,'2025-12-19T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'22949405-d3dd-5f01-8054-2f8df67ad20f',65.00,'CONFIRMED','CARD','2025-12-19T19:00:00';
EXEC air.usp_RegisterPayment @id,'b3432833-90a0-5a47-ae32-8273ec309439',65.00,'CONFIRMED','CARD','2025-12-19T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f40e6994-e790-5a1d-bdad-451b91b6c624',18,'7B',52,53,2,'2025-12-19T16:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'31979115-7af8-5764-903f-25485e1cdd10',1.00,'FAILED','CARD','2025-12-19T17:00:00';
EXEC air.usp_RegisterPayment @id,'b72ea9d7-9c9f-5a98-858c-680c2d79cb57',58.50,'CONFIRMED','CARD','2025-12-19T18:00:00';
EXEC air.usp_RegisterPayment @id,'ff662317-cf3e-5461-8a7c-f0c0100e9f83',58.50,'CONFIRMED','CARD','2025-12-19T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '588cb9bf-0d6f-5243-bd3a-ce17a0a02e77',18,'4F',17,17,1,'2025-12-19T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'16078f25-6cdd-5aaf-9aea-aae64c1be47f',65.00,'CONFIRMED','CARD','2025-12-19T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '186bbaf1-e90f-538e-91ce-47e0ba6a7f0f',18,'6A',137,137,2,'2025-12-19T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9ef0a0e9-c8a6-511d-9ca3-85b428245b0d',65.00,'CONFIRMED','CARD','2025-12-19T16:00:00';
EXEC air.usp_RegisterPayment @id,'35e82ec4-5191-563e-9ce3-08fba6ec7e8f',65.00,'CONFIRMED','CARD','2025-12-19T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fb81a099-219d-5cf8-b0d9-6e169046e650',18,'5A',180,51,1,'2025-12-19T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7dc4d05f-a65c-5ea0-a4b5-afb7ad309d56',65.00,'CONFIRMED','CARD','2025-12-19T15:00:00';
EXEC air.usp_RegisterPayment @id,'792b05f3-cf71-5738-8cf5-8050c60c4259',65.00,'CONFIRMED','CARD','2025-12-19T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-19T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b1bde901-f1cf-5d0a-a36e-1d3a14257b16',19,'1B',119,191,2,'2025-12-21T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5bf66ea8-0436-5c44-b21d-cf6af0f2160a',1.00,'FAILED','CARD','2025-12-21T14:00:00';
EXEC air.usp_RegisterPayment @id,'86f5cc20-d900-56db-8a71-cdbe206064ec',163.13,'CONFIRMED','CARD','2025-12-21T15:00:00';
EXEC air.usp_RegisterPayment @id,'21e27040-94e5-5690-8193-04a5380af7d6',163.12,'CONFIRMED','CARD','2025-12-21T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-21T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f7f3c1bc-ab24-5641-b021-fe861975c523',19,'1F',51,51,1,'2025-12-21T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'78fff55f-d7e0-5064-bf6e-b7375cb7808a',181.25,'CONFIRMED','CARD','2025-12-21T14:00:00';
EXEC air.usp_RegisterPayment @id,'f02e2e0a-bcea-575b-a83d-f3d7c3c0bfd7',181.25,'CONFIRMED','CARD','2025-12-21T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '16ef3fe9-33d6-5f38-bae8-289018e5710c',19,'1D',175,175,2,'2025-12-21T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b532b777-1b09-5adf-ab3c-43004c6cd0c0',181.25,'CONFIRMED','CARD','2025-12-21T13:00:00';
EXEC air.usp_RegisterPayment @id,'beb38cfd-dbf3-5738-84dc-1e2d79614cae',181.25,'CONFIRMED','CARD','2025-12-21T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0b39c80b-b390-5715-bddf-db894528da2b',19,'1A',123,111,1,'2025-12-21T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8afbf9a8-992e-5373-9104-0449e4c63aae',181.25,'CONFIRMED','CARD','2025-12-21T12:00:00';
EXEC air.usp_RegisterPayment @id,'2dd0240f-f22e-58f4-83a9-e8284d15067f',181.25,'CONFIRMED','CARD','2025-12-21T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a0fe481c-1ccc-5b69-b1bc-303be81506fc',19,'6E',61,61,2,'2025-12-21T09:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4a5b1bf9-e3cb-5dd3-a3d5-3bd3dac8e7f6',65.25,'CONFIRMED','CARD','2025-12-21T11:00:00';
EXEC air.usp_RegisterPayment @id,'c295e27c-3915-5c56-8569-ea89e20f04d0',65.25,'CONFIRMED','CARD','2025-12-21T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '83136ab4-5ffd-5892-bb57-40a0940d8502',19,'7F',97,97,1,'2025-12-21T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4286aad6-dc86-5c13-b8d0-8f5602c1ee3c',72.50,'CONFIRMED','CARD','2025-12-21T10:00:00';
EXEC air.usp_RegisterPayment @id,'5c94526d-1ac3-5547-8790-5083c5f06abf',72.50,'CONFIRMED','CARD','2025-12-21T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cc3746e7-2c8f-5b97-a5ce-8020f71a9f06',19,'2D',113,101,2,'2025-12-21T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'78f2dea0-9913-5005-a026-ae16108fb542',1.00,'FAILED','CARD','2025-12-21T08:00:00';
EXEC air.usp_RegisterPayment @id,'4efd3ef3-ecb2-5713-964e-7896a37525bc',72.50,'CONFIRMED','CARD','2025-12-21T09:00:00';
EXEC air.usp_RegisterPayment @id,'afc21f15-e755-5634-86d2-b7af3ea62f72',72.50,'CONFIRMED','CARD','2025-12-21T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ce02306e-b1bb-5090-a07b-4fc6c048c899',19,'3E',25,25,1,'2025-12-21T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'715174fc-1b34-5922-b894-0f9203350ee4',72.50,'CONFIRMED','CARD','2025-12-21T08:00:00';
EXEC air.usp_RegisterPayment @id,'2f8bae4c-a3cf-56ce-8f76-9cc44a94c2fb',72.50,'CONFIRMED','CARD','2025-12-21T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4b839b47-f8fb-50e7-9985-5e3f46b88ec1',19,'3D',48,48,2,'2025-12-21T05:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8593eced-33d4-5e7c-a47f-ba3936ad383a',65.25,'CONFIRMED','CARD','2025-12-21T07:00:00';
EXEC air.usp_RegisterPayment @id,'71e67ac7-2bb8-5fc5-9c60-f1315a7955e1',65.25,'CONFIRMED','CARD','2025-12-21T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a5eb8306-894d-52df-a5b6-a14cefb4328d',19,'5B',185,134,1,'2025-12-21T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'497bdec1-ffc4-5510-ad1d-5d3d027a0f6a',72.50,'CONFIRMED','CARD','2025-12-21T06:00:00';
EXEC air.usp_RegisterPayment @id,'f2b315d8-e1a2-52e4-b8dd-e79d303db3e2',72.50,'CONFIRMED','CARD','2025-12-21T07:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-21T08:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0f89fcc5-42e6-56bb-8df4-29f6364f2eab',19,'4C',62,62,2,'2025-12-21T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c80a1d48-f746-52e0-be5a-c608805bdb5b',72.50,'CONFIRMED','CARD','2025-12-21T05:00:00';
EXEC air.usp_RegisterPayment @id,'c18fe61d-bdff-517a-b14d-bf48544555a6',72.50,'CONFIRMED','CARD','2025-12-21T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '586a9d48-ba42-55b4-9fe0-cb0b14fa7275',19,'4A',156,156,1,'2025-12-21T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ed0c7f3e-8dbe-5a33-9f1e-0aee4c634e47',72.50,'CONFIRMED','CARD','2025-12-21T04:00:00';
EXEC air.usp_RegisterPayment @id,'5bad8582-ac8a-5059-a5a4-3ecc01a708e3',72.50,'CONFIRMED','CARD','2025-12-21T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7b5c7f17-c260-536e-b6c4-17d25034f7f3',19,'7D',168,115,2,'2025-12-21T01:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'687e90c6-2eac-5f98-b078-6eca96c7f1c2',1.00,'FAILED','CARD','2025-12-21T02:00:00';
EXEC air.usp_RegisterPayment @id,'b28a97dc-dff4-5b42-a7ec-b28987ff5c2e',65.25,'CONFIRMED','CARD','2025-12-21T03:00:00';
EXEC air.usp_RegisterPayment @id,'5b653e39-65de-5334-a04b-0973ec1ef1b7',65.25,'CONFIRMED','CARD','2025-12-21T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '01795c5f-d6b9-5053-bb73-ff650d6d6f32',19,'7A',154,154,1,'2025-12-21T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'85dfb9d0-44fa-5514-b327-69e7c53a4382',72.50,'CONFIRMED','CARD','2025-12-21T02:00:00';
EXEC air.usp_RegisterPayment @id,'f4c9fbee-47cc-5051-badb-06061433987b',72.50,'CONFIRMED','CARD','2025-12-21T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd5338428-f1ae-54a4-afe1-eeeb23ccbc31',19,'7B',79,79,2,'2025-12-20T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2c0ece43-0f2a-523b-b0a2-f15aa59cde88',72.50,'CONFIRMED','CARD','2025-12-21T01:00:00';
EXEC air.usp_RegisterPayment @id,'69aa9e28-7a7c-563f-8d42-5eca8ecf7490',72.50,'CONFIRMED','CARD','2025-12-21T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '02d0b3c6-2964-52af-b184-538cf4b39d1b',19,'3A',69,44,1,'2025-12-20T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'976fb428-deef-5699-8f8a-5a6b64e6358b',72.50,'CONFIRMED','CARD','2025-12-21T00:00:00';
EXEC air.usp_RegisterPayment @id,'bd6950fe-eae5-57a0-af03-57dbe605f466',72.50,'CONFIRMED','CARD','2025-12-21T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'abca76eb-57b5-57e8-bfe6-2b3c33fbf0e3',19,'2B',96,96,2,'2025-12-20T21:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'121fa957-3e1d-57b3-973d-38badbdc3b00',65.25,'CONFIRMED','CARD','2025-12-20T23:00:00';
EXEC air.usp_RegisterPayment @id,'276ef045-743d-5c6e-9948-2a8989395e4c',65.25,'CONFIRMED','CARD','2025-12-21T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5e2d0ef4-d2d9-5720-b852-2e3d7d1172b1',19,'5E',184,184,1,'2025-12-20T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e79d6a7a-a65c-53b0-b4c4-368a04b55f31',72.50,'CONFIRMED','CARD','2025-12-20T22:00:00';
EXEC air.usp_RegisterPayment @id,'200e7b48-26d1-5a75-9705-f2034ec0fd3a',72.50,'CONFIRMED','CARD','2025-12-20T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7d25f849-a3e7-508e-8d09-b630c2abfa30',19,'7C',119,112,2,'2025-12-20T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'69fa8935-e8b1-5170-a5a2-693eeffaf147',1.00,'FAILED','CARD','2025-12-20T20:00:00';
EXEC air.usp_RegisterPayment @id,'bda58be5-22a2-53a3-8766-0648ba7bd514',72.50,'CONFIRMED','CARD','2025-12-20T21:00:00';
EXEC air.usp_RegisterPayment @id,'1c714566-c751-5d49-8f0c-15da495fbe8d',72.50,'CONFIRMED','CARD','2025-12-20T22:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-20T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd8037bff-00ec-5ce8-ad09-3926d46e2c16',19,'5C',115,115,1,'2025-12-20T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'68820733-d6b8-566e-8356-be2848998d3c',72.50,'CONFIRMED','CARD','2025-12-20T20:00:00';
EXEC air.usp_RegisterPayment @id,'6848b6a3-07ee-5b9b-bda6-b5e3612f2b03',72.50,'CONFIRMED','CARD','2025-12-20T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9873f640-f9da-51ae-931d-47574437711a',19,'2F',117,117,2,'2025-12-20T17:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f20405aa-72b0-5398-b97e-000c68ec9dad',65.25,'CONFIRMED','CARD','2025-12-20T19:00:00';
EXEC air.usp_RegisterPayment @id,'910a340f-7e65-5036-9b8a-9b3180a425ea',65.25,'CONFIRMED','CARD','2025-12-20T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9d9cc823-d120-50f4-a2a3-8d8001e83a69',19,'6C',183,180,1,'2025-12-20T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'aa3a713a-eb75-5262-b700-c61697c85dfc',72.50,'CONFIRMED','CARD','2025-12-20T18:00:00';
EXEC air.usp_RegisterPayment @id,'a54e3123-8ae0-5a58-a901-c1d177965aac',72.50,'CONFIRMED','CARD','2025-12-20T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9c774673-f154-59bc-97e9-7790e3175171',19,'3B',103,103,2,'2025-12-20T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d2680227-5d74-5283-81eb-d8013a79833e',72.50,'CONFIRMED','CARD','2025-12-20T17:00:00';
EXEC air.usp_RegisterPayment @id,'4a4c2697-b1c5-52b9-a13d-d2f571d95226',72.50,'CONFIRMED','CARD','2025-12-20T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '68b0cd41-af91-5130-bb14-3e0c5d982f9a',19,'2E',101,101,1,'2025-12-20T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0f8d7470-6e62-57d9-af8b-b8864e85e226',72.50,'CONFIRMED','CARD','2025-12-20T16:00:00';
EXEC air.usp_RegisterPayment @id,'38936a3d-87b6-571c-a785-b796da985efe',72.50,'CONFIRMED','CARD','2025-12-20T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e2e31d84-704b-5de0-a630-9e8ce05e3f96',19,'2A',111,47,2,'2025-12-20T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9cc1d66a-4f2a-56e4-b12d-22d6701b605b',1.00,'FAILED','CARD','2025-12-20T14:00:00';
EXEC air.usp_RegisterPayment @id,'d5c3633c-4c7f-5ec3-b7e4-cdbccd9482f3',65.25,'CONFIRMED','CARD','2025-12-20T15:00:00';
EXEC air.usp_RegisterPayment @id,'6e766bdc-8b01-5887-9b66-c3907307e4b8',65.25,'CONFIRMED','CARD','2025-12-20T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fb88999d-3760-5739-b6ab-7630c3f171a1',19,'6D',67,67,1,'2025-12-20T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'39f6ac90-df7b-5717-b867-5102664837fc',72.50,'CONFIRMED','CARD','2025-12-20T14:00:00';
EXEC air.usp_RegisterPayment @id,'5d04b9c9-cf63-5061-8e7c-4e21cee84769',72.50,'CONFIRMED','CARD','2025-12-20T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '53f1727d-d668-5fa3-8b11-7c2f6c4d2401',19,'4E',200,200,2,'2025-12-20T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'35cb008f-e038-5267-aa3b-cd14a1ffb2a8',72.50,'CONFIRMED','CARD','2025-12-20T13:00:00';
EXEC air.usp_RegisterPayment @id,'953607db-b2f2-5c6c-a747-d81cf4bc1daf',72.50,'CONFIRMED','CARD','2025-12-20T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5f776cc0-0b8e-5e47-90ab-7e7f137c398d',19,'5D',166,74,1,'2025-12-20T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bd0a73ab-463f-596d-8bc1-3e3033df1ad0',72.50,'CONFIRMED','CARD','2025-12-20T12:00:00';
EXEC air.usp_RegisterPayment @id,'89bff47a-f5d1-5835-8539-a296a7f90edc',72.50,'CONFIRMED','CARD','2025-12-20T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-20T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd0b40dbb-2035-5645-86c2-ae13c5837a05',20,'1A',37,60,2,'2025-12-21T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'40277b4d-8949-5a61-a10f-f511d89880e7',1.00,'FAILED','CARD','2025-12-21T19:00:00';
EXEC air.usp_RegisterPayment @id,'fd119be3-1bd3-51d8-bf98-5d5b21aea197',180.00,'CONFIRMED','CARD','2025-12-21T20:00:00';
EXEC air.usp_RegisterPayment @id,'9c364b66-7254-52b9-b9f0-66412986ff56',180.00,'CONFIRMED','CARD','2025-12-21T21:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-21T22:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0789fbdf-1af7-54ff-9955-9d0ce3e7e65b',20,'1D',145,145,1,'2025-12-21T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'642b03f5-301f-5b97-976d-3f851f9a5cd3',200.00,'CONFIRMED','CARD','2025-12-21T19:00:00';
EXEC air.usp_RegisterPayment @id,'841eb324-082c-59c4-9827-da6ccb495b22',200.00,'CONFIRMED','CARD','2025-12-21T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bb6b0859-06f8-5cb5-af71-9914bc5836af',20,'1C',76,76,2,'2025-12-21T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1775de5f-9a7f-5961-b068-b0a0a4c70f99',200.00,'CONFIRMED','CARD','2025-12-21T18:00:00';
EXEC air.usp_RegisterPayment @id,'f433ed48-4c6b-5821-b4b3-deac84051797',200.00,'CONFIRMED','CARD','2025-12-21T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '00d89ebe-40e4-570c-9d60-4191f4ebb2fe',20,'1E',157,120,1,'2025-12-21T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a0db18e7-df44-55fd-9f63-62c45527306f',200.00,'CONFIRMED','CARD','2025-12-21T17:00:00';
EXEC air.usp_RegisterPayment @id,'f54eb232-47d6-59fd-9171-e4e428d4ebeb',200.00,'CONFIRMED','CARD','2025-12-21T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ede23990-8851-525b-925e-4dff82e80f2d',20,'5D',138,138,2,'2025-12-21T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fdca8249-d42c-58fe-b689-5f063a9ad2dc',72.00,'CONFIRMED','CARD','2025-12-21T16:00:00';
EXEC air.usp_RegisterPayment @id,'09307010-aa25-53da-8bea-fa656f882498',72.00,'CONFIRMED','CARD','2025-12-21T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a62872de-c0b8-5439-a724-f57bc4af6dae',20,'4E',151,151,1,'2025-12-21T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'11c2c5a0-8217-5239-8cdc-73b6b24898c7',80.00,'CONFIRMED','CARD','2025-12-21T15:00:00';
EXEC air.usp_RegisterPayment @id,'ced577de-63da-55e2-90e6-d62d6e5f24cf',80.00,'CONFIRMED','CARD','2025-12-21T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a6a3d68a-60ea-5ae1-ad49-b1e7df6e2826',20,'3B',44,131,2,'2025-12-21T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b0e0378c-60ce-59cd-949e-53c12beca3c4',1.00,'FAILED','CARD','2025-12-21T13:00:00';
EXEC air.usp_RegisterPayment @id,'64c24684-9aab-531d-b650-02f6eeb26c91',80.00,'CONFIRMED','CARD','2025-12-21T14:00:00';
EXEC air.usp_RegisterPayment @id,'3c909757-4263-5854-baf7-5bf4bcc19564',80.00,'CONFIRMED','CARD','2025-12-21T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b6a24147-fdc0-5baa-a2b8-fcd89b7f247c',20,'6A',197,197,1,'2025-12-21T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7a632935-1840-5a06-b44e-411c9dc13612',80.00,'CONFIRMED','CARD','2025-12-21T13:00:00';
EXEC air.usp_RegisterPayment @id,'415b43b3-290d-584a-b173-062da1ce9e78',80.00,'CONFIRMED','CARD','2025-12-21T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4c277c2e-bb03-5605-8a3b-00d0ad4c1201',20,'4B',119,119,2,'2025-12-21T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1a8ec2f1-5092-5603-a82b-f7afc10ef7c7',72.00,'CONFIRMED','CARD','2025-12-21T12:00:00';
EXEC air.usp_RegisterPayment @id,'6c169f95-da8c-5108-97af-5cb8e2c1ba6d',72.00,'CONFIRMED','CARD','2025-12-21T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '93595490-39a6-5874-9683-7ad29912202a',20,'2B',160,153,1,'2025-12-21T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'07980796-bc3a-5c2b-91e9-e76976c68531',80.00,'CONFIRMED','CARD','2025-12-21T11:00:00';
EXEC air.usp_RegisterPayment @id,'5f587a0c-1f06-5904-a1c5-7f16e950d4f5',80.00,'CONFIRMED','CARD','2025-12-21T12:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-21T13:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6b36c2eb-8cab-5ea7-8938-20ac21d098ff',20,'7B',151,151,2,'2025-12-21T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c3b351e2-ab48-540c-889d-a985eaf7a2bb',80.00,'CONFIRMED','CARD','2025-12-21T10:00:00';
EXEC air.usp_RegisterPayment @id,'ce74e20e-2026-58a6-ada9-8df742a94322',80.00,'CONFIRMED','CARD','2025-12-21T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9ca97bdc-57ec-514c-a56a-064240f0fc5d',20,'2D',73,73,1,'2025-12-21T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0f708400-b9e1-5d65-be9e-fc296da23181',80.00,'CONFIRMED','CARD','2025-12-21T09:00:00';
EXEC air.usp_RegisterPayment @id,'df181a9c-ab59-5156-be8a-1b21522237c7',80.00,'CONFIRMED','CARD','2025-12-21T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ced1d140-6a4a-5ced-a6cf-e147fe7404f5',20,'7D',149,47,2,'2025-12-21T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'846a1b68-58a0-5922-916d-87f3b2c3b7f5',1.00,'FAILED','CARD','2025-12-21T07:00:00';
EXEC air.usp_RegisterPayment @id,'49658cd1-f8ff-5670-ad0e-f09f968187b4',72.00,'CONFIRMED','CARD','2025-12-21T08:00:00';
EXEC air.usp_RegisterPayment @id,'dbf5bdc4-28b5-5e8a-86c8-0b4226d46fbd',72.00,'CONFIRMED','CARD','2025-12-21T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '322cacbd-3476-515e-abca-52f205c5f0fa',20,'4C',199,199,1,'2025-12-21T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1a236ac8-81ac-5bd8-a517-8aff18d6f9ab',80.00,'CONFIRMED','CARD','2025-12-21T07:00:00';
EXEC air.usp_RegisterPayment @id,'6e30c024-d94e-5df0-9877-aafb3295939a',80.00,'CONFIRMED','CARD','2025-12-21T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c3cc83ad-9b18-56e8-a01b-4006040539a2',20,'6F',3,3,2,'2025-12-21T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'63313fd9-0cda-5748-a049-39ad5507278f',80.00,'CONFIRMED','CARD','2025-12-21T06:00:00';
EXEC air.usp_RegisterPayment @id,'625d2a4b-df1e-597b-b3f6-475ba15a7760',80.00,'CONFIRMED','CARD','2025-12-21T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7983af64-7cf1-5194-b16c-8a72ee9a9134',20,'4A',79,95,1,'2025-12-21T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'738cc642-09df-5836-bbd2-69a48ade27aa',80.00,'CONFIRMED','CARD','2025-12-21T05:00:00';
EXEC air.usp_RegisterPayment @id,'6bcddd29-c316-508a-8ffc-9d598828a78b',80.00,'CONFIRMED','CARD','2025-12-21T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f4577562-71d2-5f1d-8eae-6c461d18cb64',20,'6B',72,72,2,'2025-12-21T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'63772502-1c62-592b-8974-1edae5b2310f',72.00,'CONFIRMED','CARD','2025-12-21T04:00:00';
EXEC air.usp_RegisterPayment @id,'7cbe74aa-f9d9-5a42-b992-ed54eb45ddeb',72.00,'CONFIRMED','CARD','2025-12-21T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '722e0d60-2bb4-5ba1-b287-5990c7e90b0a',20,'7F',101,101,1,'2025-12-21T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cfff20ae-bf45-508c-b1f5-a0e383d45082',80.00,'CONFIRMED','CARD','2025-12-21T03:00:00';
EXEC air.usp_RegisterPayment @id,'e605c0f5-0d2e-5c86-9436-d79780dd832c',80.00,'CONFIRMED','CARD','2025-12-21T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ab87b531-d8ac-5db7-bb24-4fd74ed070d2',20,'5B',81,86,2,'2025-12-21T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4711878a-e23e-5e5a-958e-e90cca3cfe18',1.00,'FAILED','CARD','2025-12-21T01:00:00';
EXEC air.usp_RegisterPayment @id,'de918a84-b051-5d5d-baa2-524fc2faf7be',80.00,'CONFIRMED','CARD','2025-12-21T02:00:00';
EXEC air.usp_RegisterPayment @id,'0fdfdaaa-7a98-5879-bd35-842b1a68364f',80.00,'CONFIRMED','CARD','2025-12-21T03:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-21T04:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9e765361-0f85-5293-9ebd-e06682e642d1',20,'2A',169,169,1,'2025-12-20T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6c365d84-98a0-518f-99d4-68db3650988e',80.00,'CONFIRMED','CARD','2025-12-21T01:00:00';
EXEC air.usp_RegisterPayment @id,'e91f4f30-a982-5fd3-a490-bd701ad03424',80.00,'CONFIRMED','CARD','2025-12-21T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '15bfd10c-090b-5272-95e3-048cd73ecd94',20,'2F',81,81,2,'2025-12-20T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'94f435d4-ec37-58ce-9cea-66da473d25c0',72.00,'CONFIRMED','CARD','2025-12-21T00:00:00';
EXEC air.usp_RegisterPayment @id,'10275700-b3be-5744-899f-ebe87403d91c',72.00,'CONFIRMED','CARD','2025-12-21T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2585e60e-9372-56bd-879d-c4ebda1b5914',20,'2C',114,119,1,'2025-12-20T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2ae69a32-f9da-56cb-a5d5-ea7ad3330066',80.00,'CONFIRMED','CARD','2025-12-20T23:00:00';
EXEC air.usp_RegisterPayment @id,'cec32aaf-8dd0-553a-ab51-9538badadef1',80.00,'CONFIRMED','CARD','2025-12-21T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '78c3ff9b-1191-5770-8419-6f34e0cdd58d',20,'5F',76,76,2,'2025-12-20T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8dad64aa-e9bb-50f5-8441-3e692116b07f',80.00,'CONFIRMED','CARD','2025-12-20T22:00:00';
EXEC air.usp_RegisterPayment @id,'9ce1a750-a2cc-5794-a268-58ddbbd623b3',80.00,'CONFIRMED','CARD','2025-12-20T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1ba552ea-545f-5676-8fc2-4a32414c6a4b',20,'3E',76,76,1,'2025-12-20T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a147179d-40ca-5d79-85f9-aa8b32877ca5',80.00,'CONFIRMED','CARD','2025-12-20T21:00:00';
EXEC air.usp_RegisterPayment @id,'2e4f53dd-1796-5987-a768-5c57b4b9f7d0',80.00,'CONFIRMED','CARD','2025-12-20T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '79d737e4-dc91-5142-8832-c54d96ae922f',20,'5A',160,27,2,'2025-12-20T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'eb89e59c-eb49-536e-b7db-f6dceb684e99',1.00,'FAILED','CARD','2025-12-20T19:00:00';
EXEC air.usp_RegisterPayment @id,'2b42cd7c-a68a-570d-96a5-358fc69ce38d',72.00,'CONFIRMED','CARD','2025-12-20T20:00:00';
EXEC air.usp_RegisterPayment @id,'853b643c-a9e2-540a-8021-90214863f12e',72.00,'CONFIRMED','CARD','2025-12-20T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'beac3703-2e8f-5e80-850a-fc36840536ca',20,'3C',67,67,1,'2025-12-20T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0300cbf9-5d57-5e3c-9b2c-a311979d1207',80.00,'CONFIRMED','CARD','2025-12-20T19:00:00';
EXEC air.usp_RegisterPayment @id,'67355bf6-b794-513e-b225-880c2c6b09f4',80.00,'CONFIRMED','CARD','2025-12-20T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ec2cf261-dcc7-5362-b48e-ce6a10d2e713',20,'3F',87,87,2,'2025-12-20T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bec11e56-c830-518b-9113-4b252b0e50a9',80.00,'CONFIRMED','CARD','2025-12-20T18:00:00';
EXEC air.usp_RegisterPayment @id,'9ae0a27f-730f-5e9a-8dbf-ab3decaae284',80.00,'CONFIRMED','CARD','2025-12-20T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '31f6bb9a-dff6-5548-bc72-6dbf1d370483',20,'3A',4,51,1,'2025-12-20T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b22e57c9-8baa-57fd-9c36-805fe9f0baac',80.00,'CONFIRMED','CARD','2025-12-20T17:00:00';
EXEC air.usp_RegisterPayment @id,'0e3ca930-975e-5797-9c00-142f1540ee83',80.00,'CONFIRMED','CARD','2025-12-20T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-20T19:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'de7adb44-faba-5385-8456-d3137b9670fb',21,'1D',112,44,2,'2025-12-22T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'82a7f3ed-d1f5-55ef-b228-0895932a390c',1.00,'FAILED','CARD','2025-12-22T15:00:00';
EXEC air.usp_RegisterPayment @id,'41634814-dfbe-52d3-9530-1159d8a77351',196.88,'CONFIRMED','CARD','2025-12-22T16:00:00';
EXEC air.usp_RegisterPayment @id,'eef8fb8c-daa1-534b-aa2f-2325cfee393e',196.87,'CONFIRMED','CARD','2025-12-22T17:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-22T18:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1221f49a-9c1c-5303-b414-bf33fcca31ad',21,'1A',175,175,1,'2025-12-22T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5c49352c-57e1-50cc-ac89-30c5bf481317',218.75,'CONFIRMED','CARD','2025-12-22T15:00:00';
EXEC air.usp_RegisterPayment @id,'f43f74f7-52ef-53f6-9532-9871cca232fd',218.75,'CONFIRMED','CARD','2025-12-22T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6033dedc-1445-50ae-b276-d207f20bf25d',21,'1E',22,22,2,'2025-12-22T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3f79e229-7c7c-5a42-b972-d0f361f7f82e',218.75,'CONFIRMED','CARD','2025-12-22T14:00:00';
EXEC air.usp_RegisterPayment @id,'f599d0c9-228a-5b5a-942a-a568549da79a',218.75,'CONFIRMED','CARD','2025-12-22T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9591fee3-18bc-50fb-baf2-cc0afeec4c88',21,'1B',121,99,1,'2025-12-22T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0fc032b5-c7ae-5c7d-83fd-44c6c70e6d1e',218.75,'CONFIRMED','CARD','2025-12-22T13:00:00';
EXEC air.usp_RegisterPayment @id,'812f29b9-7336-518f-b0c4-a79b4e12979f',218.75,'CONFIRMED','CARD','2025-12-22T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7beaf56d-fedb-5b17-92a6-c3df176e7e82',21,'6E',179,179,2,'2025-12-22T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6ea6b139-88f3-5c1b-8f69-ef7669c8f32e',78.75,'CONFIRMED','CARD','2025-12-22T12:00:00';
EXEC air.usp_RegisterPayment @id,'378e055c-7c9b-5f59-8576-5eb3abee1cd6',78.75,'CONFIRMED','CARD','2025-12-22T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '371f46a3-70a0-55fd-8ebe-febc86d493cf',21,'4F',89,89,1,'2025-12-22T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'284385a2-4694-5099-b604-5599a4dc66db',87.50,'CONFIRMED','CARD','2025-12-22T11:00:00';
EXEC air.usp_RegisterPayment @id,'11e219b6-f18b-560a-9015-ff12b7dbf24d',87.50,'CONFIRMED','CARD','2025-12-22T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '240e1fd5-8bd5-5296-831d-1584cd889181',21,'7A',40,111,2,'2025-12-22T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8d5e5bb3-1346-52c8-8378-cf9aace9b46e',1.00,'FAILED','CARD','2025-12-22T09:00:00';
EXEC air.usp_RegisterPayment @id,'690dee46-0bd4-5d3d-8a13-9020ac15d2f2',87.50,'CONFIRMED','CARD','2025-12-22T10:00:00';
EXEC air.usp_RegisterPayment @id,'77291f6f-7388-5148-b63d-bc76eb6a5438',87.50,'CONFIRMED','CARD','2025-12-22T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd843058b-71b5-5122-ad16-210043334dd4',21,'7B',42,42,1,'2025-12-22T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'623bdc25-e3a3-591b-84e5-899f307f49ca',87.50,'CONFIRMED','CARD','2025-12-22T09:00:00';
EXEC air.usp_RegisterPayment @id,'3a498a80-470a-53e3-82e3-8ce916cbdb84',87.50,'CONFIRMED','CARD','2025-12-22T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '560164c2-a2ec-59c9-a7d7-8e3664f79e7f',21,'2D',187,187,2,'2025-12-22T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e65d9d47-3430-5abf-8aa5-e8ddf46f092e',78.75,'CONFIRMED','CARD','2025-12-22T08:00:00';
EXEC air.usp_RegisterPayment @id,'f7e2b19d-bcf4-5c9e-a93b-7e2bb3b9bc8f',78.75,'CONFIRMED','CARD','2025-12-22T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '68a5a2c7-3ca9-589d-b63e-b349edc449eb',21,'2A',169,142,1,'2025-12-22T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8ae20dd9-4972-525f-aa77-263c41eb0b3e',87.50,'CONFIRMED','CARD','2025-12-22T07:00:00';
EXEC air.usp_RegisterPayment @id,'290e4c08-1f0f-5d82-bdf0-134283ba2d37',87.50,'CONFIRMED','CARD','2025-12-22T08:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-22T09:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f2b5e009-4cba-5b31-a610-3093e1a9c225',21,'6B',196,196,2,'2025-12-22T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7abdc9e6-a8b9-580d-9d32-d13f95d5fceb',87.50,'CONFIRMED','CARD','2025-12-22T06:00:00';
EXEC air.usp_RegisterPayment @id,'cb87ce0b-292a-5b82-b8e0-20f35a0413d5',87.50,'CONFIRMED','CARD','2025-12-22T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '71df5979-2243-5494-aba8-7222fa1ee063',21,'6C',184,184,1,'2025-12-22T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c98375ec-8cc8-5b31-a680-605b2885e1b6',87.50,'CONFIRMED','CARD','2025-12-22T05:00:00';
EXEC air.usp_RegisterPayment @id,'a6414ab1-8c3f-5dd5-afee-afec0d9a1c2f',87.50,'CONFIRMED','CARD','2025-12-22T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'dde1cce2-6bf4-5d41-a91f-84ce2e8a6d11',21,'3B',18,2,2,'2025-12-22T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4ba88e82-c703-535b-993c-22f2a6bc1d65',1.00,'FAILED','CARD','2025-12-22T03:00:00';
EXEC air.usp_RegisterPayment @id,'94a7dd99-852c-52d3-a35a-d7e7325ab339',78.75,'CONFIRMED','CARD','2025-12-22T04:00:00';
EXEC air.usp_RegisterPayment @id,'0dbdf346-7b1f-57b1-b521-2520ff1af776',78.75,'CONFIRMED','CARD','2025-12-22T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1ba15c56-1f20-507c-ac5c-2513cd318c04',21,'5E',130,130,1,'2025-12-22T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'707dcb90-9c8e-5973-81b7-670a15635fbd',87.50,'CONFIRMED','CARD','2025-12-22T03:00:00';
EXEC air.usp_RegisterPayment @id,'65428b2e-c261-5d2f-94e8-61f51887b909',87.50,'CONFIRMED','CARD','2025-12-22T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c06b5623-3e7c-5b6d-ba12-25bb84a73ffe',21,'3D',103,103,2,'2025-12-22T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'81eea9b9-380b-5a88-8d67-db1d5ed3de52',87.50,'CONFIRMED','CARD','2025-12-22T02:00:00';
EXEC air.usp_RegisterPayment @id,'949b3678-4eef-5c67-b1a8-8807ab4ec326',87.50,'CONFIRMED','CARD','2025-12-22T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '94a02c8c-59b8-51ec-98ec-f0b19aedeece',21,'7C',6,132,1,'2025-12-21T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f8e5e54e-2059-5230-891a-64be4b84d6d4',87.50,'CONFIRMED','CARD','2025-12-22T01:00:00';
EXEC air.usp_RegisterPayment @id,'ace56624-f540-5550-aabc-7110962a6fb4',87.50,'CONFIRMED','CARD','2025-12-22T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '23c4b6cd-d621-587d-8f70-f7f013f4c2c8',21,'4A',135,135,2,'2025-12-21T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3b2a31c4-84ea-5ae7-a5bd-4c24b79d1359',78.75,'CONFIRMED','CARD','2025-12-22T00:00:00';
EXEC air.usp_RegisterPayment @id,'a05fd332-66c6-55ec-b7ca-aeb74fae8d9b',78.75,'CONFIRMED','CARD','2025-12-22T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e4c82dcd-fb9e-5893-9df6-85d03c31e6d8',21,'4B',81,81,1,'2025-12-21T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9dd9117d-2193-56f1-8007-febbc90fac26',87.50,'CONFIRMED','CARD','2025-12-21T23:00:00';
EXEC air.usp_RegisterPayment @id,'fde0d1a3-03dd-57d6-a5dc-f99e8ae32b09',87.50,'CONFIRMED','CARD','2025-12-22T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b4c842df-9495-5c9c-a38e-b6794b5adaf3',21,'7E',53,55,2,'2025-12-21T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'775640b9-487b-5f6a-be39-80d3f8b26058',1.00,'FAILED','CARD','2025-12-21T21:00:00';
EXEC air.usp_RegisterPayment @id,'32ffd554-7773-512e-bf8f-8d0f940fa33d',87.50,'CONFIRMED','CARD','2025-12-21T22:00:00';
EXEC air.usp_RegisterPayment @id,'1268b0c1-f568-57b4-9466-abda49cc8cd2',87.50,'CONFIRMED','CARD','2025-12-21T23:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-22T00:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b08adbb5-c8cc-51c5-abd9-0c41930ad950',21,'2E',91,91,1,'2025-12-21T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b40bdef2-31b8-58b4-9633-7347c80a4eb5',87.50,'CONFIRMED','CARD','2025-12-21T21:00:00';
EXEC air.usp_RegisterPayment @id,'757e349b-3e29-53eb-a5bc-7b53872366e4',87.50,'CONFIRMED','CARD','2025-12-21T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f3e75192-8872-549e-b7fc-9f7d5f3061c3',21,'7D',35,35,2,'2025-12-21T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'131bff9a-100c-5a17-b7bd-7cbe568b8b5a',78.75,'CONFIRMED','CARD','2025-12-21T20:00:00';
EXEC air.usp_RegisterPayment @id,'2b840483-9393-5fd6-89e8-0bba2825314a',78.75,'CONFIRMED','CARD','2025-12-21T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd5e81247-4fc3-52d6-a6e7-1c917f961832',21,'4E',93,120,1,'2025-12-21T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dcec0853-3955-5d95-be2d-41710900bff8',87.50,'CONFIRMED','CARD','2025-12-21T19:00:00';
EXEC air.usp_RegisterPayment @id,'57a8bad6-5811-5253-a9a9-69a03a18e563',87.50,'CONFIRMED','CARD','2025-12-21T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a9563111-fa75-5392-9caf-f8c8906b9efe',21,'5B',142,142,2,'2025-12-21T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4ac965af-ac00-5f50-b8b2-d5b82bc72f65',87.50,'CONFIRMED','CARD','2025-12-21T18:00:00';
EXEC air.usp_RegisterPayment @id,'29648199-44d6-5ac8-85d4-86eff0d52f51',87.50,'CONFIRMED','CARD','2025-12-21T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '81dcd65d-e76e-5afe-b23f-aec9e3886881',21,'3F',106,106,1,'2025-12-21T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'17c6c07c-c8e9-5bf5-8d71-b2501fe31f1f',87.50,'CONFIRMED','CARD','2025-12-21T17:00:00';
EXEC air.usp_RegisterPayment @id,'8a8e252f-822f-584d-b556-23b102a24adb',87.50,'CONFIRMED','CARD','2025-12-21T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '06b8794f-07c2-58a1-92bc-c47830774f9f',21,'3A',168,46,2,'2025-12-21T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e19679af-9f26-550d-9f28-0534f185725f',1.00,'FAILED','CARD','2025-12-21T15:00:00';
EXEC air.usp_RegisterPayment @id,'8a36bc8f-a14e-5c37-9d42-1f1d6f34b0a1',78.75,'CONFIRMED','CARD','2025-12-21T16:00:00';
EXEC air.usp_RegisterPayment @id,'506dbb3d-c532-53a3-84f0-6bb311c2c4b5',78.75,'CONFIRMED','CARD','2025-12-21T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ed00334e-0624-555f-9636-0769c692507d',21,'6A',48,48,1,'2025-12-21T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'db423e60-717f-5570-bc32-3318e90e6515',87.50,'CONFIRMED','CARD','2025-12-21T15:00:00';
EXEC air.usp_RegisterPayment @id,'68c6ed13-6245-5a37-9a39-5eda22bdf6b7',87.50,'CONFIRMED','CARD','2025-12-21T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f6d1bbd2-e921-5c7a-a6c0-eb5ce7bbac6b',21,'6F',1,1,2,'2025-12-21T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3c832248-b4ae-57d4-acb4-6166218147e2',87.50,'CONFIRMED','CARD','2025-12-21T14:00:00';
EXEC air.usp_RegisterPayment @id,'ef3acf88-0e8a-592e-ac00-d3d4d2312a37',87.50,'CONFIRMED','CARD','2025-12-21T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f4b30433-b7e9-5cc2-9d76-9a63835b29ae',21,'3C',28,198,1,'2025-12-21T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7779c58c-5e65-5fda-94dd-21ff91f7f9b2',87.50,'CONFIRMED','CARD','2025-12-21T13:00:00';
EXEC air.usp_RegisterPayment @id,'21417174-f65c-5517-af07-70e34a98547f',87.50,'CONFIRMED','CARD','2025-12-21T14:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-21T15:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ba149402-1319-5302-a162-db51bf363bc7',22,'1A',187,84,2,'2025-12-22T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dd09ebd1-6695-5ec7-bc7b-96b08cc1ab38',1.00,'FAILED','CARD','2025-12-22T19:00:00';
EXEC air.usp_RegisterPayment @id,'3d9ca0cf-174a-5c28-9ecd-aeffeab7c4b0',213.75,'CONFIRMED','CARD','2025-12-22T20:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-22T22:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '77781163-08b5-59a9-bb2f-971a845611a6',22,'1E',77,77,1,'2025-12-22T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9ad37789-2a1e-531a-8f03-163c32d2e1b3',237.50,'CONFIRMED','CARD','2025-12-22T19:00:00';
EXEC air.usp_RegisterPayment @id,'b3eb2368-e33c-5e23-90cb-1d882049cf5e',237.50,'CONFIRMED','CARD','2025-12-22T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '640333de-0268-5092-91d1-24c5cf422a8e',22,'1F',116,116,2,'2025-12-22T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9e059dcc-f624-5f96-8212-95dcfe552a20',237.50,'CONFIRMED','CARD','2025-12-22T18:00:00';
EXEC air.usp_RegisterPayment @id,'3099fd19-8821-5fad-b245-88922421b98c',237.50,'CONFIRMED','CARD','2025-12-22T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a6a5b0d2-93ce-51ed-b7fa-727b78289a1b',22,'1C',175,180,1,'2025-12-22T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'74a37c01-73bb-51f4-994f-a4dd9922ed56',237.50,'CONFIRMED','CARD','2025-12-22T17:00:00';
EXEC air.usp_RegisterPayment @id,'8e26af84-befc-5f30-baac-0b982c443b44',237.50,'CONFIRMED','CARD','2025-12-22T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '543f471b-769d-530a-8b19-32e55147630f',22,'2E',93,93,2,'2025-12-22T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a17a9b7a-8704-514c-85f0-e4f956296a39',85.50,'CONFIRMED','CARD','2025-12-22T16:00:00';
EXEC air.usp_RegisterPayment @id,'7b13e059-cf88-5ecc-aa6b-f10d897c76ae',85.50,'CONFIRMED','CARD','2025-12-22T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5475e170-af25-5eb7-9b55-ace2e9d78f2e',22,'4D',122,122,1,'2025-12-22T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4046139f-8e9e-51d0-89ac-86139fe0db20',95.00,'CONFIRMED','CARD','2025-12-22T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8b6b62e2-7971-5438-b946-afc3bfea1255',22,'6E',5,141,2,'2025-12-22T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'077b21e7-93a8-59aa-831b-71010a542e3c',1.00,'FAILED','CARD','2025-12-22T13:00:00';
EXEC air.usp_RegisterPayment @id,'d8935d59-ff53-5a5e-adbc-5302ce3b2a35',95.00,'CONFIRMED','CARD','2025-12-22T14:00:00';
EXEC air.usp_RegisterPayment @id,'c1667dce-96c7-5684-9b1b-dc7836085b64',95.00,'CONFIRMED','CARD','2025-12-22T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1bf22187-cc0a-58a3-bc79-4c9cf6a8d0a9',22,'7F',101,101,1,'2025-12-22T11:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6b9be3df-793b-528c-945b-0485f6defae4',22,'6D',31,31,2,'2025-12-22T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d6acfd80-0155-5f1a-ae59-fc8f871b5e8f',85.50,'CONFIRMED','CARD','2025-12-22T12:00:00';
EXEC air.usp_RegisterPayment @id,'42d0a88d-7729-5e3b-820b-4911e99a1393',85.50,'CONFIRMED','CARD','2025-12-22T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'be53eb2c-3576-5c2f-a2f5-6f16d9ca6882',22,'6B',118,110,1,'2025-12-22T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c3a20c52-0f06-5af9-a78c-c90573b515c1',95.00,'CONFIRMED','CARD','2025-12-22T11:00:00';
EXEC air.usp_RegisterPayment @id,'104bb471-dc8e-59e7-be80-2aca08ea87ee',95.00,'CONFIRMED','CARD','2025-12-22T12:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-22T13:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a8ea18ba-3721-531d-8e87-bd679cce77ef',22,'5C',56,56,2,'2025-12-22T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6ac43932-9c09-5525-9aef-211cd00e625a',95.00,'CONFIRMED','CARD','2025-12-22T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'acb0afb7-c0c0-5303-92c6-8ba1ebaed8af',22,'7A',187,187,1,'2025-12-22T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'abbc7971-1ef7-59ff-86c2-25190e67a045',95.00,'CONFIRMED','CARD','2025-12-22T09:00:00';
EXEC air.usp_RegisterPayment @id,'167fcfad-1eaf-5bc7-b494-954a123ef385',95.00,'CONFIRMED','CARD','2025-12-22T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c73d8108-1cb4-5c41-823f-71b5f9bec2e4',22,'2B',9,57,2,'2025-12-22T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'22c22246-1b6b-5833-8807-92adf6de9dc8',1.00,'FAILED','CARD','2025-12-22T07:00:00';
EXEC air.usp_RegisterPayment @id,'79c49a56-d4d7-519f-9440-e06fcd790141',85.50,'CONFIRMED','CARD','2025-12-22T08:00:00';
EXEC air.usp_RegisterPayment @id,'ffe81963-21c5-5f0e-9492-e09d144811c6',85.50,'CONFIRMED','CARD','2025-12-22T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6f647c5e-f982-5f45-9d53-e4e09b4b6c76',22,'2A',192,192,1,'2025-12-22T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ab01687c-7250-5711-a848-abb8a0fb421d',95.00,'CONFIRMED','CARD','2025-12-22T07:00:00';
EXEC air.usp_RegisterPayment @id,'de3420f2-cbed-5abc-af4e-a56ac153c0fd',95.00,'CONFIRMED','CARD','2025-12-22T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3b448242-78c1-52da-a7ee-4916de357d07',22,'3C',168,168,2,'2025-12-22T04:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3fe50733-29ff-5d0a-9d90-4fd98a1962b9',22,'6F',136,57,1,'2025-12-22T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'131fa38e-cfd2-56c9-a4fb-fe3082a5ef44',95.00,'CONFIRMED','CARD','2025-12-22T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4c2600ea-f62b-516f-846f-81d89196737b',22,'5D',170,170,2,'2025-12-22T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'55433d46-5185-5243-96f2-901eb4d49c09',85.50,'CONFIRMED','CARD','2025-12-22T04:00:00';
EXEC air.usp_RegisterPayment @id,'da4360c1-23bd-5256-976e-d643fce947f4',85.50,'CONFIRMED','CARD','2025-12-22T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e032f916-78b1-51b4-b119-718380542d50',22,'4C',186,186,1,'2025-12-22T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'01838b33-c3c9-582b-9bfe-f5c5b92e9045',95.00,'CONFIRMED','CARD','2025-12-22T03:00:00';
EXEC air.usp_RegisterPayment @id,'44555b8f-94b6-5761-a012-e5d05a5c6a19',95.00,'CONFIRMED','CARD','2025-12-22T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8015ba04-d467-5217-927e-56a4d1d7ead4',22,'4E',59,200,2,'2025-12-22T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5c63250f-a8ac-55c4-b356-19b077ae28a1',1.00,'FAILED','CARD','2025-12-22T01:00:00';
EXEC air.usp_RegisterPayment @id,'ce7ca2f2-2ffc-5350-85df-d0fa86cf287c',95.00,'CONFIRMED','CARD','2025-12-22T02:00:00';
EXEC air.usp_RegisterPayment @id,'60189b6c-b29e-5ff4-a820-8956fccf7c54',95.00,'CONFIRMED','CARD','2025-12-22T03:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-22T04:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '63e332a1-2d0b-5a4a-9251-b0ced3251982',22,'5F',115,115,1,'2025-12-21T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bb7b67b3-2b09-550d-a215-27ff54578ceb',95.00,'CONFIRMED','CARD','2025-12-22T01:00:00';
EXEC air.usp_RegisterPayment @id,'bca97646-0201-5c01-85c7-953e31349159',95.00,'CONFIRMED','CARD','2025-12-22T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ecbf0ed6-ad81-55e5-bf13-b0a04a86230f',22,'3D',185,185,2,'2025-12-21T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'700b6555-f9ec-5311-9234-c8a1473c6d7c',85.50,'CONFIRMED','CARD','2025-12-22T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '97a2fe38-a830-57fb-9d9b-8bc82b7e351f',22,'7E',38,89,1,'2025-12-21T21:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4f9dfc1b-5a2a-54ed-a334-3ca6dc0480b7',22,'4F',194,194,2,'2025-12-21T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'95b9489c-f9b6-5297-935a-87a3a71bdd59',95.00,'CONFIRMED','CARD','2025-12-21T22:00:00';
EXEC air.usp_RegisterPayment @id,'8097ae34-fcf8-5bf5-b89a-26167dbcc077',95.00,'CONFIRMED','CARD','2025-12-21T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '58026f79-edcb-5005-a0b9-657ea6f4017f',22,'3E',76,76,1,'2025-12-21T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8cc979d5-cf91-570f-8aa2-40357c5697f1',95.00,'CONFIRMED','CARD','2025-12-21T21:00:00';
EXEC air.usp_RegisterPayment @id,'331772b5-e5d6-5801-aa25-4675aba1f525',95.00,'CONFIRMED','CARD','2025-12-21T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd7781e31-b4f4-58cc-ad01-e3c8837f93b7',22,'4A',187,88,2,'2025-12-21T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8f83f07e-485f-5595-9fd9-f1031dc10748',1.00,'FAILED','CARD','2025-12-21T19:00:00';
EXEC air.usp_RegisterPayment @id,'6428f71a-76f2-54e8-954c-df4779532c5e',85.50,'CONFIRMED','CARD','2025-12-21T20:00:00';
EXEC air.usp_RegisterPayment @id,'508dc717-57a6-5a7f-a5d8-22a94316f094',85.50,'CONFIRMED','CARD','2025-12-21T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cd47780a-eb75-50e5-b918-ef6186842aa2',22,'4B',99,99,1,'2025-12-21T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3ca70ef1-ccd1-5671-8c88-116d94c177cc',95.00,'CONFIRMED','CARD','2025-12-21T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '072c234d-8d49-5723-8204-5024a5156362',22,'6C',171,171,2,'2025-12-21T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b2b4aab2-3b5d-5af7-bb38-48294914d9ce',95.00,'CONFIRMED','CARD','2025-12-21T18:00:00';
EXEC air.usp_RegisterPayment @id,'5e4a1fad-7f7b-5c4a-9f33-690927c59a47',95.00,'CONFIRMED','CARD','2025-12-21T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '914d2629-67fd-536f-aeb0-7f76e16a2d0b',22,'3A',141,125,1,'2025-12-21T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d7e46480-8230-5414-8716-4ef367f8f203',95.00,'CONFIRMED','CARD','2025-12-21T17:00:00';
EXEC air.usp_RegisterPayment @id,'7364edc5-8769-5148-80a8-19737d8e5d0f',95.00,'CONFIRMED','CARD','2025-12-21T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-21T19:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3def6481-5f7f-52cc-a05f-6ba78d9c303a',23,'1D',200,87,2,'2025-12-23T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'46967f3e-4a4c-5dbb-a812-4816d03dc2ba',1.00,'FAILED','CARD','2025-12-23T07:00:00';
EXEC air.usp_RegisterPayment @id,'cc0e56c6-28a8-5ec2-8833-90cbcb5b59d5',230.63,'CONFIRMED','CARD','2025-12-23T08:00:00';
EXEC air.usp_RegisterPayment @id,'f2b4c6f3-a829-5019-97d6-e26cf948accd',230.62,'CONFIRMED','CARD','2025-12-23T09:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-23T10:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4f9f0e1a-9f63-5bb8-a317-165c82fb45fe',23,'1F',54,54,1,'2025-12-23T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4cd495b2-8b65-56b3-a9a8-9df1a98ab28e',256.25,'CONFIRMED','CARD','2025-12-23T07:00:00';
EXEC air.usp_RegisterPayment @id,'cec95224-e12c-5d6b-9053-d69aee606d54',256.25,'CONFIRMED','CARD','2025-12-23T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '238297e3-2c73-5785-9242-94de76c8e70b',23,'1A',59,59,2,'2025-12-23T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'771beaf0-da2e-56dd-90c7-096450402e19',256.25,'CONFIRMED','CARD','2025-12-23T06:00:00';
EXEC air.usp_RegisterPayment @id,'6d3bea9e-768e-58b4-81a2-3afac747558c',256.25,'CONFIRMED','CARD','2025-12-23T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '153086ca-15f6-50e7-98cd-7b7675f0ea36',23,'1C',138,192,1,'2025-12-23T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9a116543-7ddf-5ee2-af8a-793a762c3b5a',256.25,'CONFIRMED','CARD','2025-12-23T05:00:00';
EXEC air.usp_RegisterPayment @id,'23c8991f-1ec1-5578-84ae-ad1756935b39',256.25,'CONFIRMED','CARD','2025-12-23T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '194723c7-e0f9-5cdb-9ceb-5956fb0e9168',23,'2D',132,132,2,'2025-12-23T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a729def7-fd03-5c5e-b5b9-009fbf289fbb',92.25,'CONFIRMED','CARD','2025-12-23T04:00:00';
EXEC air.usp_RegisterPayment @id,'06f5b243-4b8d-5dbd-b0ba-4e96e59e4a5c',92.25,'CONFIRMED','CARD','2025-12-23T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8de5a3d3-273d-508d-bb38-a1a651967709',23,'2E',43,43,1,'2025-12-23T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d31bdb50-cfc1-5a80-a7b2-4adee0ea96d5',102.50,'CONFIRMED','CARD','2025-12-23T03:00:00';
EXEC air.usp_RegisterPayment @id,'b206bcbc-e1ad-550c-a769-0ab4cbd11c1d',102.50,'CONFIRMED','CARD','2025-12-23T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3f885e26-dc2d-51d6-a952-a5f75b004937',23,'3E',42,14,2,'2025-12-23T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3fb4c964-726b-5cd6-bae4-23110798fc7b',1.00,'FAILED','CARD','2025-12-23T01:00:00';
EXEC air.usp_RegisterPayment @id,'2805ad7e-b953-5161-bf83-dcaf256ebae4',102.50,'CONFIRMED','CARD','2025-12-23T02:00:00';
EXEC air.usp_RegisterPayment @id,'7ed11bb2-901f-5b7e-8755-dd3d34a4de70',102.50,'CONFIRMED','CARD','2025-12-23T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '95137cdd-73bf-5706-a339-780014f96e09',23,'2B',22,22,1,'2025-12-22T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'655f260c-fc6a-52b9-b185-2595cab50a8f',102.50,'CONFIRMED','CARD','2025-12-23T01:00:00';
EXEC air.usp_RegisterPayment @id,'e19a3dbd-e17d-5dd7-ac44-751dd7315691',102.50,'CONFIRMED','CARD','2025-12-23T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ce3e1852-b6da-5aa8-8c7c-91c99177bfc0',23,'6F',14,14,2,'2025-12-22T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4a0101a8-9ea8-5ddb-bdba-5df245a01efe',92.25,'CONFIRMED','CARD','2025-12-23T00:00:00';
EXEC air.usp_RegisterPayment @id,'3d72f5df-cfe8-50fe-a0fa-00f60fd57d6f',92.25,'CONFIRMED','CARD','2025-12-23T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1df788d8-a03c-50e4-99dc-1ecfb27b66f5',23,'6E',118,179,1,'2025-12-22T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3fdeb8d3-72a8-5c1e-a272-2ab084c202ac',102.50,'CONFIRMED','CARD','2025-12-22T23:00:00';
EXEC air.usp_RegisterPayment @id,'305eff7c-d122-5e50-87fd-fca86b6e31bb',102.50,'CONFIRMED','CARD','2025-12-23T00:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-23T01:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bde0c10a-14bd-54d5-8ce4-f1e6f3c779e6',23,'6C',71,71,2,'2025-12-22T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'36992681-27c8-5481-af25-4b6dcb7cac56',102.50,'CONFIRMED','CARD','2025-12-22T22:00:00';
EXEC air.usp_RegisterPayment @id,'0213efec-4902-5d9a-8844-3a70d8b9b66b',102.50,'CONFIRMED','CARD','2025-12-22T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8d346b5b-93ed-5f35-8b01-7527e9585ad0',23,'5A',74,74,1,'2025-12-22T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'8a7d381e-8dd2-5561-9dd9-404934618a83',102.50,'CONFIRMED','CARD','2025-12-22T21:00:00';
EXEC air.usp_RegisterPayment @id,'c0c04b72-d80b-504f-916d-29924ae428c1',102.50,'CONFIRMED','CARD','2025-12-22T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'aea0acec-72e3-524c-8e3c-647f53759968',23,'4D',77,166,2,'2025-12-22T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fead15a5-d66c-55fb-9336-bfc0021411de',1.00,'FAILED','CARD','2025-12-22T19:00:00';
EXEC air.usp_RegisterPayment @id,'328344f4-6ed4-5e77-91ad-a3decfc8d322',92.25,'CONFIRMED','CARD','2025-12-22T20:00:00';
EXEC air.usp_RegisterPayment @id,'044141e2-74d2-5525-a75c-a6c62635babb',92.25,'CONFIRMED','CARD','2025-12-22T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0766e847-f51b-5d37-845e-4dd333a08a36',23,'4A',86,86,1,'2025-12-22T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'226ee1ae-b092-5ddf-bb76-ce9ddd75d888',102.50,'CONFIRMED','CARD','2025-12-22T19:00:00';
EXEC air.usp_RegisterPayment @id,'99fcc69e-1b53-5693-91b8-789ec9b487e0',102.50,'CONFIRMED','CARD','2025-12-22T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '04ed0044-11e2-5654-a1b5-5f39c7e53577',23,'7D',42,42,2,'2025-12-22T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d9eda9fa-b82a-54ec-a5d4-769699325c59',102.50,'CONFIRMED','CARD','2025-12-22T18:00:00';
EXEC air.usp_RegisterPayment @id,'87e2cfaa-b650-58e8-a8c8-d6767ff6db0d',102.50,'CONFIRMED','CARD','2025-12-22T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0f482186-8f14-5cb0-a2f7-c6bb6f9908cf',23,'2C',61,18,1,'2025-12-22T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f1c3af76-1cd4-5cec-acdd-6f2a00f66ff3',102.50,'CONFIRMED','CARD','2025-12-22T17:00:00';
EXEC air.usp_RegisterPayment @id,'49afc850-a9de-5579-86bf-4273876e19bc',102.50,'CONFIRMED','CARD','2025-12-22T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd83dc621-0d92-575c-a909-6bb43788c076',23,'3A',29,29,2,'2025-12-22T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'da0ccf7c-9f5a-56a3-b8bb-25a1c8a2499a',92.25,'CONFIRMED','CARD','2025-12-22T16:00:00';
EXEC air.usp_RegisterPayment @id,'b7ebb88b-a1c3-5715-a528-396b6a9683ec',92.25,'CONFIRMED','CARD','2025-12-22T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '025cd3f3-37ea-576f-a54e-95eada011f7a',23,'4F',171,171,1,'2025-12-22T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'884cae31-d092-5ab7-93c1-dff39c62d388',102.50,'CONFIRMED','CARD','2025-12-22T15:00:00';
EXEC air.usp_RegisterPayment @id,'dd5a1aac-a289-52ce-9fdc-b94646e208a6',102.50,'CONFIRMED','CARD','2025-12-22T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0db75a0f-37ba-50b2-b98c-eab31e8f1ed2',23,'2F',26,149,2,'2025-12-22T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5789a2d5-9988-5882-a24b-52cebb3d2be0',1.00,'FAILED','CARD','2025-12-22T13:00:00';
EXEC air.usp_RegisterPayment @id,'def7ea75-b8e2-514f-a622-7e8d24f23eb1',102.50,'CONFIRMED','CARD','2025-12-22T14:00:00';
EXEC air.usp_RegisterPayment @id,'00a3859f-6be6-5119-b183-62750c8e3080',102.50,'CONFIRMED','CARD','2025-12-22T15:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-22T16:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e0cee2c0-7218-5b3e-afd4-f9c27d3484be',23,'3F',197,197,1,'2025-12-22T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d101862b-858e-536e-874c-a34758f6e36d',102.50,'CONFIRMED','CARD','2025-12-22T13:00:00';
EXEC air.usp_RegisterPayment @id,'82ca787e-a432-580b-97e5-804f07fccbfe',102.50,'CONFIRMED','CARD','2025-12-22T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2ca805ab-e98e-5631-b961-d5439e574677',23,'3D',63,63,2,'2025-12-22T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'429240e7-ff5b-5b40-bb31-d47e9faf3d3f',92.25,'CONFIRMED','CARD','2025-12-22T12:00:00';
EXEC air.usp_RegisterPayment @id,'880f6de0-6c16-54d8-9643-75ca94245b1f',92.25,'CONFIRMED','CARD','2025-12-22T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cf990aa6-f8c8-5eaa-b5c5-95864aa7cf3b',23,'6B',60,8,1,'2025-12-22T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c3443bc2-cfd7-5d59-b1ae-2cd1b961f8a9',102.50,'CONFIRMED','CARD','2025-12-22T11:00:00';
EXEC air.usp_RegisterPayment @id,'8875a15f-1832-5689-826f-312fd3216b25',102.50,'CONFIRMED','CARD','2025-12-22T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '21d5b409-577c-502f-8041-f7709bec7a60',23,'3C',119,119,2,'2025-12-22T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fee8492a-5074-5198-9fb4-a07d3666db13',102.50,'CONFIRMED','CARD','2025-12-22T10:00:00';
EXEC air.usp_RegisterPayment @id,'bec545c9-4550-5b94-95c0-d6f1f03c2cbe',102.50,'CONFIRMED','CARD','2025-12-22T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c667859d-bcc1-5b82-8efc-c2515f9185b4',23,'7C',174,174,1,'2025-12-22T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'520f6f34-d693-541a-9e5f-6b3edb28ddfc',102.50,'CONFIRMED','CARD','2025-12-22T09:00:00';
EXEC air.usp_RegisterPayment @id,'dc01da0e-a164-5a14-8469-4b2fae546f68',102.50,'CONFIRMED','CARD','2025-12-22T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3f8cab95-3f77-5fb9-a1f4-fa21a58abc7d',23,'5B',173,72,2,'2025-12-22T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'52327751-f782-5e34-a37f-d67fb29bb595',1.00,'FAILED','CARD','2025-12-22T07:00:00';
EXEC air.usp_RegisterPayment @id,'5ba30da3-3909-5931-b9fd-8cc27851d8fd',92.25,'CONFIRMED','CARD','2025-12-22T08:00:00';
EXEC air.usp_RegisterPayment @id,'eae897ab-19a6-5e48-8f83-fb3b50901a9a',92.25,'CONFIRMED','CARD','2025-12-22T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7fd5409a-98fd-5744-b494-0698cfcae4a2',23,'7B',38,38,1,'2025-12-22T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4015d344-d18b-58e3-84a2-1710582bc2db',102.50,'CONFIRMED','CARD','2025-12-22T07:00:00';
EXEC air.usp_RegisterPayment @id,'594d9052-867e-5c9d-8040-74abca14483c',102.50,'CONFIRMED','CARD','2025-12-22T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f20ab435-6fb7-58c6-9c9f-b5382d13f37d',23,'3B',162,162,2,'2025-12-22T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'acf29e23-8c7d-571c-95d8-3e5fba51aba2',102.50,'CONFIRMED','CARD','2025-12-22T06:00:00';
EXEC air.usp_RegisterPayment @id,'7b36a354-ba63-5841-96b6-5254ecfb9096',102.50,'CONFIRMED','CARD','2025-12-22T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1a396612-a73d-5b6d-b252-8d747f22fbb8',23,'5F',47,86,1,'2025-12-22T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ea1b671c-659c-5b7b-a8aa-fc08c5afd1af',102.50,'CONFIRMED','CARD','2025-12-22T05:00:00';
EXEC air.usp_RegisterPayment @id,'babe6a87-e3be-57d6-8fa8-5c7347dfed2f',102.50,'CONFIRMED','CARD','2025-12-22T06:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-22T07:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6c47f83f-673b-5750-8d2b-2cb56bd89814',24,'1C',61,141,2,'2025-12-23T19:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'64af4c7d-ac7f-51f6-a532-e18b64c30daa',1.00,'FAILED','CARD','2025-12-23T20:00:00';
EXEC air.usp_RegisterPayment @id,'50daca4b-ee39-568b-8f41-996e2042dc8d',247.50,'CONFIRMED','CARD','2025-12-23T21:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-23T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '30d2c8f6-6235-5fd6-b0dc-ebb830f08506',24,'1E',141,141,1,'2025-12-23T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fa277aae-b8df-5f3d-b22d-cb16e28c755b',275.00,'CONFIRMED','CARD','2025-12-23T20:00:00';
EXEC air.usp_RegisterPayment @id,'62dcca45-0d90-5650-9060-8ae29c9cd37c',275.00,'CONFIRMED','CARD','2025-12-23T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c2722e6b-f4b6-5fab-bbdc-f044ceb19dd1',24,'1B',92,92,2,'2025-12-23T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7c5e07b2-7c25-51d7-97cf-e49f7e13f8d8',275.00,'CONFIRMED','CARD','2025-12-23T19:00:00';
EXEC air.usp_RegisterPayment @id,'a6a7a0e7-b77d-518a-bbee-a91ee18465e6',275.00,'CONFIRMED','CARD','2025-12-23T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e3df8865-8b26-59b5-a07f-e62b8af53db2',24,'1F',160,193,1,'2025-12-23T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e85ed107-3b1e-5488-98e5-ebca437fccfe',275.00,'CONFIRMED','CARD','2025-12-23T18:00:00';
EXEC air.usp_RegisterPayment @id,'bed7c080-e706-5284-b26b-da69b327230a',275.00,'CONFIRMED','CARD','2025-12-23T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0305dd00-b1f0-556f-99c9-7f1c6032c463',24,'6B',10,10,2,'2025-12-23T15:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'082dcd94-0016-58a3-9ff0-38982f5cd62a',99.00,'CONFIRMED','CARD','2025-12-23T17:00:00';
EXEC air.usp_RegisterPayment @id,'772007b7-2dd7-563a-894d-94290c4c0032',99.00,'CONFIRMED','CARD','2025-12-23T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3a7e7448-7fc7-5525-9137-568580d7fc06',24,'4E',1,1,1,'2025-12-23T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6c572546-c828-5104-b117-b703008a5f86',110.00,'CONFIRMED','CARD','2025-12-23T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f8af358f-a966-5fff-a1dc-024c1b9c01f1',24,'5C',75,11,2,'2025-12-23T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'193a87ca-19aa-5dad-ad32-58fed10c3e04',1.00,'FAILED','CARD','2025-12-23T14:00:00';
EXEC air.usp_RegisterPayment @id,'73b9d87b-60ec-56ee-a4aa-294417a9fd50',110.00,'CONFIRMED','CARD','2025-12-23T15:00:00';
EXEC air.usp_RegisterPayment @id,'21cd784a-2460-593a-b4ca-5b0c807035c1',110.00,'CONFIRMED','CARD','2025-12-23T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1524e3be-8716-55e5-bcf1-56c6867e6afc',24,'6A',124,124,1,'2025-12-23T12:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '72977148-5984-5492-b4c3-6416fc3b9322',24,'2C',43,43,2,'2025-12-23T11:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'75ab6e28-24f9-5893-b553-6f205b05e3f7',99.00,'CONFIRMED','CARD','2025-12-23T13:00:00';
EXEC air.usp_RegisterPayment @id,'df651e1f-db30-5bcc-b413-d539128c406d',99.00,'CONFIRMED','CARD','2025-12-23T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0e4ece3b-7f3a-5402-81b9-cc0cf07b95fb',24,'2F',44,101,1,'2025-12-23T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6893ef3b-1511-52d4-9b08-73cab308683b',110.00,'CONFIRMED','CARD','2025-12-23T12:00:00';
EXEC air.usp_RegisterPayment @id,'b0fe00ce-737b-565a-a539-88898cbddae5',110.00,'CONFIRMED','CARD','2025-12-23T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-23T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7664d07e-b728-5015-acbe-4930edd0d640',24,'2E',64,64,2,'2025-12-23T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c5644be6-95d1-5d8d-8e92-2976aab970fc',110.00,'CONFIRMED','CARD','2025-12-23T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3a4a5449-25a5-59f1-bd8f-62ae24d20a2b',24,'6C',146,146,1,'2025-12-23T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dfd4c5b7-0c16-53c3-a3d9-594256cf9188',110.00,'CONFIRMED','CARD','2025-12-23T10:00:00';
EXEC air.usp_RegisterPayment @id,'0658fc07-1338-5aea-958c-aa621994c840',110.00,'CONFIRMED','CARD','2025-12-23T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5c397445-c7d2-5f1c-b19b-0bbee98dd26b',24,'5A',172,117,2,'2025-12-23T07:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9d7e6780-59ee-5b40-825f-52a65dfef12e',1.00,'FAILED','CARD','2025-12-23T08:00:00';
EXEC air.usp_RegisterPayment @id,'4a6454b3-80c1-5562-87ab-04435272e75b',99.00,'CONFIRMED','CARD','2025-12-23T09:00:00';
EXEC air.usp_RegisterPayment @id,'3885d728-9c07-5cea-a21d-c7edce5ab875',99.00,'CONFIRMED','CARD','2025-12-23T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '68a3febb-aa0c-5fe2-9fc6-28ee4755560d',24,'7F',67,67,1,'2025-12-23T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'161ed7f6-70a6-5d06-98bc-77056efd74f6',110.00,'CONFIRMED','CARD','2025-12-23T08:00:00';
EXEC air.usp_RegisterPayment @id,'0bee8796-6add-540c-94c7-19695da258a9',110.00,'CONFIRMED','CARD','2025-12-23T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c61674a7-8d6b-5441-ab4e-35a55d7b5981',24,'6D',160,160,2,'2025-12-23T05:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7f080fef-7801-5e6b-9e78-51da1bb837db',24,'4D',35,46,1,'2025-12-23T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7ea69793-e1ee-5958-8173-406cf3ab4b18',110.00,'CONFIRMED','CARD','2025-12-23T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f0e48d08-2824-5eb4-aab4-8446a5cc4eda',24,'3C',68,68,2,'2025-12-23T03:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'65aec6c8-162d-5f77-9b22-5096aa3695e2',99.00,'CONFIRMED','CARD','2025-12-23T05:00:00';
EXEC air.usp_RegisterPayment @id,'8b9d0571-0884-53b7-8372-a9ecc39311b6',99.00,'CONFIRMED','CARD','2025-12-23T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0b4f9b2d-0695-5d7f-8d8c-29923365b200',24,'7A',182,182,1,'2025-12-23T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b4055abd-38eb-58d5-9feb-606280afb4f1',110.00,'CONFIRMED','CARD','2025-12-23T04:00:00';
EXEC air.usp_RegisterPayment @id,'e1c10006-9e83-5192-854b-94f22ecc963b',110.00,'CONFIRMED','CARD','2025-12-23T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8a172568-1cdb-5d6a-8b74-ed28f3be0fa2',24,'2D',115,31,2,'2025-12-23T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1f8161a2-435a-5f7e-83eb-034dc3be79ac',1.00,'FAILED','CARD','2025-12-23T02:00:00';
EXEC air.usp_RegisterPayment @id,'a1e9dca2-f289-5a80-91af-32ffe1b1bf2c',110.00,'CONFIRMED','CARD','2025-12-23T03:00:00';
EXEC air.usp_RegisterPayment @id,'dd2f8fcb-f3ed-52da-91bf-a89c00fc1a7f',110.00,'CONFIRMED','CARD','2025-12-23T04:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-23T05:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4edbd641-a5e0-50f2-a63e-5dea7fb2e5b4',24,'4A',37,37,1,'2025-12-23T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'47a6cd87-39a1-5323-9ac0-2b83de1acec1',110.00,'CONFIRMED','CARD','2025-12-23T02:00:00';
EXEC air.usp_RegisterPayment @id,'fdd89ecb-d021-59b7-951b-98782d3f0693',110.00,'CONFIRMED','CARD','2025-12-23T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0e604db7-392e-5450-be21-585f6d441129',24,'6F',3,3,2,'2025-12-22T23:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ee96a4dc-a522-5d64-86cd-58f4993afb79',99.00,'CONFIRMED','CARD','2025-12-23T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '635edd54-6608-5bda-a2f1-450bb857b6f2',24,'7D',184,124,1,'2025-12-22T22:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'aab88268-f47e-5f08-b86b-85f78920c1c9',24,'5E',59,59,2,'2025-12-22T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'955a4fc7-ba28-5322-904e-6537b3ac2f21',110.00,'CONFIRMED','CARD','2025-12-22T23:00:00';
EXEC air.usp_RegisterPayment @id,'640708ef-0b2c-5cfc-b0ff-0278fa11480c',110.00,'CONFIRMED','CARD','2025-12-23T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '845d1550-5a5b-543e-920e-b661f59c44ea',24,'4B',192,192,1,'2025-12-22T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0f3c5552-1eb4-5526-8c1a-ec223b7fd552',110.00,'CONFIRMED','CARD','2025-12-22T22:00:00';
EXEC air.usp_RegisterPayment @id,'7ca57ecd-623c-56c1-a5b3-128f3a96f69f',110.00,'CONFIRMED','CARD','2025-12-22T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b15c1536-5164-5127-b91a-439a8dfe5130',24,'7C',52,177,2,'2025-12-22T19:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3e0afb15-1993-56d2-b748-b6b4fcea4bb0',1.00,'FAILED','CARD','2025-12-22T20:00:00';
EXEC air.usp_RegisterPayment @id,'b6f6e5f5-7af1-547b-85f5-8d809de16912',99.00,'CONFIRMED','CARD','2025-12-22T21:00:00';
EXEC air.usp_RegisterPayment @id,'94a34fa2-92d9-536e-92a2-8bc3155b4773',99.00,'CONFIRMED','CARD','2025-12-22T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e2871471-6d49-5f55-8800-5e30fd8a3b97',24,'5F',1,1,1,'2025-12-22T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'895f4c16-0bfe-574d-9101-6b3f99442ac5',110.00,'CONFIRMED','CARD','2025-12-22T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '589ac705-83d9-5128-8daa-88cfa5881b29',24,'7E',80,80,2,'2025-12-22T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f0ea63dd-b84a-5ecc-b754-67f407a0fc4b',110.00,'CONFIRMED','CARD','2025-12-22T19:00:00';
EXEC air.usp_RegisterPayment @id,'61be7228-6f16-592f-b6c3-4c50108a39e9',110.00,'CONFIRMED','CARD','2025-12-22T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '464b65ad-fed0-545f-bd6b-f462afb08cc1',24,'3A',56,66,1,'2025-12-22T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'665afe80-3207-5022-931f-9bbac472ab0c',110.00,'CONFIRMED','CARD','2025-12-22T18:00:00';
EXEC air.usp_RegisterPayment @id,'8a8e0664-724c-5b69-b493-5510be7add5b',110.00,'CONFIRMED','CARD','2025-12-22T19:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-22T20:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0830ac3e-8f39-5b90-98e4-da3956cc9e5d',25,'1B',197,95,2,'2025-12-27T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a1dd77f8-75f6-5bc9-ac94-cca4615982cf',1.00,'FAILED','CARD','2025-12-27T14:00:00';
EXEC air.usp_RegisterPayment @id,'7f6cf9b9-33a3-51e7-988d-c20bb2c88209',129.38,'CONFIRMED','CARD','2025-12-27T15:00:00';
EXEC air.usp_RegisterPayment @id,'b2f9d0ce-391b-5653-9bfe-c85307c6e3d9',129.37,'CONFIRMED','CARD','2025-12-27T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-27T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'aa8f6f22-22c6-540c-acda-3894b11e95ea',25,'1F',163,163,1,'2025-12-27T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'208f56ce-dff9-5944-bd44-018738100c5f',143.75,'CONFIRMED','CARD','2025-12-27T14:00:00';
EXEC air.usp_RegisterPayment @id,'1f3e390d-c919-5698-a0a9-d0b38045a6a1',143.75,'CONFIRMED','CARD','2025-12-27T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'de4bf671-ac30-5aa2-b9d5-2281c4dbabab',25,'1C',168,168,2,'2025-12-27T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bc578b75-6f22-5266-919b-81183a8d2baa',143.75,'CONFIRMED','CARD','2025-12-27T13:00:00';
EXEC air.usp_RegisterPayment @id,'ca2e138d-d427-5006-b177-93d526eadd31',143.75,'CONFIRMED','CARD','2025-12-27T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b38a0a38-d164-56db-b069-b502c95a2934',25,'1E',57,121,1,'2025-12-27T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f36d4405-9837-5586-9e08-d7876c90b865',143.75,'CONFIRMED','CARD','2025-12-27T12:00:00';
EXEC air.usp_RegisterPayment @id,'cdca14e8-98c1-5680-990a-2bad37439fbc',143.75,'CONFIRMED','CARD','2025-12-27T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e7a73510-434d-5dba-a027-4dc1f204e9e2',25,'3A',100,100,2,'2025-12-27T09:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a6e452d6-6677-5704-b4a2-f9450ff9b55d',51.75,'CONFIRMED','CARD','2025-12-27T11:00:00';
EXEC air.usp_RegisterPayment @id,'40e37444-8693-5012-9357-abff069d6e41',51.75,'CONFIRMED','CARD','2025-12-27T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '52ecf881-41ef-5de0-9613-80cffe6886e3',25,'3D',47,47,1,'2025-12-27T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f98fa06d-2a86-5fef-a716-a626e744f6b1',57.50,'CONFIRMED','CARD','2025-12-27T10:00:00';
EXEC air.usp_RegisterPayment @id,'81f3e89d-b2c2-502e-8fcd-08baf8185895',57.50,'CONFIRMED','CARD','2025-12-27T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a26904c5-7198-5024-aacb-a31b708d825b',25,'4F',141,189,2,'2025-12-27T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'89e33c5e-4029-535b-a225-9f26e83b2dd6',1.00,'FAILED','CARD','2025-12-27T08:00:00';
EXEC air.usp_RegisterPayment @id,'6fbfc220-bda5-5597-ab19-c150e86ad36f',57.50,'CONFIRMED','CARD','2025-12-27T09:00:00';
EXEC air.usp_RegisterPayment @id,'ddd52fbf-08d8-5cbc-824f-f71af348a886',57.50,'CONFIRMED','CARD','2025-12-27T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f4ef7436-eaf8-5d9b-9c41-3c94e9bd35d1',25,'2C',95,95,1,'2025-12-27T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a7e02008-b881-56be-9164-cf03082bde6f',57.50,'CONFIRMED','CARD','2025-12-27T08:00:00';
EXEC air.usp_RegisterPayment @id,'7f3f77ef-8dfd-5139-9110-7f52e535a503',57.50,'CONFIRMED','CARD','2025-12-27T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4e1ab40a-0bce-5113-b3c1-f188c2cb0181',25,'7E',123,123,2,'2025-12-27T05:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'37547c74-f0f2-52ba-92f0-bb3b02e8389b',51.75,'CONFIRMED','CARD','2025-12-27T07:00:00';
EXEC air.usp_RegisterPayment @id,'f42b5988-0a7f-598e-bb65-e46b9c1f7a7c',51.75,'CONFIRMED','CARD','2025-12-27T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9a9c3acb-9322-54a7-ac58-f4a90def8d70',25,'5D',200,72,1,'2025-12-27T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e5af9064-8ef7-5e29-88a8-a40342430235',57.50,'CONFIRMED','CARD','2025-12-27T06:00:00';
EXEC air.usp_RegisterPayment @id,'dbe70a3c-b910-5c1a-a78b-926ffaa84850',57.50,'CONFIRMED','CARD','2025-12-27T07:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-27T08:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f06669c6-6cd7-5460-b0ed-5e3b7ce3d481',25,'4A',34,34,2,'2025-12-27T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ec45d800-6e08-5d1c-8e73-63a00c93c686',57.50,'CONFIRMED','CARD','2025-12-27T05:00:00';
EXEC air.usp_RegisterPayment @id,'770b2d97-c048-5802-b813-a5e710c36b5a',57.50,'CONFIRMED','CARD','2025-12-27T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6cb52a3c-7532-5adf-a352-0b7f3beb0a7b',25,'3C',165,165,1,'2025-12-27T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c363da60-a6e4-52ef-a1d8-4c650a2bd5ac',57.50,'CONFIRMED','CARD','2025-12-27T04:00:00';
EXEC air.usp_RegisterPayment @id,'f172f8b6-8f38-525e-aa21-983977d19d73',57.50,'CONFIRMED','CARD','2025-12-27T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9a1cc22d-92ce-5f85-beb0-79c0bb88b5d3',25,'3B',194,153,2,'2025-12-27T01:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'579f989a-d3bc-5566-963f-56d20371f398',1.00,'FAILED','CARD','2025-12-27T02:00:00';
EXEC air.usp_RegisterPayment @id,'3c9172ee-5545-55b1-adaa-73ebd231ca4c',51.75,'CONFIRMED','CARD','2025-12-27T03:00:00';
EXEC air.usp_RegisterPayment @id,'aaf24098-c877-5960-93c2-51287136fc0d',51.75,'CONFIRMED','CARD','2025-12-27T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'db6fe58f-0998-5652-8062-20ac082201b5',25,'7C',119,119,1,'2025-12-27T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ac3be38c-192a-5429-b29a-df8452fd8629',57.50,'CONFIRMED','CARD','2025-12-27T02:00:00';
EXEC air.usp_RegisterPayment @id,'a351ea16-4027-5886-8d6e-7228ae205dc4',57.50,'CONFIRMED','CARD','2025-12-27T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'dc2a320f-e0d6-53fb-8396-6040236c8917',25,'6A',23,23,2,'2025-12-26T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a92b9dc4-c373-5f30-bd68-9f2b4922d064',57.50,'CONFIRMED','CARD','2025-12-27T01:00:00';
EXEC air.usp_RegisterPayment @id,'3cfbe444-e741-55c8-9d61-2e41a2308f9d',57.50,'CONFIRMED','CARD','2025-12-27T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c474beb4-1f36-5bdf-ba45-707050aa7a0e',25,'3E',194,128,1,'2025-12-26T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2b8b818d-d285-5d2b-af30-e52781f1e53e',57.50,'CONFIRMED','CARD','2025-12-27T00:00:00';
EXEC air.usp_RegisterPayment @id,'710501e6-fd57-548c-80bd-2898cc42406f',57.50,'CONFIRMED','CARD','2025-12-27T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '361a5f10-60a7-51ba-9e7b-b930b665b7e5',25,'5A',138,138,2,'2025-12-26T21:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'37020c74-d30c-5b0f-800f-4ae9456b8212',51.75,'CONFIRMED','CARD','2025-12-26T23:00:00';
EXEC air.usp_RegisterPayment @id,'888596b7-789a-5108-91f5-80220cde7ef7',51.75,'CONFIRMED','CARD','2025-12-27T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '77ff8ea1-b2a0-5d1a-a810-f5decd41f639',25,'2A',48,48,1,'2025-12-26T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3751eb4c-27d3-504e-8c45-dc34c659fc32',57.50,'CONFIRMED','CARD','2025-12-26T22:00:00';
EXEC air.usp_RegisterPayment @id,'c3f8b3a2-caa6-55a3-8ffc-d489da8c761c',57.50,'CONFIRMED','CARD','2025-12-26T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7d3b0aa3-9a0e-58f3-82c9-4575b5d2760a',25,'7A',60,166,2,'2025-12-26T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fabfa8e1-5646-5981-97c8-f065b9ff35c9',1.00,'FAILED','CARD','2025-12-26T20:00:00';
EXEC air.usp_RegisterPayment @id,'0b7b137b-efec-5d56-9358-36aef89fdee7',57.50,'CONFIRMED','CARD','2025-12-26T21:00:00';
EXEC air.usp_RegisterPayment @id,'b912460e-1786-5061-a2b6-061bbb3ea5ee',57.50,'CONFIRMED','CARD','2025-12-26T22:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-26T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5533b41b-ce93-597a-aeb0-c38e26fad1e5',25,'6B',166,166,1,'2025-12-26T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9d8729b8-668c-50ff-a929-d3d7206ca0c0',57.50,'CONFIRMED','CARD','2025-12-26T20:00:00';
EXEC air.usp_RegisterPayment @id,'eccf379d-0cdb-56e5-93b7-5709841fce6d',57.50,'CONFIRMED','CARD','2025-12-26T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'aa5f60a6-fe19-5060-93a1-dd18b0dc7210',25,'2D',83,83,2,'2025-12-26T17:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c0631911-c609-5670-a4d6-1288b7b1d113',51.75,'CONFIRMED','CARD','2025-12-26T19:00:00';
EXEC air.usp_RegisterPayment @id,'0fbe5fb6-6b5a-5cc1-9802-585bb3ec9d32',51.75,'CONFIRMED','CARD','2025-12-26T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'da6c21d6-0124-5bea-9cb1-1a4d1f1ef5fb',25,'7D',87,86,1,'2025-12-26T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'81172efa-a422-5ac8-979a-70b4cd21e139',57.50,'CONFIRMED','CARD','2025-12-26T18:00:00';
EXEC air.usp_RegisterPayment @id,'a8b353b9-7685-5237-a2c3-b136888b92bf',57.50,'CONFIRMED','CARD','2025-12-26T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3ee9de63-b453-54dc-9efb-9738fb110c9c',25,'5C',18,18,2,'2025-12-26T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'642b584b-3e3b-5dc6-880e-e00652db5725',57.50,'CONFIRMED','CARD','2025-12-26T17:00:00';
EXEC air.usp_RegisterPayment @id,'d4e87815-8c86-517b-8094-d6e427fefc34',57.50,'CONFIRMED','CARD','2025-12-26T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0c2b9cec-38e6-5f6e-b378-14212b793812',25,'2B',3,3,1,'2025-12-26T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f4ee4df2-2948-5e0b-ad50-7de5b85d8334',57.50,'CONFIRMED','CARD','2025-12-26T16:00:00';
EXEC air.usp_RegisterPayment @id,'6bbc5ccc-046b-510c-9167-73aa0af92af0',57.50,'CONFIRMED','CARD','2025-12-26T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '85fbecd5-2df5-58b8-b7e5-d0196bc9a6ea',25,'7F',189,196,2,'2025-12-26T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6d4ba3bf-aad3-5268-b877-9a1067a35f14',1.00,'FAILED','CARD','2025-12-26T14:00:00';
EXEC air.usp_RegisterPayment @id,'9c2769fa-ca44-55e2-a968-4852684eee98',51.75,'CONFIRMED','CARD','2025-12-26T15:00:00';
EXEC air.usp_RegisterPayment @id,'aca08565-0072-52b7-8297-e49ee005a6ce',51.75,'CONFIRMED','CARD','2025-12-26T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c54cd6c0-aa00-5961-8484-3ff09609d064',25,'6F',91,91,1,'2025-12-26T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'76e18ba3-79ef-517f-8fab-0c860692d6de',57.50,'CONFIRMED','CARD','2025-12-26T14:00:00';
EXEC air.usp_RegisterPayment @id,'b980bc85-e7f4-5c9b-ae44-49d548c3d588',57.50,'CONFIRMED','CARD','2025-12-26T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '651ac633-ad6f-51a3-9d21-591897af31a4',25,'4B',128,128,2,'2025-12-26T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7cc0415b-1ead-5b70-9e12-6e4abe3df9cc',57.50,'CONFIRMED','CARD','2025-12-26T13:00:00';
EXEC air.usp_RegisterPayment @id,'08b0abde-2eea-53a6-97ee-257c4889276f',57.50,'CONFIRMED','CARD','2025-12-26T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8ec30490-9d9a-5dc3-8ffe-e412885a7919',25,'7B',73,142,1,'2025-12-26T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6b079375-f826-52f3-9aed-d9ac9cebba42',57.50,'CONFIRMED','CARD','2025-12-26T12:00:00';
EXEC air.usp_RegisterPayment @id,'23755be8-ccb6-5bca-9cff-6834f2e8f174',57.50,'CONFIRMED','CARD','2025-12-26T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-26T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '551632ee-5452-5c8f-af6c-39310651628b',26,'1F',130,78,2,'2025-12-27T16:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'23d62e11-013c-5bc7-97a7-1281322dc948',1.00,'FAILED','CARD','2025-12-27T17:00:00';
EXEC air.usp_RegisterPayment @id,'65fb2cfa-1af4-5f24-8a53-3f635f448f2f',146.25,'CONFIRMED','CARD','2025-12-27T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-27T20:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e2f97548-9364-5085-a513-0399c3fabcd4',26,'1B',2,2,1,'2025-12-27T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fb54f3f6-9077-58e5-9f31-22d2dc667a2a',162.50,'CONFIRMED','CARD','2025-12-27T17:00:00';
EXEC air.usp_RegisterPayment @id,'9abaade0-4fc9-5731-883e-d28bd1c04194',162.50,'CONFIRMED','CARD','2025-12-27T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '53c511dd-2271-5194-9db8-38aac45a8777',26,'1C',157,157,2,'2025-12-27T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d80b5ba8-c8c7-5c37-b7eb-c312124be5db',162.50,'CONFIRMED','CARD','2025-12-27T16:00:00';
EXEC air.usp_RegisterPayment @id,'2b8bcdd5-b15e-5265-a959-9751ee1cd4de',162.50,'CONFIRMED','CARD','2025-12-27T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '36bdde60-ea3d-56c0-a6e7-41b851d99c04',26,'1A',69,60,1,'2025-12-27T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5ca7e13e-663b-5543-b679-f7dbb013ec71',162.50,'CONFIRMED','CARD','2025-12-27T15:00:00';
EXEC air.usp_RegisterPayment @id,'b952b6a9-8c0a-59c9-aa7b-935c54cd8141',162.50,'CONFIRMED','CARD','2025-12-27T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '605914b5-05c3-5468-a92b-aca638128670',26,'6E',24,24,2,'2025-12-27T12:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e698338f-dc94-5559-a903-eed2205a71fc',58.50,'CONFIRMED','CARD','2025-12-27T14:00:00';
EXEC air.usp_RegisterPayment @id,'d66f67f7-01a3-5cba-bce4-9d10dda1b08b',58.50,'CONFIRMED','CARD','2025-12-27T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8bca347d-1e72-5eb9-a19c-14b7f895e1db',26,'6A',109,109,1,'2025-12-27T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'820c6432-b1c4-58c4-b881-1fdbc2aa55ee',65.00,'CONFIRMED','CARD','2025-12-27T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ef182792-3637-50f4-856e-400a0efbab48',26,'3D',44,100,2,'2025-12-27T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c0995a94-af2f-5188-819c-b868fd119445',1.00,'FAILED','CARD','2025-12-27T11:00:00';
EXEC air.usp_RegisterPayment @id,'aa8ef9a9-01d0-5702-ad65-a56b1a5af1ad',65.00,'CONFIRMED','CARD','2025-12-27T12:00:00';
EXEC air.usp_RegisterPayment @id,'e600cbb0-c583-5c70-b6fc-452618a4a0f6',65.00,'CONFIRMED','CARD','2025-12-27T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '355e39a7-98ca-5666-9daf-a4381325ebfa',26,'2E',66,66,1,'2025-12-27T09:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '283d50d2-2631-54eb-a33c-1b903886fdcf',26,'3C',115,115,2,'2025-12-27T08:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7c7d9313-7d52-58a8-af1b-bba42f16d345',58.50,'CONFIRMED','CARD','2025-12-27T10:00:00';
EXEC air.usp_RegisterPayment @id,'4709438b-4842-5e4c-a2c9-9332f21357bb',58.50,'CONFIRMED','CARD','2025-12-27T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd2335378-0cd2-5d8a-846a-a567aed7add9',26,'7F',66,96,1,'2025-12-27T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3080a022-b731-5a53-b637-0e4bd47f5db2',65.00,'CONFIRMED','CARD','2025-12-27T09:00:00';
EXEC air.usp_RegisterPayment @id,'654315ce-28db-5367-9513-18c18a70edbe',65.00,'CONFIRMED','CARD','2025-12-27T10:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-27T11:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'facc2fef-22a2-5c9a-8b6c-7a43e2960215',26,'4A',1,1,2,'2025-12-27T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d704abfe-eae0-5018-ae1d-425e91da65b6',65.00,'CONFIRMED','CARD','2025-12-27T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ada58a57-44db-52b6-b3df-84e2c3f2d3d1',26,'5F',10,10,1,'2025-12-27T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6bfae65a-5b73-56b6-817b-515eee706dc4',65.00,'CONFIRMED','CARD','2025-12-27T07:00:00';
EXEC air.usp_RegisterPayment @id,'e8b0a8fe-b820-5273-8732-ae1bc97e6f92',65.00,'CONFIRMED','CARD','2025-12-27T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '92acf4c7-0f29-586f-b9cc-673ede260f5d',26,'2B',187,169,2,'2025-12-27T04:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'44ed84f8-ee16-5f64-a707-b22e01dc807a',1.00,'FAILED','CARD','2025-12-27T05:00:00';
EXEC air.usp_RegisterPayment @id,'a692943e-f018-50c1-b84b-fc87c6a2168e',58.50,'CONFIRMED','CARD','2025-12-27T06:00:00';
EXEC air.usp_RegisterPayment @id,'f18e8643-fe2e-58a2-ace1-4d00f3d99811',58.50,'CONFIRMED','CARD','2025-12-27T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a5daec8d-1efc-539a-a91c-2cd88efc8523',26,'2A',199,199,1,'2025-12-27T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a6e43947-c309-5d9d-9e66-3da30ba70241',65.00,'CONFIRMED','CARD','2025-12-27T05:00:00';
EXEC air.usp_RegisterPayment @id,'acf4d868-93c9-5f46-a0ef-73a4f5c80ad0',65.00,'CONFIRMED','CARD','2025-12-27T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '82ffdd37-ba09-53f2-8a11-1886b666a64a',26,'3E',198,198,2,'2025-12-27T02:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5adb936f-3860-5bd6-9e09-7924929f447a',26,'7E',5,188,1,'2025-12-27T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'67cccf13-b1f9-5c66-9c71-16560688c271',65.00,'CONFIRMED','CARD','2025-12-27T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '37bf8aa5-36d8-5903-81b2-50e29c9e3f7e',26,'6D',121,121,2,'2025-12-27T00:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'02c259e2-7c15-579b-bf5d-538f7d654dea',58.50,'CONFIRMED','CARD','2025-12-27T02:00:00';
EXEC air.usp_RegisterPayment @id,'5e0627c3-c403-5c87-bae7-5d344a373968',58.50,'CONFIRMED','CARD','2025-12-27T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b3910f77-4dc7-5046-a498-185f86d09bab',26,'6B',96,96,1,'2025-12-26T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'20e7e0f9-4083-5100-95ae-f996dd9f70ec',65.00,'CONFIRMED','CARD','2025-12-27T01:00:00';
EXEC air.usp_RegisterPayment @id,'2bd23d20-e40e-51f1-9e10-08aab81d051c',65.00,'CONFIRMED','CARD','2025-12-27T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8f95e4b4-36b5-50a4-a7e6-46063786ff36',26,'7B',34,15,2,'2025-12-26T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'94f6c96d-f5c9-55c6-8a48-07dfd5d33128',1.00,'FAILED','CARD','2025-12-26T23:00:00';
EXEC air.usp_RegisterPayment @id,'50539d56-9be1-5d5a-be71-2b0e5270bee7',65.00,'CONFIRMED','CARD','2025-12-27T00:00:00';
EXEC air.usp_RegisterPayment @id,'dd51537e-7cc3-5859-b71a-d9a9716537ea',65.00,'CONFIRMED','CARD','2025-12-27T01:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-27T02:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3ca980e4-693d-50f1-9b20-b7c1b04f76a7',26,'4D',182,182,1,'2025-12-26T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'deff0c05-4544-57f0-9537-41c6f2cf1e22',65.00,'CONFIRMED','CARD','2025-12-26T23:00:00';
EXEC air.usp_RegisterPayment @id,'14f6803b-cc46-5665-b546-6f42415bc9cd',65.00,'CONFIRMED','CARD','2025-12-27T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '844a9fa8-e448-5bd6-ae18-3fd2301aadb8',26,'5D',171,171,2,'2025-12-26T20:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1754cd13-e888-57bc-b823-0ff6ba579210',58.50,'CONFIRMED','CARD','2025-12-26T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5d2805a7-afd8-5739-9501-664cb3796787',26,'7D',162,31,1,'2025-12-26T19:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c6d17be1-3467-50c1-a46b-3c7e57d8be92',26,'2F',178,178,2,'2025-12-26T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9aef86c8-1b27-5b75-a14a-36904f141733',65.00,'CONFIRMED','CARD','2025-12-26T20:00:00';
EXEC air.usp_RegisterPayment @id,'474baf86-b4cd-5282-bb2d-0ed4571dfe47',65.00,'CONFIRMED','CARD','2025-12-26T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'bb8152b2-96b7-500c-ae0c-8ccb3603796b',26,'3F',180,180,1,'2025-12-26T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'dc44a05e-f7ee-5c06-ac5d-facb308f7695',65.00,'CONFIRMED','CARD','2025-12-26T19:00:00';
EXEC air.usp_RegisterPayment @id,'4f1da829-f729-5fe0-8241-000393a89c4e',65.00,'CONFIRMED','CARD','2025-12-26T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '17e17709-5cc7-5ecd-831c-475ce62f5043',26,'5C',158,113,2,'2025-12-26T16:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3e0a3a50-b995-5e7c-9d99-0d20be71c9f9',1.00,'FAILED','CARD','2025-12-26T17:00:00';
EXEC air.usp_RegisterPayment @id,'7476200d-9fd1-5889-82ca-fa90820fe8b1',58.50,'CONFIRMED','CARD','2025-12-26T18:00:00';
EXEC air.usp_RegisterPayment @id,'b07064e8-b9c1-5c79-b279-182cd14f3bfa',58.50,'CONFIRMED','CARD','2025-12-26T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '80140e52-fed0-53cb-82b1-18bd54a105d9',26,'3A',180,180,1,'2025-12-26T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'97500850-0744-590f-979d-b300638a1bba',65.00,'CONFIRMED','CARD','2025-12-26T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1fab4f1a-ebec-5352-b2ca-8ba6435d951b',26,'3B',17,17,2,'2025-12-26T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'23830092-83bc-5e58-ad02-b059d88f1a3e',65.00,'CONFIRMED','CARD','2025-12-26T16:00:00';
EXEC air.usp_RegisterPayment @id,'83799831-b8af-5a91-8d07-04d947211435',65.00,'CONFIRMED','CARD','2025-12-26T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c94b418a-64de-5a6b-bb5e-53670c3e3bf9',26,'6C',39,62,1,'2025-12-26T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4b673331-3be2-59f7-a495-25bb40588ff5',65.00,'CONFIRMED','CARD','2025-12-26T15:00:00';
EXEC air.usp_RegisterPayment @id,'53939b9c-ea5d-507f-b3a8-e661e06b2d31',65.00,'CONFIRMED','CARD','2025-12-26T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-26T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd4d525e6-6a5e-5fcd-9fa6-0582e310b529',27,'1B',108,167,2,'2025-12-28T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'59467722-5414-5d13-b7cf-567d377f11af',1.00,'FAILED','CARD','2025-12-28T14:00:00';
EXEC air.usp_RegisterPayment @id,'ad52366f-0b53-5c05-8f00-490cbdcf56d4',163.13,'CONFIRMED','CARD','2025-12-28T15:00:00';
EXEC air.usp_RegisterPayment @id,'af971467-e899-5ce6-8d78-fef919b5bd5a',163.12,'CONFIRMED','CARD','2025-12-28T16:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-28T17:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '926b3f96-4a8b-5e59-a38c-e5b34eaf4c57',27,'1E',119,119,1,'2025-12-28T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'648c0b8c-0ee5-57d0-bdbf-ed1822a5e302',181.25,'CONFIRMED','CARD','2025-12-28T14:00:00';
EXEC air.usp_RegisterPayment @id,'5b2cdc20-5476-5ffe-bf10-317ba0a5e2e3',181.25,'CONFIRMED','CARD','2025-12-28T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '33b44bdb-833e-52da-b773-68f1fa36f953',27,'1A',163,163,2,'2025-12-28T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'163e4499-5681-5837-ae67-313fca113e13',181.25,'CONFIRMED','CARD','2025-12-28T13:00:00';
EXEC air.usp_RegisterPayment @id,'acda78c7-57bf-5c6e-96e4-5e3a5dbe53d3',181.25,'CONFIRMED','CARD','2025-12-28T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '960f5691-21a2-5ada-8717-82f2325438cc',27,'1C',66,31,1,'2025-12-28T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e50ee349-dfb4-550e-936d-882c218e84be',181.25,'CONFIRMED','CARD','2025-12-28T12:00:00';
EXEC air.usp_RegisterPayment @id,'b47b11b6-6e27-5fc1-a408-ebe701713a9b',181.25,'CONFIRMED','CARD','2025-12-28T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5472a42e-45c7-5636-b7b2-b3c388e60ce5',27,'2B',104,104,2,'2025-12-28T09:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'675f9f49-9e89-5e93-a743-f7ce8aa89bf4',65.25,'CONFIRMED','CARD','2025-12-28T11:00:00';
EXEC air.usp_RegisterPayment @id,'7bdf4a5d-e5cf-5b11-88b2-54d07fc1c70f',65.25,'CONFIRMED','CARD','2025-12-28T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '76f3da4f-31fd-534e-9df8-ea6d0c12d0c8',27,'3D',8,8,1,'2025-12-28T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'98f854a3-fed2-5cef-b31e-2678bb978df8',72.50,'CONFIRMED','CARD','2025-12-28T10:00:00';
EXEC air.usp_RegisterPayment @id,'36bf10b2-bbb7-522b-a2f2-cd62620493d0',72.50,'CONFIRMED','CARD','2025-12-28T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '88cbafda-8d38-518f-96f0-4dc09e6c8e0e',27,'6B',159,133,2,'2025-12-28T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6cd5d2f4-9763-57de-b721-d11dbd463c02',1.00,'FAILED','CARD','2025-12-28T08:00:00';
EXEC air.usp_RegisterPayment @id,'a49557d5-55d3-50ab-8d4c-f9342de7dc1f',72.50,'CONFIRMED','CARD','2025-12-28T09:00:00';
EXEC air.usp_RegisterPayment @id,'de03f409-9a64-523c-8aab-40bf8c93f186',72.50,'CONFIRMED','CARD','2025-12-28T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c4ecccb0-16d5-526a-b9ea-e922fb0cb780',27,'4F',14,14,1,'2025-12-28T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f8241a51-32b9-5b39-902f-b0b97e11e590',72.50,'CONFIRMED','CARD','2025-12-28T08:00:00';
EXEC air.usp_RegisterPayment @id,'b5a50302-e923-5202-b927-aa1e60b23392',72.50,'CONFIRMED','CARD','2025-12-28T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0ee7bbe8-5816-5fb5-bf31-e1df5f064a86',27,'5A',47,47,2,'2025-12-28T05:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'076cad8c-9821-5a8f-b823-00f893bbaa94',65.25,'CONFIRMED','CARD','2025-12-28T07:00:00';
EXEC air.usp_RegisterPayment @id,'1c22dd63-860f-5aaf-a68c-7849e719aa6a',65.25,'CONFIRMED','CARD','2025-12-28T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7735662e-4a1e-5ec7-8ed6-00af29d64c04',27,'6E',101,58,1,'2025-12-28T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c15fe5cf-000f-58f5-9e61-1b452fdf4b80',72.50,'CONFIRMED','CARD','2025-12-28T06:00:00';
EXEC air.usp_RegisterPayment @id,'3942b421-c0e6-56b7-9a35-3dbeef4eeeb9',72.50,'CONFIRMED','CARD','2025-12-28T07:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-28T08:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd3e63bc5-cc32-5365-950a-74901649154c',27,'4D',59,59,2,'2025-12-28T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'227071c1-324f-52de-b8c2-28434640ff4a',72.50,'CONFIRMED','CARD','2025-12-28T05:00:00';
EXEC air.usp_RegisterPayment @id,'acb1cd08-3520-5ff7-a1f0-b502a67aacfa',72.50,'CONFIRMED','CARD','2025-12-28T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '02f6cec4-ed63-5470-9992-35ea6c520ada',27,'5E',139,139,1,'2025-12-28T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'54ecaec1-f0a4-59f3-8d6b-0fec2f9bdbc7',72.50,'CONFIRMED','CARD','2025-12-28T04:00:00';
EXEC air.usp_RegisterPayment @id,'db8cbfc6-fd0f-5c74-8711-ce2efb5639eb',72.50,'CONFIRMED','CARD','2025-12-28T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '076d11a6-1360-5766-bda0-3ed0ced55805',27,'7F',92,39,2,'2025-12-28T01:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'538bf31c-461b-58df-b6ac-2fcc904f5a57',1.00,'FAILED','CARD','2025-12-28T02:00:00';
EXEC air.usp_RegisterPayment @id,'d7b49744-bad8-5d06-a6a1-ba2274c95797',65.25,'CONFIRMED','CARD','2025-12-28T03:00:00';
EXEC air.usp_RegisterPayment @id,'1111806d-369d-5768-b4b7-78f8ffb366c0',65.25,'CONFIRMED','CARD','2025-12-28T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd41abfa3-f841-54b0-b969-6b4327eef671',27,'6A',18,18,1,'2025-12-28T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'20e8e66e-3d35-5873-90bc-04df68a1ecb7',72.50,'CONFIRMED','CARD','2025-12-28T02:00:00';
EXEC air.usp_RegisterPayment @id,'6b51ad59-2ddc-5f82-bd9b-b6a1bd0b22fd',72.50,'CONFIRMED','CARD','2025-12-28T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5b83679a-8200-5a34-a33c-60ffc241e2f8',27,'3A',69,69,2,'2025-12-27T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'30c29866-f406-5866-a572-506079ee0238',72.50,'CONFIRMED','CARD','2025-12-28T01:00:00';
EXEC air.usp_RegisterPayment @id,'beaa2cfd-fd4e-555f-af45-db63fa6394de',72.50,'CONFIRMED','CARD','2025-12-28T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd6994c94-fedd-51ce-8f67-4e8a7c9540cc',27,'7D',3,198,1,'2025-12-27T22:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2391bf56-d19b-5473-9b7a-a2f638d6f3e3',72.50,'CONFIRMED','CARD','2025-12-28T00:00:00';
EXEC air.usp_RegisterPayment @id,'62d75dda-b84a-5508-9056-31767182f78e',72.50,'CONFIRMED','CARD','2025-12-28T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '56fe5fcf-8011-5d59-a19f-21a22a7246cc',27,'7E',29,29,2,'2025-12-27T21:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ec6d9eef-1a89-5039-8e96-30c87742f53a',65.25,'CONFIRMED','CARD','2025-12-27T23:00:00';
EXEC air.usp_RegisterPayment @id,'7559f7cf-59be-5962-a959-33ac851a1f7b',65.25,'CONFIRMED','CARD','2025-12-28T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2954e017-d8f3-5c37-b951-d79cacf92729',27,'3C',128,128,1,'2025-12-27T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1798e58d-aff8-5825-a072-f89cc43723bb',72.50,'CONFIRMED','CARD','2025-12-27T22:00:00';
EXEC air.usp_RegisterPayment @id,'a90d57e9-9853-5b9d-872c-06766309d6e2',72.50,'CONFIRMED','CARD','2025-12-27T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '158a2937-3ea5-52d2-97eb-97731fab0bde',27,'4E',109,118,2,'2025-12-27T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1333a3bc-a0ec-5506-97a4-e3340d1c792f',1.00,'FAILED','CARD','2025-12-27T20:00:00';
EXEC air.usp_RegisterPayment @id,'d589762e-9024-5606-aeb4-08d8c7bd3ad5',72.50,'CONFIRMED','CARD','2025-12-27T21:00:00';
EXEC air.usp_RegisterPayment @id,'0412440e-cf1f-516c-aca1-6124cb8852f9',72.50,'CONFIRMED','CARD','2025-12-27T22:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-27T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b2c2261a-cf09-5687-abdb-d4283a93edd6',27,'4B',4,4,1,'2025-12-27T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'10dc7d12-e32d-5826-b9a2-a795451a8133',72.50,'CONFIRMED','CARD','2025-12-27T20:00:00';
EXEC air.usp_RegisterPayment @id,'58b59bf5-b323-54cb-bb4a-67f4784e437d',72.50,'CONFIRMED','CARD','2025-12-27T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9c4b8f4f-92a0-56f6-a334-eaac7804f51e',27,'2C',90,90,2,'2025-12-27T17:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0adb55f5-1b7f-57c8-a6ab-5816326cbd7e',65.25,'CONFIRMED','CARD','2025-12-27T19:00:00';
EXEC air.usp_RegisterPayment @id,'43f0d0d0-f545-59b7-b55f-69689bee09f5',65.25,'CONFIRMED','CARD','2025-12-27T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '500efd70-acdd-59f0-b79e-1c25a51acd18',27,'5F',5,15,1,'2025-12-27T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3274806a-76bf-5694-a21c-e162541ab456',72.50,'CONFIRMED','CARD','2025-12-27T18:00:00';
EXEC air.usp_RegisterPayment @id,'82425e0e-1ad7-5eab-938e-fe2d6aa3d2f7',72.50,'CONFIRMED','CARD','2025-12-27T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '80315f6e-62c6-579d-9a07-2130eb877ce8',27,'5D',8,8,2,'2025-12-27T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'695cbd4a-f896-5528-928f-6e277f7e1930',72.50,'CONFIRMED','CARD','2025-12-27T17:00:00';
EXEC air.usp_RegisterPayment @id,'c5f2a245-d7a3-51e9-97b0-2f2bb6b90328',72.50,'CONFIRMED','CARD','2025-12-27T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'dd769afd-eb93-50ca-bdf3-67d856aa8595',27,'6C',36,36,1,'2025-12-27T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4eefca81-b755-5e24-9a3d-f364fe818170',72.50,'CONFIRMED','CARD','2025-12-27T16:00:00';
EXEC air.usp_RegisterPayment @id,'54b0cf5a-f736-5988-9fe2-12f173988675',72.50,'CONFIRMED','CARD','2025-12-27T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'adf454ac-f191-5ac5-b5e2-7604b8700704',27,'5B',87,157,2,'2025-12-27T13:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4546ae47-8eb1-5270-96c2-db507c1cb282',1.00,'FAILED','CARD','2025-12-27T14:00:00';
EXEC air.usp_RegisterPayment @id,'16a86045-9742-549f-82d5-ae30388db3af',65.25,'CONFIRMED','CARD','2025-12-27T15:00:00';
EXEC air.usp_RegisterPayment @id,'37c67f67-0283-5154-b24f-77c650adb09d',65.25,'CONFIRMED','CARD','2025-12-27T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '28610c44-6b94-5f67-9623-26a90b31eb09',27,'4C',118,118,1,'2025-12-27T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4139e62d-a76e-5aad-8ef0-9c7a0e474bf2',72.50,'CONFIRMED','CARD','2025-12-27T14:00:00';
EXEC air.usp_RegisterPayment @id,'10939b9c-103b-5242-a90c-0e225a3256e5',72.50,'CONFIRMED','CARD','2025-12-27T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0107c559-bbf3-572e-b2e7-e7d17763ffec',27,'2F',37,37,2,'2025-12-27T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d1d25ca1-869f-53dd-8a64-b5596ca1d594',72.50,'CONFIRMED','CARD','2025-12-27T13:00:00';
EXEC air.usp_RegisterPayment @id,'bfc80fc2-8d75-534f-aeb1-9d659e9ce58d',72.50,'CONFIRMED','CARD','2025-12-27T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7ad14ff1-61fc-57b5-9fd8-3fb08c814c96',27,'4A',123,189,1,'2025-12-27T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9e88a05f-dc15-5204-abd8-2120d503ca75',72.50,'CONFIRMED','CARD','2025-12-27T12:00:00';
EXEC air.usp_RegisterPayment @id,'33e61148-dbab-5dfb-bf67-b2b98cbc922b',72.50,'CONFIRMED','CARD','2025-12-27T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-27T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '82767e6c-3594-5f54-87d0-4f447db44a9c',28,'1E',113,142,2,'2025-12-28T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3411486b-64e1-57bb-ad22-977255811478',1.00,'FAILED','CARD','2025-12-28T19:00:00';
EXEC air.usp_RegisterPayment @id,'be0b2c9b-c27c-505a-91b8-f41553347dd7',180.00,'CONFIRMED','CARD','2025-12-28T20:00:00';
EXEC air.usp_RegisterPayment @id,'3ed961c6-f9b2-5f73-a5c9-a8e826c04836',180.00,'CONFIRMED','CARD','2025-12-28T21:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-28T22:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '232bae8d-a094-5ac1-9f8b-59ae8432dfec',28,'1F',17,17,1,'2025-12-28T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d6eb168a-eb15-5797-a528-dea30b1c9a8e',200.00,'CONFIRMED','CARD','2025-12-28T19:00:00';
EXEC air.usp_RegisterPayment @id,'406e6a47-d80f-51e7-98f3-ad70f7a367e5',200.00,'CONFIRMED','CARD','2025-12-28T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b2a5faa2-c1eb-569f-995a-4111eaceb130',28,'1D',117,117,2,'2025-12-28T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5855333c-f9cb-56a8-8401-5c0016562997',200.00,'CONFIRMED','CARD','2025-12-28T18:00:00';
EXEC air.usp_RegisterPayment @id,'83b4af60-6470-550a-b80f-6f9ed807e42b',200.00,'CONFIRMED','CARD','2025-12-28T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '88c03097-bded-5d0e-8cba-bc577a019b28',28,'1A',66,13,1,'2025-12-28T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6d01d4b9-e747-5004-9c57-298209850b5b',200.00,'CONFIRMED','CARD','2025-12-28T17:00:00';
EXEC air.usp_RegisterPayment @id,'fbf85dc1-b174-5414-8c44-b4b4d95abc3e',200.00,'CONFIRMED','CARD','2025-12-28T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a88925af-2651-5fa9-83a1-603ab9f6ab12',28,'6E',27,27,2,'2025-12-28T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'431d220e-c717-5b63-90fd-cf8a6cb14959',72.00,'CONFIRMED','CARD','2025-12-28T16:00:00';
EXEC air.usp_RegisterPayment @id,'79086fff-120d-52e6-9b16-da8af8431c83',72.00,'CONFIRMED','CARD','2025-12-28T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1e1ffb9e-ea0d-5f81-ab03-2f0ba58397e1',28,'2A',136,136,1,'2025-12-28T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fb0dcbd7-a8a8-5405-8c5a-335226bf9a42',80.00,'CONFIRMED','CARD','2025-12-28T15:00:00';
EXEC air.usp_RegisterPayment @id,'70daff36-6b2d-5fa6-ab62-9487ee72432a',80.00,'CONFIRMED','CARD','2025-12-28T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0fac86e4-f1db-5f50-8f07-3f1433cda110',28,'6D',65,2,2,'2025-12-28T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5082158a-9917-5f51-a23c-104fbcaa3bf2',1.00,'FAILED','CARD','2025-12-28T13:00:00';
EXEC air.usp_RegisterPayment @id,'caa685fe-8af4-5de0-85c1-60a5f2f92ff2',80.00,'CONFIRMED','CARD','2025-12-28T14:00:00';
EXEC air.usp_RegisterPayment @id,'860ea048-5b53-521a-a7b5-1c2d95a29c6b',80.00,'CONFIRMED','CARD','2025-12-28T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c4c2e124-193a-5ca5-b10a-1a72d0ff251b',28,'7A',66,66,1,'2025-12-28T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f78e67dd-00c1-5c87-97d2-fffbf3734daa',80.00,'CONFIRMED','CARD','2025-12-28T13:00:00';
EXEC air.usp_RegisterPayment @id,'5c85689a-4762-567b-bab5-9e99d41dfcc7',80.00,'CONFIRMED','CARD','2025-12-28T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'eed43b06-0863-5a81-83b3-dbbd96f97125',28,'4A',106,106,2,'2025-12-28T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7cf7ee70-eb25-50c2-970f-d63e8b29cd71',72.00,'CONFIRMED','CARD','2025-12-28T12:00:00';
EXEC air.usp_RegisterPayment @id,'2ceca04c-251f-5ec8-9858-4102f4c4440c',72.00,'CONFIRMED','CARD','2025-12-28T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cf5cf1c5-2e58-5715-bb34-d73d2a18a0c9',28,'7E',192,37,1,'2025-12-28T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d65159c2-1f04-547b-886e-b3eb8e94cb48',80.00,'CONFIRMED','CARD','2025-12-28T11:00:00';
EXEC air.usp_RegisterPayment @id,'545987e9-212a-56e6-b05c-de30c0d73614',80.00,'CONFIRMED','CARD','2025-12-28T12:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-28T13:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2dac0c88-fda2-5c36-9e50-3437fa2d4938',28,'3B',57,57,2,'2025-12-28T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'63e3d8ea-dd38-5089-92ae-cfd84b349eae',80.00,'CONFIRMED','CARD','2025-12-28T10:00:00';
EXEC air.usp_RegisterPayment @id,'817d2cb1-77de-55ad-911b-77930fd2df78',80.00,'CONFIRMED','CARD','2025-12-28T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0f45522c-3b8c-55dd-a011-c31e40b8dd57',28,'2F',174,174,1,'2025-12-28T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'718690b5-5846-54e3-b31f-ba884871f884',80.00,'CONFIRMED','CARD','2025-12-28T09:00:00';
EXEC air.usp_RegisterPayment @id,'0f444000-3bcc-527b-9436-1011a617307f',80.00,'CONFIRMED','CARD','2025-12-28T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '75921f16-6c88-5b00-b326-f66b19ae4c1b',28,'7B',161,150,2,'2025-12-28T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b00d92b5-9eb0-5eb8-a9a7-80332b6198b7',1.00,'FAILED','CARD','2025-12-28T07:00:00';
EXEC air.usp_RegisterPayment @id,'bfed38b5-0231-51a9-bf19-bae570751551',72.00,'CONFIRMED','CARD','2025-12-28T08:00:00';
EXEC air.usp_RegisterPayment @id,'406893a0-f307-5c37-8374-c590960c7ee0',72.00,'CONFIRMED','CARD','2025-12-28T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '76cecfef-eb94-5a1f-86cf-26a806c31d24',28,'4B',75,75,1,'2025-12-28T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5455d062-8b7e-5f3e-8baa-ae29d7871df1',80.00,'CONFIRMED','CARD','2025-12-28T07:00:00';
EXEC air.usp_RegisterPayment @id,'89070422-7187-53fa-ada3-c32a14a82326',80.00,'CONFIRMED','CARD','2025-12-28T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd091724a-8fa5-5fe2-9aae-a428c9131469',28,'3F',25,25,2,'2025-12-28T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9d25db75-7c7b-5a32-abe4-7ef42fa90a45',80.00,'CONFIRMED','CARD','2025-12-28T06:00:00';
EXEC air.usp_RegisterPayment @id,'ad1fb292-43d5-5396-ad3e-1e4ca73baa11',80.00,'CONFIRMED','CARD','2025-12-28T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b6e52c6f-adc8-55a1-a906-3af20ae6885f',28,'4F',47,40,1,'2025-12-28T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'07e40e80-2ec1-5a31-84ab-e7da186a1fce',80.00,'CONFIRMED','CARD','2025-12-28T05:00:00';
EXEC air.usp_RegisterPayment @id,'31690f98-ae42-5463-8d38-3a11aaaaf113',80.00,'CONFIRMED','CARD','2025-12-28T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '08adeeb7-4d83-59a3-9c10-aae1b75e33e7',28,'4C',93,93,2,'2025-12-28T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6d95e2fa-3f2b-5279-a042-9688c4b31c08',72.00,'CONFIRMED','CARD','2025-12-28T04:00:00';
EXEC air.usp_RegisterPayment @id,'2a2fad91-93b5-5dcc-b8d6-04daf62a0230',72.00,'CONFIRMED','CARD','2025-12-28T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '73510abe-c2fc-576e-81b5-383c00bf1062',28,'5F',23,23,1,'2025-12-28T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'aa5c7e65-52ea-567d-b4fd-42b4fc8d3ef1',80.00,'CONFIRMED','CARD','2025-12-28T03:00:00';
EXEC air.usp_RegisterPayment @id,'aeca998f-3775-5d74-88d7-499cc6a81f40',80.00,'CONFIRMED','CARD','2025-12-28T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '05eef990-19cb-5cfe-98ba-0c90fca5b7e8',28,'2C',106,126,2,'2025-12-28T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'df736621-1722-5a07-bac3-aa6e303500b4',1.00,'FAILED','CARD','2025-12-28T01:00:00';
EXEC air.usp_RegisterPayment @id,'795007e9-0926-5ca1-b309-279c8fbaaed2',80.00,'CONFIRMED','CARD','2025-12-28T02:00:00';
EXEC air.usp_RegisterPayment @id,'a7227b24-600a-593a-99a3-cd42a1645490',80.00,'CONFIRMED','CARD','2025-12-28T03:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-28T04:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e9b0d866-19a0-578d-a04d-076e2e6115a3',28,'2B',173,173,1,'2025-12-27T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a62e4ca8-2973-503e-9fa2-270f20f3d979',80.00,'CONFIRMED','CARD','2025-12-28T01:00:00';
EXEC air.usp_RegisterPayment @id,'34eecadf-f5d5-5efc-92ea-e22eef27593e',80.00,'CONFIRMED','CARD','2025-12-28T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ee69ec16-3704-5ba7-8ea7-df3b5a70b43f',28,'5C',154,154,2,'2025-12-27T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e3cbad78-bac3-5e57-8d72-6a5636ef8db8',72.00,'CONFIRMED','CARD','2025-12-28T00:00:00';
EXEC air.usp_RegisterPayment @id,'88068f3b-b59b-5cf4-b561-8b4cf06e77de',72.00,'CONFIRMED','CARD','2025-12-28T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5eb3372a-576e-5898-bbfb-997340896155',28,'6B',130,95,1,'2025-12-27T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0d4cfe1f-e020-5aa4-873a-ca7ad4e4daf9',80.00,'CONFIRMED','CARD','2025-12-27T23:00:00';
EXEC air.usp_RegisterPayment @id,'3fd74f4a-e964-563a-a3ba-f1426064a076',80.00,'CONFIRMED','CARD','2025-12-28T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c186be58-7d1f-592f-a393-922a9352a737',28,'4D',51,51,2,'2025-12-27T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'97de3fed-ebe2-575c-89d2-7cac457ece93',80.00,'CONFIRMED','CARD','2025-12-27T22:00:00';
EXEC air.usp_RegisterPayment @id,'e11d1383-6aca-5d8d-8d95-e55f77f087ed',80.00,'CONFIRMED','CARD','2025-12-27T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fc6ae61e-3543-5064-aec0-a0123ab2ad98',28,'5D',153,153,1,'2025-12-27T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ff168443-521f-5eef-832a-449d1de4a8ce',80.00,'CONFIRMED','CARD','2025-12-27T21:00:00';
EXEC air.usp_RegisterPayment @id,'93dd1788-dd21-5eff-a085-3e1caab18fcd',80.00,'CONFIRMED','CARD','2025-12-27T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c83886b5-5c32-5abd-a3d7-991ad8254139',28,'3A',33,106,2,'2025-12-27T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b9ecfdf1-0f81-547d-ad17-9713264074af',1.00,'FAILED','CARD','2025-12-27T19:00:00';
EXEC air.usp_RegisterPayment @id,'cc5651e8-34fa-57e6-ad26-c86a10943697',72.00,'CONFIRMED','CARD','2025-12-27T20:00:00';
EXEC air.usp_RegisterPayment @id,'58e5e33f-ada0-5ac4-8515-ace02dc66071',72.00,'CONFIRMED','CARD','2025-12-27T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '13fcda23-7c6c-53d6-afc9-f156a3b38f03',28,'4E',43,43,1,'2025-12-27T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'61ec94cf-7e32-5f98-9aee-6b89f6c0e99a',80.00,'CONFIRMED','CARD','2025-12-27T19:00:00';
EXEC air.usp_RegisterPayment @id,'ba7362ae-a7c1-5eae-a58e-e9180da6169d',80.00,'CONFIRMED','CARD','2025-12-27T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fa1d74e5-6ba5-5a8c-aa57-dc8726333535',28,'5A',178,178,2,'2025-12-27T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fdbf4014-5b2c-50e8-92a9-45346d653ddf',80.00,'CONFIRMED','CARD','2025-12-27T18:00:00';
EXEC air.usp_RegisterPayment @id,'68c5eb8d-60af-51d5-98b7-4b0f88501370',80.00,'CONFIRMED','CARD','2025-12-27T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b5f8538a-05cd-5ff9-beed-12653faf8bb6',28,'2E',152,10,1,'2025-12-27T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1ad2ca45-d0d3-5513-b854-a552b5165a6c',80.00,'CONFIRMED','CARD','2025-12-27T17:00:00';
EXEC air.usp_RegisterPayment @id,'b7070678-9170-59f7-bdbe-c330e340cb85',80.00,'CONFIRMED','CARD','2025-12-27T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-27T19:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '02ba576a-5399-523d-ae66-3d8b05ad3ad6',29,'1E',179,79,2,'2025-12-29T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1a13c695-3c02-5605-ac4c-6d2057826b1a',1.00,'FAILED','CARD','2025-12-29T15:00:00';
EXEC air.usp_RegisterPayment @id,'d34b381d-acfc-5548-a9ce-048c6bdd6eeb',196.88,'CONFIRMED','CARD','2025-12-29T16:00:00';
EXEC air.usp_RegisterPayment @id,'6d0fbdc7-bc52-533c-9500-27c952102b86',196.87,'CONFIRMED','CARD','2025-12-29T17:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-29T18:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cf948fce-5a55-5537-a46d-d1122a5ee3e5',29,'1F',85,85,1,'2025-12-29T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6c7c236e-f54c-518d-8d9f-8e18f3d62a78',218.75,'CONFIRMED','CARD','2025-12-29T15:00:00';
EXEC air.usp_RegisterPayment @id,'38991651-2ab8-5e2a-9d26-181c8d94f915',218.75,'CONFIRMED','CARD','2025-12-29T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4e8eb619-baae-574c-9d03-fffb866e93ee',29,'1C',143,143,2,'2025-12-29T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'15f5703d-5e3b-5b51-ae76-342c6fc28096',218.75,'CONFIRMED','CARD','2025-12-29T14:00:00';
EXEC air.usp_RegisterPayment @id,'b7d05ccd-2d9a-5b5f-b96a-38b9a31ab504',218.75,'CONFIRMED','CARD','2025-12-29T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c2d6bca2-f57c-5a2e-937c-820fa224fda9',29,'1B',115,82,1,'2025-12-29T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'85f7d05b-ad0a-5412-9586-249b519ffb33',218.75,'CONFIRMED','CARD','2025-12-29T13:00:00';
EXEC air.usp_RegisterPayment @id,'43aca337-f66c-550e-b2c4-e70e2b244d4f',218.75,'CONFIRMED','CARD','2025-12-29T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '30c54186-2649-5067-ab0f-a748480dee44',29,'2F',15,15,2,'2025-12-29T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7a58f556-eab0-5f86-9d82-74686637397a',78.75,'CONFIRMED','CARD','2025-12-29T12:00:00';
EXEC air.usp_RegisterPayment @id,'20ce8471-cac8-5b7d-a8ba-5836323aa4c2',78.75,'CONFIRMED','CARD','2025-12-29T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '099df537-5362-53fe-b821-4e678a45f16a',29,'3C',155,155,1,'2025-12-29T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5e7556d6-6dce-58d6-8fde-19d97ea6ddc6',87.50,'CONFIRMED','CARD','2025-12-29T11:00:00';
EXEC air.usp_RegisterPayment @id,'42b1921c-2cc8-5da0-aceb-6056e739afb2',87.50,'CONFIRMED','CARD','2025-12-29T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '44620a06-5786-5908-b760-4e7870e5d9c7',29,'3A',16,111,2,'2025-12-29T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b9fa71f3-ffc5-5030-be43-c5f6e9727cb7',1.00,'FAILED','CARD','2025-12-29T09:00:00';
EXEC air.usp_RegisterPayment @id,'a56b56fe-2372-5cf1-8d3d-dbb5daadaf5b',87.50,'CONFIRMED','CARD','2025-12-29T10:00:00';
EXEC air.usp_RegisterPayment @id,'589e5251-f1c4-537e-af28-28bbfd17420c',87.50,'CONFIRMED','CARD','2025-12-29T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e66af504-e4a8-526b-952c-bee4680a201b',29,'3D',47,47,1,'2025-12-29T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4d4d4db7-a675-5777-86d1-d3319096a19c',87.50,'CONFIRMED','CARD','2025-12-29T09:00:00';
EXEC air.usp_RegisterPayment @id,'1b4fd533-c587-5496-831c-0b91d52d74eb',87.50,'CONFIRMED','CARD','2025-12-29T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b1fb56c7-5cd6-57d6-95e6-772b95b2e10f',29,'4C',132,132,2,'2025-12-29T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'70120e02-6c06-580b-84c0-b3611cac8fe8',78.75,'CONFIRMED','CARD','2025-12-29T08:00:00';
EXEC air.usp_RegisterPayment @id,'225dcf15-1069-5f2c-a5ca-12226bc82af8',78.75,'CONFIRMED','CARD','2025-12-29T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b472b8f2-f4c1-5c2e-89df-a465edaf02af',29,'2E',35,134,1,'2025-12-29T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'163ca8a7-0725-5751-a994-77e893897dad',87.50,'CONFIRMED','CARD','2025-12-29T07:00:00';
EXEC air.usp_RegisterPayment @id,'03bbb6f4-448c-5cb0-9052-ba5d1e138780',87.50,'CONFIRMED','CARD','2025-12-29T08:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-29T09:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1d5b2c3e-513c-520d-9535-af230a1a656e',29,'6B',87,87,2,'2025-12-29T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'4f4e8bbb-549f-5938-810b-40d92b848af4',87.50,'CONFIRMED','CARD','2025-12-29T06:00:00';
EXEC air.usp_RegisterPayment @id,'2d50da58-f4e0-5222-ac74-847f4e66dd97',87.50,'CONFIRMED','CARD','2025-12-29T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6c3d0c96-4dd7-523e-aa08-806a04e32967',29,'2A',31,31,1,'2025-12-29T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'006bca23-2278-5872-b2d6-8e90e84d0afe',87.50,'CONFIRMED','CARD','2025-12-29T05:00:00';
EXEC air.usp_RegisterPayment @id,'512f8d32-a2f0-553d-95a1-898cc035cced',87.50,'CONFIRMED','CARD','2025-12-29T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '959cd4b8-fbfd-5476-8018-1ea76be4ba4a',29,'5A',127,57,2,'2025-12-29T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c73793dc-6efc-597e-8241-dcab8d733a09',1.00,'FAILED','CARD','2025-12-29T03:00:00';
EXEC air.usp_RegisterPayment @id,'6f947806-35d7-5467-8bbf-e119b4dc26ee',78.75,'CONFIRMED','CARD','2025-12-29T04:00:00';
EXEC air.usp_RegisterPayment @id,'cd779841-537d-5bb2-9a1c-d5f8b0ab8bf0',78.75,'CONFIRMED','CARD','2025-12-29T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '712eba62-1b30-56da-b374-8230fe0ac0e1',29,'6D',130,130,1,'2025-12-29T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'819b8143-356d-5348-b91e-3a1a25be71d6',87.50,'CONFIRMED','CARD','2025-12-29T03:00:00';
EXEC air.usp_RegisterPayment @id,'b9077125-ccb3-553a-9e09-78df0ab9894a',87.50,'CONFIRMED','CARD','2025-12-29T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a0b8faad-7029-5765-b315-a61d364c9cff',29,'4B',118,118,2,'2025-12-29T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d93ca7c5-c2f0-5df9-9019-a012893755a2',87.50,'CONFIRMED','CARD','2025-12-29T02:00:00';
EXEC air.usp_RegisterPayment @id,'c5f0828a-5bb8-5e69-a562-7f33a1c72cf0',87.50,'CONFIRMED','CARD','2025-12-29T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '9bf11624-5466-5847-ac0d-e27e7ab3b619',29,'5F',51,139,1,'2025-12-28T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bf9afe47-03d4-56d2-b137-94db2e207367',87.50,'CONFIRMED','CARD','2025-12-29T01:00:00';
EXEC air.usp_RegisterPayment @id,'251ca0cf-83d2-5f83-abc0-2aa53965dbbf',87.50,'CONFIRMED','CARD','2025-12-29T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f6b91a78-9143-5319-8160-ec26722cbfc9',29,'4D',127,127,2,'2025-12-28T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'c5c43459-7483-59ba-ba58-1ae72fa63950',78.75,'CONFIRMED','CARD','2025-12-29T00:00:00';
EXEC air.usp_RegisterPayment @id,'29107d2a-4839-5748-92bd-c2acbd363925',78.75,'CONFIRMED','CARD','2025-12-29T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b47525a2-a03d-5c17-9989-7274cdf31acd',29,'7D',183,183,1,'2025-12-28T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'75042fd9-b6d0-50ee-acf2-033395fe1e16',87.50,'CONFIRMED','CARD','2025-12-28T23:00:00';
EXEC air.usp_RegisterPayment @id,'acb3787c-48ea-50dd-a482-c49645fe8ff9',87.50,'CONFIRMED','CARD','2025-12-29T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '93e780a7-5be9-5f41-af83-a34391c960b5',29,'3E',56,178,2,'2025-12-28T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a929c2cc-dc1c-5f1e-8bd8-dd41ddab6f68',1.00,'FAILED','CARD','2025-12-28T21:00:00';
EXEC air.usp_RegisterPayment @id,'b35f35da-ce8e-5dfd-a2a1-54cb7b5f15d3',87.50,'CONFIRMED','CARD','2025-12-28T22:00:00';
EXEC air.usp_RegisterPayment @id,'4d3c55ca-7a46-5fc3-9b0e-a417e47ecb17',87.50,'CONFIRMED','CARD','2025-12-28T23:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-29T00:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '20884f7c-894f-500f-9201-ee3ece625c36',29,'4A',10,10,1,'2025-12-28T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e2dac401-527c-5b45-bb17-1abf825e2e85',87.50,'CONFIRMED','CARD','2025-12-28T21:00:00';
EXEC air.usp_RegisterPayment @id,'e6fc9b82-e3ee-514f-b962-50533d0257d5',87.50,'CONFIRMED','CARD','2025-12-28T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd3156fd4-ba20-5b5f-89f6-981614a7d648',29,'6C',161,161,2,'2025-12-28T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5427c79c-cc5b-551d-820e-d1f9b56b25b3',78.75,'CONFIRMED','CARD','2025-12-28T20:00:00';
EXEC air.usp_RegisterPayment @id,'6adf0acc-82c5-5865-9882-03f172b8d2ac',78.75,'CONFIRMED','CARD','2025-12-28T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2c7d5447-bb1a-510b-b9a8-757127b0946e',29,'5C',113,37,1,'2025-12-28T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2b6dace8-4003-520e-80c4-280cb3924d70',87.50,'CONFIRMED','CARD','2025-12-28T19:00:00';
EXEC air.usp_RegisterPayment @id,'b179874d-dd5e-5916-8eb9-19b6b03f4992',87.50,'CONFIRMED','CARD','2025-12-28T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7312b34f-0a14-5eb4-84ec-9e6acf32ca28',29,'5B',139,139,2,'2025-12-28T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'070fa03b-de41-565d-a5b5-a29ba1e153c5',87.50,'CONFIRMED','CARD','2025-12-28T18:00:00';
EXEC air.usp_RegisterPayment @id,'42c30114-7d8d-5fd6-a82d-c4349d81cac4',87.50,'CONFIRMED','CARD','2025-12-28T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ef3d6c59-8995-5067-a905-b0e4203de17f',29,'5E',21,21,1,'2025-12-28T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fa7e6c69-e19a-5c51-9520-825f38f05e18',87.50,'CONFIRMED','CARD','2025-12-28T17:00:00';
EXEC air.usp_RegisterPayment @id,'54393679-739f-5833-89a0-2f83b4546fbb',87.50,'CONFIRMED','CARD','2025-12-28T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0627c8d5-d0ce-57ee-aa39-a9165bb2fded',29,'2B',130,5,2,'2025-12-28T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'162a241b-01d7-5f86-96ff-da009fe7b263',1.00,'FAILED','CARD','2025-12-28T15:00:00';
EXEC air.usp_RegisterPayment @id,'21e693c4-c15d-5f1c-b3ff-54e273563822',78.75,'CONFIRMED','CARD','2025-12-28T16:00:00';
EXEC air.usp_RegisterPayment @id,'8b489daa-bb20-5de0-9edd-224e8893868c',78.75,'CONFIRMED','CARD','2025-12-28T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '93b29e05-e0f0-5d83-a30c-2e8e1ba1048b',29,'7F',101,101,1,'2025-12-28T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'98ff5ed6-6972-5324-b566-e4d6c164f56d',87.50,'CONFIRMED','CARD','2025-12-28T15:00:00';
EXEC air.usp_RegisterPayment @id,'ccebbdcf-3769-5afc-bb83-aeffcc66c9f3',87.50,'CONFIRMED','CARD','2025-12-28T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '0cabd6cc-62a6-5f90-88bd-52ff3aa4817c',29,'5D',9,9,2,'2025-12-28T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'62ba42ed-ea48-53e3-a8cc-c0376b12257d',87.50,'CONFIRMED','CARD','2025-12-28T14:00:00';
EXEC air.usp_RegisterPayment @id,'ae28246c-e1e3-573c-9bf0-5982c4ee28fd',87.50,'CONFIRMED','CARD','2025-12-28T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1644f420-cab2-5e9f-8c50-eeac48fc0b6f',29,'4F',77,190,1,'2025-12-28T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9aba3fac-3cf8-5753-959d-09f9cdbfa542',87.50,'CONFIRMED','CARD','2025-12-28T13:00:00';
EXEC air.usp_RegisterPayment @id,'34d12086-55b1-5d71-8827-1460a29a676f',87.50,'CONFIRMED','CARD','2025-12-28T14:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-28T15:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7484f8c7-8fe8-5ef8-b727-86e382d65a4d',30,'1D',26,157,2,'2025-12-29T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'137e789c-2e1a-526e-83e9-0070a7639654',1.00,'FAILED','CARD','2025-12-29T19:00:00';
EXEC air.usp_RegisterPayment @id,'acede31a-db09-57b3-b524-881511ce7fcd',213.75,'CONFIRMED','CARD','2025-12-29T20:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-29T22:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '91726ca0-1ff5-55eb-a3b2-fc11d4ea255f',30,'1C',182,182,1,'2025-12-29T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2ec6e4f0-7570-5a9f-bd17-17f3e3be95f6',237.50,'CONFIRMED','CARD','2025-12-29T19:00:00';
EXEC air.usp_RegisterPayment @id,'426e20ae-6099-57d9-a12e-24d72bad09af',237.50,'CONFIRMED','CARD','2025-12-29T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cfed0a4c-6545-59d3-a22f-c92016849628',30,'1F',183,183,2,'2025-12-29T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f3a0a97d-249a-583d-b222-e3ba0267119a',237.50,'CONFIRMED','CARD','2025-12-29T18:00:00';
EXEC air.usp_RegisterPayment @id,'37948a7e-dc4e-5e06-9069-99d430f1dc2f',237.50,'CONFIRMED','CARD','2025-12-29T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '517ef887-ad90-56f3-b746-b3ed9190a7b7',30,'1B',196,161,1,'2025-12-29T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ec4a3997-dcf4-5509-bcdd-1818cd3a60e5',237.50,'CONFIRMED','CARD','2025-12-29T17:00:00';
EXEC air.usp_RegisterPayment @id,'e83c00d5-36d3-5e49-b377-392278c75ba1',237.50,'CONFIRMED','CARD','2025-12-29T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a2525f22-1a64-557f-b898-c899e1461c51',30,'6F',197,197,2,'2025-12-29T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cc1572ce-a304-5b32-ac7b-88d27109822c',85.50,'CONFIRMED','CARD','2025-12-29T16:00:00';
EXEC air.usp_RegisterPayment @id,'810a8a32-9f61-5255-b500-e8aa8f8d2705',85.50,'CONFIRMED','CARD','2025-12-29T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'babfebae-8bd4-5a20-ac5d-1763317fdd3b',30,'2D',28,28,1,'2025-12-29T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'04e1c634-8705-5198-aaf3-ccfd13a61582',95.00,'CONFIRMED','CARD','2025-12-29T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '347ba358-7006-51e1-ac59-f81c245dfe78',30,'6D',131,123,2,'2025-12-29T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'636f6efe-2ec0-5a47-b08a-13efdec5ce29',1.00,'FAILED','CARD','2025-12-29T13:00:00';
EXEC air.usp_RegisterPayment @id,'5e5d1ff8-b383-5aaa-835e-e3b14ebe820e',95.00,'CONFIRMED','CARD','2025-12-29T14:00:00';
EXEC air.usp_RegisterPayment @id,'8dc04a9c-1055-51b0-b4de-8073a15e276c',95.00,'CONFIRMED','CARD','2025-12-29T15:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6445ea0c-c0ae-5b46-9d0b-fbd62e9a2417',30,'6B',63,63,1,'2025-12-29T11:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '62fff857-ac03-5aca-afca-5fbf44a62d0b',30,'5C',78,78,2,'2025-12-29T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d1ba81a4-700e-52c3-9240-f6f8cc5a04ec',85.50,'CONFIRMED','CARD','2025-12-29T12:00:00';
EXEC air.usp_RegisterPayment @id,'14e09cab-0804-58be-a9fd-84c6a8796ff1',85.50,'CONFIRMED','CARD','2025-12-29T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'eb03bdd1-5c33-5283-94e5-155f4d399554',30,'7B',136,97,1,'2025-12-29T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7d6135db-c9f4-5737-83cd-5160a4a44609',95.00,'CONFIRMED','CARD','2025-12-29T11:00:00';
EXEC air.usp_RegisterPayment @id,'532cd8ed-86e9-58ef-a24c-a1c976a75dc2',95.00,'CONFIRMED','CARD','2025-12-29T12:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-29T13:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '86905da7-ed78-5c62-9243-3103320e11b3',30,'6A',87,87,2,'2025-12-29T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7e51e297-6322-55af-b96d-7e9e345d407c',95.00,'CONFIRMED','CARD','2025-12-29T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '8f3165a8-8bd9-5d98-8eae-dc68446d10c6',30,'7D',172,172,1,'2025-12-29T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'174ffb11-bb9c-52b2-b77c-bf3f9cae1fbb',95.00,'CONFIRMED','CARD','2025-12-29T09:00:00';
EXEC air.usp_RegisterPayment @id,'9e8f24c6-dfd3-5070-8846-09c1df21b114',95.00,'CONFIRMED','CARD','2025-12-29T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '94f7464d-8990-5d6f-be05-03b3f746cd2f',30,'3D',12,69,2,'2025-12-29T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'edc93b8b-8713-500e-8d0d-6dbcc5952687',1.00,'FAILED','CARD','2025-12-29T07:00:00';
EXEC air.usp_RegisterPayment @id,'0b15654d-9f4f-51df-8e8e-a99e56ddd1ea',85.50,'CONFIRMED','CARD','2025-12-29T08:00:00';
EXEC air.usp_RegisterPayment @id,'96897437-892c-5892-b21f-cd9532f7132e',85.50,'CONFIRMED','CARD','2025-12-29T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1f061b0f-d5ed-5c78-aebe-89e87d06d554',30,'7F',181,181,1,'2025-12-29T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3011a1e7-984a-5cb1-8d7c-f6ed6d40dc2d',95.00,'CONFIRMED','CARD','2025-12-29T07:00:00';
EXEC air.usp_RegisterPayment @id,'4d9e8ea6-7702-5cd1-88d6-462dd7240ac9',95.00,'CONFIRMED','CARD','2025-12-29T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7a8b864f-09ce-5b1a-850e-f61d36dc7caf',30,'5E',75,75,2,'2025-12-29T04:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'dccb6fa4-9bc1-583f-bffe-15b5615a48e0',30,'7A',20,57,1,'2025-12-29T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2f8bb336-b076-5e60-8f84-a0f65c79b241',95.00,'CONFIRMED','CARD','2025-12-29T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fbcb2786-3946-5426-be0a-44a2b8c9f8f0',30,'3C',2,2,2,'2025-12-29T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7e10884c-20a5-5b21-bda6-d29235182851',85.50,'CONFIRMED','CARD','2025-12-29T04:00:00';
EXEC air.usp_RegisterPayment @id,'52bd90a4-e6e8-59a1-bcd3-4d28e96467db',85.50,'CONFIRMED','CARD','2025-12-29T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd23ea14a-fb2f-5f80-bf28-d0c3033f6b26',30,'4B',79,79,1,'2025-12-29T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e6ee11c2-9fc4-5e1d-b9c9-02972eaea2e1',95.00,'CONFIRMED','CARD','2025-12-29T03:00:00';
EXEC air.usp_RegisterPayment @id,'07f0a299-9642-5400-abf2-ca3dda29bcd6',95.00,'CONFIRMED','CARD','2025-12-29T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '6c0a98ae-f8aa-542d-bd03-14f3dcf28346',30,'5D',91,131,2,'2025-12-29T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7e666361-c2d6-5b71-80aa-b6f387439ee1',1.00,'FAILED','CARD','2025-12-29T01:00:00';
EXEC air.usp_RegisterPayment @id,'92ba1e2b-b48a-57ed-94b6-6574e79de02e',95.00,'CONFIRMED','CARD','2025-12-29T02:00:00';
EXEC air.usp_RegisterPayment @id,'0a0fc88a-3f2e-57d1-a977-9f631cef0790',95.00,'CONFIRMED','CARD','2025-12-29T03:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-29T04:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a6f3c3b0-0986-5f5a-99a6-ef559a7d7948',30,'6C',170,170,1,'2025-12-28T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6ebb2add-c636-5e5e-a7aa-bff047312d37',95.00,'CONFIRMED','CARD','2025-12-29T01:00:00';
EXEC air.usp_RegisterPayment @id,'4198627d-26cf-54bc-aeb8-9ae4ff10dd46',95.00,'CONFIRMED','CARD','2025-12-29T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '25d96279-834b-50d2-8310-caf8e20b14b8',30,'5B',157,157,2,'2025-12-28T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'5b6df9c9-2147-5451-92d4-7469cfb66e88',85.50,'CONFIRMED','CARD','2025-12-29T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fa46d01d-ec88-533f-a33d-a874df9fd2ab',30,'7C',105,56,1,'2025-12-28T21:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '97b9be51-aaa7-5be7-9a68-226a2cecf70f',30,'3F',172,172,2,'2025-12-28T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'307603be-1a50-5261-b783-ad48c2752410',95.00,'CONFIRMED','CARD','2025-12-28T22:00:00';
EXEC air.usp_RegisterPayment @id,'5399f931-7bc8-55e8-9369-448bc18d2bfa',95.00,'CONFIRMED','CARD','2025-12-28T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ca5110f6-486c-5eaa-8ef7-bbac9309826a',30,'4F',84,84,1,'2025-12-28T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6a7c5b21-7794-5026-8030-7c63be304281',95.00,'CONFIRMED','CARD','2025-12-28T21:00:00';
EXEC air.usp_RegisterPayment @id,'2a590e92-d00a-55d7-bbf3-b8e8e964703f',95.00,'CONFIRMED','CARD','2025-12-28T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '5b3a8e93-cb98-5fa4-891d-51955550b5ac',30,'2C',55,178,2,'2025-12-28T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7387b207-c134-53f1-8d42-e55f291cfc4d',1.00,'FAILED','CARD','2025-12-28T19:00:00';
EXEC air.usp_RegisterPayment @id,'1fef2fca-d565-5d04-8137-82abab59dafe',85.50,'CONFIRMED','CARD','2025-12-28T20:00:00';
EXEC air.usp_RegisterPayment @id,'df593f69-7931-508a-b6a1-b8eefe75b523',85.50,'CONFIRMED','CARD','2025-12-28T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fcb9cabd-ccda-5f5c-ba07-4e2bad9a5380',30,'3B',26,26,1,'2025-12-28T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6fa6cc76-cb21-5cd3-80ec-321ad1748ac8',95.00,'CONFIRMED','CARD','2025-12-28T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1987a69a-63ad-5f4f-bac7-c4996c32479d',30,'3A',32,32,2,'2025-12-28T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3f1280c1-1cdf-508c-a3b5-9b070b5a120f',95.00,'CONFIRMED','CARD','2025-12-28T18:00:00';
EXEC air.usp_RegisterPayment @id,'44869815-5102-52d4-9401-d7745102417c',95.00,'CONFIRMED','CARD','2025-12-28T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '11dd4fc7-e0a2-5cf3-94e7-0f8ca1ba276e',30,'6E',165,22,1,'2025-12-28T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'0fde9a74-6a4f-5a61-8784-4e56e73bcbcb',95.00,'CONFIRMED','CARD','2025-12-28T17:00:00';
EXEC air.usp_RegisterPayment @id,'f65ddac0-2052-5664-aab1-7e7856d2309b',95.00,'CONFIRMED','CARD','2025-12-28T18:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-28T19:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '261e5c72-6529-5d01-8e56-639871050d57',31,'1D',121,13,2,'2025-12-30T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2322237e-13d7-5896-92ee-cfe674798f4d',1.00,'FAILED','CARD','2025-12-30T07:00:00';
EXEC air.usp_RegisterPayment @id,'345619b1-cada-5cca-9a17-d08c8b244a32',230.63,'CONFIRMED','CARD','2025-12-30T08:00:00';
EXEC air.usp_RegisterPayment @id,'27a66574-0748-5f88-9763-bf01a8df231e',230.62,'CONFIRMED','CARD','2025-12-30T09:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-30T10:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '41e6cda4-56fd-5db1-a933-043a0a6657e6',31,'1A',110,110,1,'2025-12-30T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7fc13f31-84fb-57fe-a794-6852ae989739',256.25,'CONFIRMED','CARD','2025-12-30T07:00:00';
EXEC air.usp_RegisterPayment @id,'4285d490-583e-5fbf-85db-e5badf50247e',256.25,'CONFIRMED','CARD','2025-12-30T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e869d174-e757-5530-a938-117fc7f79c30',31,'1E',95,95,2,'2025-12-30T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'76982fef-0866-5d82-bedf-a45e91c907bc',256.25,'CONFIRMED','CARD','2025-12-30T06:00:00';
EXEC air.usp_RegisterPayment @id,'b55eefc6-ee52-5772-bc37-a44a82636300',256.25,'CONFIRMED','CARD','2025-12-30T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2008192a-d3d6-5589-9300-dfebab56994f',31,'1F',170,171,1,'2025-12-30T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'da79241a-8828-5160-8963-adfbdf411908',256.25,'CONFIRMED','CARD','2025-12-30T05:00:00';
EXEC air.usp_RegisterPayment @id,'2b4722aa-d815-5104-bd05-ff19bf00f936',256.25,'CONFIRMED','CARD','2025-12-30T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b8d0a014-f842-5771-af59-4ca5bba717a3',31,'6A',92,92,2,'2025-12-30T02:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1ecd1251-619a-54b5-805f-44afcdf9591d',92.25,'CONFIRMED','CARD','2025-12-30T04:00:00';
EXEC air.usp_RegisterPayment @id,'90180267-0d24-54cc-8690-ca16fffbaeaf',92.25,'CONFIRMED','CARD','2025-12-30T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cf71c834-89ba-5d81-9efd-14ad92dd0f7b',31,'3C',102,102,1,'2025-12-30T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'192316b3-28b4-5173-9425-fc047e67974e',102.50,'CONFIRMED','CARD','2025-12-30T03:00:00';
EXEC air.usp_RegisterPayment @id,'2cfd91c4-3656-5211-a0e3-4bd578741b0a',102.50,'CONFIRMED','CARD','2025-12-30T04:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3a2350c5-05b1-53ad-88f9-c2ff100cbf29',31,'2E',20,58,2,'2025-12-30T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'729e174e-4a1a-50f5-8cc9-5897ac82aaf7',1.00,'FAILED','CARD','2025-12-30T01:00:00';
EXEC air.usp_RegisterPayment @id,'647be122-cf3a-5ed9-b67e-4b69b1933073',102.50,'CONFIRMED','CARD','2025-12-30T02:00:00';
EXEC air.usp_RegisterPayment @id,'2d35054b-97fc-5cce-9a0c-6f57889acede',102.50,'CONFIRMED','CARD','2025-12-30T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1bd2368b-209b-5fe4-9d0f-0277f66aa3db',31,'5E',162,162,1,'2025-12-29T23:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'56529d99-d0e0-50db-836e-78ae47e2dcae',102.50,'CONFIRMED','CARD','2025-12-30T01:00:00';
EXEC air.usp_RegisterPayment @id,'8024d382-bb0b-553e-9747-c316b458b4b5',102.50,'CONFIRMED','CARD','2025-12-30T02:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2c3b296a-e503-51f2-8071-7c305a151775',31,'4F',139,139,2,'2025-12-29T22:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'acd0cbd2-ca48-5654-8173-6b210e61c5f9',92.25,'CONFIRMED','CARD','2025-12-30T00:00:00';
EXEC air.usp_RegisterPayment @id,'593efec6-71fe-58df-bfdc-44c2f2cf2ea4',92.25,'CONFIRMED','CARD','2025-12-30T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c7fd1a0f-fb3a-52f2-aa97-66b2c464c725',31,'3E',130,162,1,'2025-12-29T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'13a799d2-321c-59ae-a161-b8808e4d1676',102.50,'CONFIRMED','CARD','2025-12-29T23:00:00';
EXEC air.usp_RegisterPayment @id,'629592e4-2bbc-5687-8d47-bcdabad9d0e6',102.50,'CONFIRMED','CARD','2025-12-30T00:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-30T01:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '871f23a6-526f-5609-ab3a-9e6eda68b2ad',31,'2C',137,137,2,'2025-12-29T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'54cfbf38-6bd4-594a-9893-c0b0b1fcd240',102.50,'CONFIRMED','CARD','2025-12-29T22:00:00';
EXEC air.usp_RegisterPayment @id,'a5b7456e-8b5c-54d2-993f-b7548e8c176c',102.50,'CONFIRMED','CARD','2025-12-29T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cd6a9d26-5f0b-5fe2-9b67-b2e28fa968de',31,'7D',96,96,1,'2025-12-29T19:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2f8986d2-3b9c-518e-8528-b5cfbc1b7e26',102.50,'CONFIRMED','CARD','2025-12-29T21:00:00';
EXEC air.usp_RegisterPayment @id,'421e5f60-a8ac-5f98-9d46-54211ec55127',102.50,'CONFIRMED','CARD','2025-12-29T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '647eb570-16ad-54a0-979b-2a6bba852561',31,'4E',123,174,2,'2025-12-29T18:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e93fd73c-62e1-5253-8485-227ad1b76007',1.00,'FAILED','CARD','2025-12-29T19:00:00';
EXEC air.usp_RegisterPayment @id,'98ed69b2-7e58-58f1-88d2-1a540b256ad7',92.25,'CONFIRMED','CARD','2025-12-29T20:00:00';
EXEC air.usp_RegisterPayment @id,'12b048fa-6140-5b79-88e6-91d58975dc70',92.25,'CONFIRMED','CARD','2025-12-29T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ecf493c3-7813-5771-8d8a-8b0f6bc3e928',31,'5D',89,89,1,'2025-12-29T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'2b1c65ef-5cdf-5a81-ba22-af770ad25d46',102.50,'CONFIRMED','CARD','2025-12-29T19:00:00';
EXEC air.usp_RegisterPayment @id,'cf67c5b7-cf19-5ffb-9c59-058bd614c96f',102.50,'CONFIRMED','CARD','2025-12-29T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2079e4d9-2706-52f1-a4c9-98ed522e8edc',31,'2A',112,112,2,'2025-12-29T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9e2fdfa2-f7e4-593d-86a4-492c7169d7d2',102.50,'CONFIRMED','CARD','2025-12-29T18:00:00';
EXEC air.usp_RegisterPayment @id,'dff08f30-54e6-5d6e-8490-c11eba98a82c',102.50,'CONFIRMED','CARD','2025-12-29T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'af0ebed7-4c31-5a60-bbc9-3744666b2eb7',31,'7C',3,34,1,'2025-12-29T15:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'d9c7004e-dc2e-5088-a8eb-4bdf73489dd1',102.50,'CONFIRMED','CARD','2025-12-29T17:00:00';
EXEC air.usp_RegisterPayment @id,'7d3c6da6-21a7-58a0-9d64-95d2224a2809',102.50,'CONFIRMED','CARD','2025-12-29T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c7261933-ce73-54c6-ab0a-bea328481711',31,'7F',73,73,2,'2025-12-29T14:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'f0a7da01-4392-5b22-9a70-a16924ab5c45',92.25,'CONFIRMED','CARD','2025-12-29T16:00:00';
EXEC air.usp_RegisterPayment @id,'e2f67735-b722-5372-8535-c2e2ee9177bd',92.25,'CONFIRMED','CARD','2025-12-29T17:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7c75d0a2-de40-5107-bf61-56a578241ff1',31,'6F',64,64,1,'2025-12-29T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'758c4cf4-4197-5285-843f-0a8a51e75194',102.50,'CONFIRMED','CARD','2025-12-29T15:00:00';
EXEC air.usp_RegisterPayment @id,'2a7eb6a0-d374-51bf-8a3a-aab83fd2db5a',102.50,'CONFIRMED','CARD','2025-12-29T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '102930cc-da19-5011-91d3-6cd34e88e596',31,'6B',27,111,2,'2025-12-29T12:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9ec882f1-7024-5ce6-aab2-8da9a6fa9333',1.00,'FAILED','CARD','2025-12-29T13:00:00';
EXEC air.usp_RegisterPayment @id,'543a2aa2-4806-5abb-a640-82a931d0648b',102.50,'CONFIRMED','CARD','2025-12-29T14:00:00';
EXEC air.usp_RegisterPayment @id,'6c02bca0-741b-5c3d-9213-d5976da76dba',102.50,'CONFIRMED','CARD','2025-12-29T15:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-29T16:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2226654a-b477-59e6-a2e2-9fadbad48349',31,'5C',55,55,1,'2025-12-29T11:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a2b74506-57b9-5f70-bdfd-05faf8e3c7db',102.50,'CONFIRMED','CARD','2025-12-29T13:00:00';
EXEC air.usp_RegisterPayment @id,'9a8b5049-8eef-5e5a-bd65-dee9203b42f8',102.50,'CONFIRMED','CARD','2025-12-29T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a728974c-f68c-53de-90dc-6ddb8547812d',31,'7A',132,132,2,'2025-12-29T10:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'89982cc7-0f63-55bd-833c-f29da59f6449',92.25,'CONFIRMED','CARD','2025-12-29T12:00:00';
EXEC air.usp_RegisterPayment @id,'c0b0f047-e784-5dcc-badf-e4f42f693abf',92.25,'CONFIRMED','CARD','2025-12-29T13:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'cf01ec28-9804-5354-9a5d-3f951d753f01',31,'4D',199,71,1,'2025-12-29T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b535cfc8-7157-57dc-950e-56b6f9c51649',102.50,'CONFIRMED','CARD','2025-12-29T11:00:00';
EXEC air.usp_RegisterPayment @id,'66c35f98-02c8-528d-a6f3-09813c27a049',102.50,'CONFIRMED','CARD','2025-12-29T12:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f334834a-adfc-5e6f-a7af-e508bd9bf4f9',31,'2B',28,28,2,'2025-12-29T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a788877a-abf3-577f-be9a-80b2d9ad84bd',102.50,'CONFIRMED','CARD','2025-12-29T10:00:00';
EXEC air.usp_RegisterPayment @id,'2c92d6dc-09a1-5bfb-8b93-f4e3d4d85786',102.50,'CONFIRMED','CARD','2025-12-29T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f8047558-0231-58db-9bc2-74ffad06cc78',31,'2F',22,22,1,'2025-12-29T07:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'960b66e7-4a95-5ee2-8ac7-eea5e49996c2',102.50,'CONFIRMED','CARD','2025-12-29T09:00:00';
EXEC air.usp_RegisterPayment @id,'8f084686-3c91-5a7a-912f-36adbcc41963',102.50,'CONFIRMED','CARD','2025-12-29T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '434d89df-a781-5a3b-936b-c079b47bea6e',31,'6C',140,169,2,'2025-12-29T06:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'912e1f92-bc2a-55fc-bf4c-8df4aa0fa14d',1.00,'FAILED','CARD','2025-12-29T07:00:00';
EXEC air.usp_RegisterPayment @id,'acd4c1c6-c6c1-57ef-939a-75967a687d43',92.25,'CONFIRMED','CARD','2025-12-29T08:00:00';
EXEC air.usp_RegisterPayment @id,'33f57199-033b-574d-829b-cd20e501a281',92.25,'CONFIRMED','CARD','2025-12-29T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'd29c6b70-7f78-5bdc-a0ba-d9d7e7396b9c',31,'6D',83,83,1,'2025-12-29T05:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cddf221a-59bb-504b-af57-e0daa9922684',102.50,'CONFIRMED','CARD','2025-12-29T07:00:00';
EXEC air.usp_RegisterPayment @id,'e9cf4d5f-dcdb-5acb-85dc-4cd9265329d9',102.50,'CONFIRMED','CARD','2025-12-29T08:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '59d6da61-1109-5715-bfde-e82824b68d76',31,'3A',154,154,2,'2025-12-29T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'9964c440-d9ac-549d-9346-437078ca30f7',102.50,'CONFIRMED','CARD','2025-12-29T06:00:00';
EXEC air.usp_RegisterPayment @id,'f663600a-9dc6-5b65-8562-8d52444496cf',102.50,'CONFIRMED','CARD','2025-12-29T07:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '20a6d399-24a5-573d-b596-35257ecb0469',31,'6E',95,106,1,'2025-12-29T03:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'19eb9e20-b492-5f05-bffc-624c74fe4ca5',102.50,'CONFIRMED','CARD','2025-12-29T05:00:00';
EXEC air.usp_RegisterPayment @id,'09562fd5-67ad-5f59-880f-3ead097bd715',102.50,'CONFIRMED','CARD','2025-12-29T06:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-29T07:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '4f9b1294-fe8f-5953-bb94-237437fa4847',32,'1C',73,150,2,'2025-12-30T19:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'e504c53f-dc4d-56fc-befa-f0efc956c810',1.00,'FAILED','CARD','2025-12-30T20:00:00';
EXEC air.usp_RegisterPayment @id,'58ef143a-353e-50bd-86bc-9db779782e36',247.50,'CONFIRMED','CARD','2025-12-30T21:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-30T23:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '34bb288d-0cc9-5f2b-a41e-707491178b96',32,'1E',119,119,1,'2025-12-30T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'bb151cd2-98e6-5211-9df6-8a484bfcf7fc',275.00,'CONFIRMED','CARD','2025-12-30T20:00:00';
EXEC air.usp_RegisterPayment @id,'337c3819-5a9d-5cab-ba88-a748df69a895',275.00,'CONFIRMED','CARD','2025-12-30T21:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '70d592e4-a91b-5a8a-88b6-f1022983c9d1',32,'1B',151,151,2,'2025-12-30T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'59e6e46b-c077-51e0-b189-aa85f2d3d2a7',275.00,'CONFIRMED','CARD','2025-12-30T19:00:00';
EXEC air.usp_RegisterPayment @id,'e1bd3cab-276e-51a9-a266-7f9ee9102d50',275.00,'CONFIRMED','CARD','2025-12-30T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '75c5ff02-8634-5ea3-a0bc-5a4ba4bb922e',32,'1F',7,115,1,'2025-12-30T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a0a5d6ae-429f-5284-9e0a-d94c8636df0c',275.00,'CONFIRMED','CARD','2025-12-30T18:00:00';
EXEC air.usp_RegisterPayment @id,'d521e5f8-e4b3-55f2-b98c-05ad4222c12b',275.00,'CONFIRMED','CARD','2025-12-30T19:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'c94ca8c7-148c-5f00-8649-d3ae93e68855',32,'3C',194,194,2,'2025-12-30T15:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1b50683f-7004-553e-b199-5ed8cb43f63b',99.00,'CONFIRMED','CARD','2025-12-30T17:00:00';
EXEC air.usp_RegisterPayment @id,'9f19dd9c-1950-5aaf-8c08-490841e016e5',99.00,'CONFIRMED','CARD','2025-12-30T18:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fa9a36d3-f07c-5277-994c-2aa12ec7e821',32,'2E',153,153,1,'2025-12-30T14:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'cde983d1-3de7-57e5-a11e-3ea6a10a9681',110.00,'CONFIRMED','CARD','2025-12-30T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'b2300b04-f3c3-5f46-b013-0bc7008b781f',32,'2F',181,115,2,'2025-12-30T13:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'763b1d14-fa9b-5296-97af-92ee424fa995',1.00,'FAILED','CARD','2025-12-30T14:00:00';
EXEC air.usp_RegisterPayment @id,'a48493c7-137f-50b8-9370-3e345188ec3d',110.00,'CONFIRMED','CARD','2025-12-30T15:00:00';
EXEC air.usp_RegisterPayment @id,'553ae757-7f10-5304-acb8-205c719acc61',110.00,'CONFIRMED','CARD','2025-12-30T16:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '7b3100ba-4691-53ca-b0ca-2ea1342672f9',32,'5C',185,185,1,'2025-12-30T12:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '56999c66-1ca9-5b9e-b6e3-9379b93974e3',32,'3A',126,126,2,'2025-12-30T11:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'b1f198d0-4995-58be-a3c2-87c7962ed8bc',99.00,'CONFIRMED','CARD','2025-12-30T13:00:00';
EXEC air.usp_RegisterPayment @id,'28d0d6e7-b359-57e9-af13-5e398439c0c9',99.00,'CONFIRMED','CARD','2025-12-30T14:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2dab2288-7384-55f4-be2b-fefbd6b6a3e3',32,'3B',27,10,1,'2025-12-30T10:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fc70ca47-256f-572b-bd4f-3a6bac5d03e3',110.00,'CONFIRMED','CARD','2025-12-30T12:00:00';
EXEC air.usp_RegisterPayment @id,'2790a065-bbe5-507f-b9ae-b166bdf31bd8',110.00,'CONFIRMED','CARD','2025-12-30T13:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-30T14:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '1e39f428-458e-5c9a-ab13-90aaad221542',32,'7F',76,76,2,'2025-12-30T09:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'503406c0-012e-5134-8715-f3a3a28fab46',110.00,'CONFIRMED','CARD','2025-12-30T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f89dc059-5078-50c2-85bc-7b13fb045b45',32,'4E',18,18,1,'2025-12-30T08:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'74e1eb4b-0e98-551e-bf27-c0ee0c003452',110.00,'CONFIRMED','CARD','2025-12-30T10:00:00';
EXEC air.usp_RegisterPayment @id,'517cafd6-2610-59af-9f18-42cbe2cd4571',110.00,'CONFIRMED','CARD','2025-12-30T11:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'fded2762-cc16-5297-96ad-76f87392eb4f',32,'2D',51,25,2,'2025-12-30T07:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ca68a99e-6f45-5192-8fc7-e4dd492b00fd',1.00,'FAILED','CARD','2025-12-30T08:00:00';
EXEC air.usp_RegisterPayment @id,'6bb0c3ac-ed47-5c9f-b0b9-ddfc2f626ece',99.00,'CONFIRMED','CARD','2025-12-30T09:00:00';
EXEC air.usp_RegisterPayment @id,'654bec4d-5eec-5424-b2e5-892814e6a7ac',99.00,'CONFIRMED','CARD','2025-12-30T10:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'a45fb7a5-5a8b-537c-9e97-6208a2e831cf',32,'2A',177,177,1,'2025-12-30T06:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'09ae46d2-27b3-5e97-9a68-8ced5dad25f8',110.00,'CONFIRMED','CARD','2025-12-30T08:00:00';
EXEC air.usp_RegisterPayment @id,'8ad4ca0f-1e16-53b0-b0f1-6a31c1721fe5',110.00,'CONFIRMED','CARD','2025-12-30T09:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '88c61f67-2a9b-5cbf-80e6-ceb99b4df20f',32,'7E',87,87,2,'2025-12-30T05:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '59e6d054-50c9-51a2-9cef-9cd80913ee11',32,'2B',32,49,1,'2025-12-30T04:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'a1171eb4-83b9-53b3-9fcc-7935c36dd9b3',110.00,'CONFIRMED','CARD','2025-12-30T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '47457476-f82d-5ebc-b320-0604f23ff376',32,'2C',172,172,2,'2025-12-30T03:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'7b3a9e69-5339-53c1-a99a-b8d0fe44c531',99.00,'CONFIRMED','CARD','2025-12-30T05:00:00';
EXEC air.usp_RegisterPayment @id,'77e69e9e-b333-5046-b24c-050c23a6b4c8',99.00,'CONFIRMED','CARD','2025-12-30T06:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'ea83f387-5efc-50b3-a245-a5dfcdb9a6d2',32,'5E',123,123,1,'2025-12-30T02:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'3d9d7702-13e7-56d4-845d-4f2eead128b2',110.00,'CONFIRMED','CARD','2025-12-30T04:00:00';
EXEC air.usp_RegisterPayment @id,'55f1b0cf-8f70-5be1-89c1-9187fe00f75c',110.00,'CONFIRMED','CARD','2025-12-30T05:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '738c47ac-2e70-59ce-878a-e8f4db991b91',32,'6B',178,151,2,'2025-12-30T01:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'6c405278-72a8-5e0b-bccc-7bc1aeb1952c',1.00,'FAILED','CARD','2025-12-30T02:00:00';
EXEC air.usp_RegisterPayment @id,'7666f60c-acd5-5d93-b363-92fd6d4e055c',110.00,'CONFIRMED','CARD','2025-12-30T03:00:00';
EXEC air.usp_RegisterPayment @id,'99386319-1724-5b64-b00d-156069462cf6',110.00,'CONFIRMED','CARD','2025-12-30T04:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-30T05:00:00',N'Cancelación sintética voluntaria';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e0a301d2-bfb0-5148-85c5-580dc0346ce1',32,'4C',168,168,1,'2025-12-30T00:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'27965359-29e7-5b06-b5c6-69057ad442d2',110.00,'CONFIRMED','CARD','2025-12-30T02:00:00';
EXEC air.usp_RegisterPayment @id,'8a2e991f-e726-56e4-8104-bc3107ce3e7a',110.00,'CONFIRMED','CARD','2025-12-30T03:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '255dc8bd-fdbd-5f6a-ad9f-3fb4dd3b2ba3',32,'3D',105,105,2,'2025-12-29T23:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'82e9ca9a-08bf-512f-98c4-41bfb496bd09',99.00,'CONFIRMED','CARD','2025-12-30T01:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '377f81f6-9ec8-5fe6-9b2a-6a8aba886d47',32,'3E',28,85,1,'2025-12-29T22:00:00',NULL,@id OUTPUT;
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'f1e07d5c-a0a9-58db-8c2d-25e91ed9e8c9',32,'4D',84,84,2,'2025-12-29T21:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'1fd0ac62-94ca-5324-bff4-14a467b89da8',110.00,'CONFIRMED','CARD','2025-12-29T23:00:00';
EXEC air.usp_RegisterPayment @id,'c07422c3-f82f-5acf-a2a1-133d9fb21b09',110.00,'CONFIRMED','CARD','2025-12-30T00:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '2935aa26-48e5-5264-9c47-d5ebf0d6a277',32,'7D',129,129,1,'2025-12-29T20:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'065bb20d-13b7-5997-8b1c-c6188ff63222',110.00,'CONFIRMED','CARD','2025-12-29T22:00:00';
EXEC air.usp_RegisterPayment @id,'2cc36a48-cfe7-54b7-82e5-7021ca445788',110.00,'CONFIRMED','CARD','2025-12-29T23:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket 'e5d3628d-42d5-54de-a344-1d9fb5063649',32,'4A',78,126,2,'2025-12-29T19:00:00',1,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'601ccc01-3091-55a9-bffd-3a036c2644a3',1.00,'FAILED','CARD','2025-12-29T20:00:00';
EXEC air.usp_RegisterPayment @id,'6be162ca-66e9-5bc7-add6-ec4d977d659f',99.00,'CONFIRMED','CARD','2025-12-29T21:00:00';
EXEC air.usp_RegisterPayment @id,'d12a59c5-0a06-5e42-b1a6-003e48c97167',99.00,'CONFIRMED','CARD','2025-12-29T22:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '3fc2da71-f410-5100-bae9-20611f4c8d8c',32,'7C',90,90,1,'2025-12-29T18:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'abb242a0-eff0-501c-b494-d2cfc2a4cb06',110.00,'CONFIRMED','CARD','2025-12-29T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '65b264e7-72ac-579b-9ca5-1535b5b37c0b',32,'3F',83,83,2,'2025-12-29T17:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'fb30ba00-e04a-5e5c-976f-278d78b1ca92',110.00,'CONFIRMED','CARD','2025-12-29T19:00:00';
EXEC air.usp_RegisterPayment @id,'b49d2f92-1c72-54a5-b590-5af37a152993',110.00,'CONFIRMED','CARD','2025-12-29T20:00:00';
GO
DECLARE @id bigint;
EXEC air.usp_IssueTicket '09f0dd79-eaaa-59a3-8edc-026f96f298e8',32,'6D',149,92,1,'2025-12-29T16:00:00',NULL,@id OUTPUT;
EXEC air.usp_RegisterPayment @id,'ba7ecb17-a786-5f70-807c-8030047e969f',110.00,'CONFIRMED','CARD','2025-12-29T18:00:00';
EXEC air.usp_RegisterPayment @id,'535c24b2-a476-5690-b1af-8e800a9717f0',110.00,'CONFIRMED','CARD','2025-12-29T19:00:00';
EXEC air.usp_CancelTicket @id,'2025-12-29T20:00:00',N'Cancelación sintética voluntaria';
GO
EXEC air.usp_ChangeFlightStatus 1,'BOARDING','2026-01-05T12:15:00';
EXEC air.usp_ChangeFlightStatus 1,'DEPARTED','2026-01-05T13:00:00';
EXEC air.usp_ChangeFlightStatus 1,'ARRIVED','2026-01-05T14:20:00';
EXEC air.usp_ChangeFlightStatus 3,'BOARDING','2026-01-06T12:15:00';
EXEC air.usp_ChangeFlightStatus 4,'BOARDING','2026-01-06T17:15:00';
EXEC air.usp_ChangeFlightStatus 4,'DEPARTED','2026-01-06T18:00:00';
EXEC air.usp_ChangeFlightStatus 5,'CANCELLED','2026-01-06T14:00:00';
EXEC air.usp_ChangeFlightStatus 7,'BOARDING','2026-01-08T05:15:00';
EXEC air.usp_ChangeFlightStatus 7,'DEPARTED','2026-01-08T06:00:00';
EXEC air.usp_ChangeFlightStatus 7,'ARRIVED','2026-01-08T11:00:00';
EXEC air.usp_ChangeFlightStatus 9,'BOARDING','2026-01-12T12:15:00';
EXEC air.usp_ChangeFlightStatus 9,'DEPARTED','2026-01-12T13:00:00';
EXEC air.usp_ChangeFlightStatus 9,'ARRIVED','2026-01-12T14:20:00';
EXEC air.usp_ChangeFlightStatus 11,'BOARDING','2026-01-13T12:15:00';
EXEC air.usp_ChangeFlightStatus 12,'BOARDING','2026-01-13T17:15:00';
EXEC air.usp_ChangeFlightStatus 12,'DEPARTED','2026-01-13T18:00:00';
EXEC air.usp_ChangeFlightStatus 13,'CANCELLED','2026-01-13T14:00:00';
EXEC air.usp_ChangeFlightStatus 15,'BOARDING','2026-01-15T05:15:00';
EXEC air.usp_ChangeFlightStatus 15,'DEPARTED','2026-01-15T06:00:00';
EXEC air.usp_ChangeFlightStatus 15,'ARRIVED','2026-01-15T11:00:00';
EXEC air.usp_ChangeFlightStatus 17,'BOARDING','2026-01-19T12:15:00';
EXEC air.usp_ChangeFlightStatus 17,'DEPARTED','2026-01-19T13:00:00';
EXEC air.usp_ChangeFlightStatus 17,'ARRIVED','2026-01-19T14:20:00';
EXEC air.usp_ChangeFlightStatus 19,'BOARDING','2026-01-20T12:15:00';
EXEC air.usp_ChangeFlightStatus 20,'BOARDING','2026-01-20T17:15:00';
EXEC air.usp_ChangeFlightStatus 20,'DEPARTED','2026-01-20T18:00:00';
EXEC air.usp_ChangeFlightStatus 21,'CANCELLED','2026-01-20T14:00:00';
EXEC air.usp_ChangeFlightStatus 23,'BOARDING','2026-01-22T05:15:00';
EXEC air.usp_ChangeFlightStatus 23,'DEPARTED','2026-01-22T06:00:00';
EXEC air.usp_ChangeFlightStatus 23,'ARRIVED','2026-01-22T11:00:00';
EXEC air.usp_ChangeFlightStatus 25,'BOARDING','2026-01-26T12:15:00';
EXEC air.usp_ChangeFlightStatus 25,'DEPARTED','2026-01-26T13:00:00';
EXEC air.usp_ChangeFlightStatus 25,'ARRIVED','2026-01-26T14:20:00';
EXEC air.usp_ChangeFlightStatus 27,'BOARDING','2026-01-27T12:15:00';
EXEC air.usp_ChangeFlightStatus 28,'BOARDING','2026-01-27T17:15:00';
EXEC air.usp_ChangeFlightStatus 28,'DEPARTED','2026-01-27T18:00:00';
EXEC air.usp_ChangeFlightStatus 29,'CANCELLED','2026-01-27T14:00:00';
EXEC air.usp_ChangeFlightStatus 31,'BOARDING','2026-01-29T05:15:00';
EXEC air.usp_ChangeFlightStatus 31,'DEPARTED','2026-01-29T06:00:00';
EXEC air.usp_ChangeFlightStatus 31,'ARRIVED','2026-01-29T11:00:00';
GO
