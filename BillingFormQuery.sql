SELECT All_Loads.load_Number, [Invoice Numbers].Invoicenumber, [Invoice Numbers].Bill_Date, All_Loads.Customer, 
All_Loads.Customer_Reference_Number, All_Loads.Pick_Appoint_Start, All_Loads.Pick_City, All_Loads.Pick_State, 
All_Loads.Deliver_City, All_Loads.Deliver_State, All_Loads.Delivery_Appoint_Start, [Pick_City] & ", " & [Pick_State] AS [Pick up], 
[Deliver_City] & ", " & [Deliver_State] AS Destination
FROM ([Invoice Items] RIGHT JOIN [Invoice Numbers] ON [Invoice Items].Invoicenumber = [Invoice Numbers].Invoicenumber) LEFT JOIN All_Loads ON [Invoice Numbers].LoadID = All_Loads.load_Number;