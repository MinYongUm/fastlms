create table banner
(
	id           bigint auto_increment
		primary key,
	alt_text     varchar(255) null,
	link_url     varchar(255) null,
	pub_yn       bit          not null,
	sort_value   int          not null,
	target       varchar(255) null,
	filename     varchar(255) null,
	url_filename varchar(255) null,
	reg_dt       datetime(6)  null
);

create table category
(
	id            bigint auto_increment
		primary key,
	category_name varchar(255) null,
	sort_value    int          not null,
	using_yn      bit          not null
);

create table course
(
	id           bigint auto_increment
		primary key,
	contents     longtext      null,
	image_path   varchar(255)  null,
	keyword      varchar(255)  null,
	price        bigint        not null,
	sale_end_dt  datetime(6)   null,
	sale_price   bigint        not null,
	subject      varchar(255)  null,
	summary      varchar(1000) null,
	reg_dt       datetime(6)   null,
	udt_dt       datetime(6)   null,
	category_id  bigint        not null,
	filename     varchar(255)  null,
	url_filename varchar(255)  null
);

create table mailtemplate
(
	id               bigint auto_increment
		primary key,
	contents         varchar(255) null,
	mailtemplate_key varchar(255) null,
	reg_dt           datetime(6)  null,
	title            varchar(255) null,
	udt_dt           datetime(6)  null
);

create table member
(
	user_id                 varchar(255) not null
		primary key,
	email_auth_dt           datetime(6)  null,
	email_auth_key          varchar(255) null,
	email_auth_yn           bit          not null,
	password                varchar(255) null,
	phone                   varchar(255) null,
	reg_dt                  datetime(6)  null,
	user_name               varchar(255) null,
	reset_password_key      varchar(255) null,
	reset_password_limit_dt datetime(6)  null,
	admin_yn                bit          not null,
	user_status             varchar(255) null,
	udt_dt                  datetime(6)  null,
	addr                    varchar(255) null,
	addr_detail             varchar(255) null,
	zipcode                 varchar(255) null,
	last_login_dt           datetime(6)  null
)
	charset = utf8;

create table member_login_history
(
	id         bigint auto_increment
		primary key,
	ip_addr    varchar(255) null,
	reg_dt     datetime(6)  null,
	user_agent varchar(255) null,
	user_id    varchar(255) null
);

create table take_course
(
	id        bigint auto_increment
		primary key,
	course_id bigint       not null,
	pay_price bigint       not null,
	reg_dt    datetime(6)  null,
	status    varchar(255) null,
	user_id   varchar(255) null
);

