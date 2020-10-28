

create view customer as 
Select * 
FROM card_holder
INNER JOIN credit_card
ON card_holder.id = credit_card. id_card_holder;

select * from customer;

Create TABLE customer (
id  INT NOT NULL PRIMARY KEY
, name VARCHAR (20)
, FOREIGN KEY (id_card_holder) REFERENCES card_holder(id_card_holder)
, card (VARCHAR(20)
, FOREIGN KEY ()
	)
	
	-- What are the 100 highest transactions during this time period
Select * 
FROM card_holder
INNER JOIN credit_card
ON card_holder.id = credit_card. id_card_holder
INNER JOIN transaction
ON credit_card.card = transaction.card
	;

	-- top 100 transactions from 7am to 9am
create view top100 as 
Select * from transaction
where DATE_PART('hour',transaction.date)>=7
and DATE_PART('hour',transaction.date)>=9
order by amount desc
limit 100;

Select count (amount) from transaction
where amount <2
;

--the merchants fraudsters with payments less $2
create view fradsters as
Select * from transaction 
where amount <2
order by card, amount desc
limit 5;


Select count (amount), id_merchant from transaction 
where amount <2
Group by id_merchant
order by count (amount) desc
limit 5;
	
Alter table transaction
alter date type TIMESTAMP
USING date::timestamp without time zone	;
	
	
Select * 
FROM card_holder
INNER JOIN credit_card
ON card_holder.id = credit_card. id_card_holder
INNER JOIN transaction
ON credit_card.card = transaction.card
where id_card_holder in (18,2)

	
	
	
	
	