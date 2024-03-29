drop table if exists cart cascade
drop table if exists cart_item cascade
create table cart (id bigint generated by default as identity, primary key (id))
create table cart_item (quantity integer, cart_id bigint not null, id bigint generated by default as identity, option_id bigint, product_id bigint, primary key (id))
alter table if exists cart_item add constraint cart_cart_item foreign key (cart_id) references cart
