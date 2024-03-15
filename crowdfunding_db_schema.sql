
-- contacts table
drop table if exists contacts;
create table contacts (
    contact_id int primary key,
    first_name varchar (30) not null,
    last_name varchar (30) not null,
    email varchar (60) not null
);

-- category table
drop table if exists category;
create table category (
    category_id varchar (4) primary key,
    category varchar (30) not null
);

-- subcategory table
drop table if exists subcategory;
create table subcategory (
    subcategory_id varchar (8) primary key,
    subcategory varchar (30) not null
);

-- campaign table
drop table if exists campaign;
create table campaign (
    cf_id int primary key,
    contact_id int not null,
    company_name varchar (60) not null,
    description varchar (60) not null,
    goal float not null,
    pledged float not null,
    outcome varchar (15) not null,
    backers_count int not null,
    country varchar (2) not null,
    currency varchar (3) not null,
    launched_date date not null,
    end_date date not null,
    category_id varchar (4) not null,
    subcategory_id varchar (8) not null,
	foreign key (contact_id) references contacts(contact_id),
    foreign key (category_id) references category(category_id),
    foreign key (subcategory_id) references subcategory(subcategory_id)
);

select * from contacts;
select * from category;
select * from subcategory;
select * from campaign