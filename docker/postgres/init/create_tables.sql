begin;

create table if not exists users (
  id serial primary key,
  name varchar(256) not null
);

create table if not exists weights (
  id serial primary key,
  value decimal not null,
  user_id bigint references users(id) not null,
  date timestamp with time zone not null,
  created_at timestamp with time zone not null,
  updated_at timestamp with time zone not null
);

commit;
