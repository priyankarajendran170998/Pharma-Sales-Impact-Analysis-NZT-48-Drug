USE PharmaDB;

CREATE TABLE pharma_sales (
    accid VARCHAR(50),
    acctype VARCHAR(50),
    accsize INT,
    acctargets INT,
    district INT,
    month DATE,
    sales FLOAT,
    qty INT,
    strategy1 FLOAT,
    strategy2 FLOAT,
    strategy3 FLOAT,
    salesvisit1 FLOAT,
    salesvisit2 FLOAT,
    salesvisit3 FLOAT,
    salesvisit4 FLOAT,
    salesvisit5 FLOAT,
    compbrand INT
);