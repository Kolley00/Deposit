# Deposit

1.  შექმენით ცხრილი დეპოზიტების უწყისისთვის, დაარქვით Deposits და განსაზღვრეთ მასში შემდეგი სვეტები: DepositID, DepOwnerName, DateOfBirth, Address, DepositAmount, Interest, Commision (25 GEL), Total (DepositAmount + Interest - Commision)
2.  ამოშალეთ სვეტი Address და დაამატეთ სვეტები CityName, ZIP, StreetName, HouseNumber
3.  შეავსეთ ცხრილი ინფორმაციით 6-7 დეპოზიტორის შესახებ (სვეტები DepositID, DepOwnerName, DateOfBirth, CityName, ZIP, StreetName, HouseNumber, DepositAmount)
4.  შეავსეთ სვეტი Interest შემდეგი წესით:
  a. თუ DepositAmount > 5000, Interest უდრის DepositAmount-ს 11%-ს
  b. თუ DepositAmount < 5000 და DepositAmount > 2000, Interest უდრის DepositAmount-ის 8%-ს
  c. თუ DepositAmount < 2000 და DepositAmount > 500, Interest უდრის DepositAmount-ის 6%-ს
  d. თუ DepositAmount < 500, Interest უდრის DepositAmount-ის 3%-ს
5.  გამოიტანეთ ყველა ის დეპოზიტორი, რომლებიც პროცენტის სახით ღებულობენ 500 ლარზე მეტს ან 200 ლარზე ნაკლებს ან ცხოვრობენ ქალაქ ბათუმში
6.  წაშალეთ ყველა დეპოზიტორი, რომელთაც დეპოზიტზე შეტანილი აქვთ 300 ლარზე ნაკლები და რომელთა გვარი იწყება „A“-ზე
7.  გაანადგურეთ ცხრილი Deposits
