
-- CREATE SEQUENCE paystubs_id_seq;
-- -- create table paystubs (
-- --    id bigint not null DEFAULT NEXTVAL('paystubs_id_seq'),
-- --    gross_wage varchar(255) not NULL,
-- --    net_pay varchar(255) not NULL,
-- --    user_id bigint DEFAULT NULL;
-- --    primary key (id)
-- --    CONSTRAINT fk_paystub_user
-- --     FOREIGN KEY (user_id)
-- --     REFERENCES users (id)
-- --     ON DELETE NO ACTION
-- --     ON UPDATE NO ACTION
-- -- );
-- -- ALTER SEQUENCE paystubs_id_seq OWNED BY paystubs.id;

-- alter table paystubs
--   drop constraint user_id;
--   add FOREIGN KEY (user_id)
--     REFERENCES users (id)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION