INSERT INTO tb_participants (name, email) VALUES ('José Silva', 'jose@gmail.com');
INSERT INTO tb_participants (name, email) VALUES ('Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participants (name, email) VALUES ('Maria', 'maria@gmail.com');
INSERT INTO tb_participants (name, email) VALUES ('Teresa', 'teresa@gmail.com');

INSERT INTO tb_categories (description) VALUES ('Curso');
INSERT INTO tb_categories (description) VALUES ('Oficina');

INSERT INTO tb_activities (name, description, price, category_id) VALUES ('Curso HTML', 'Aprenda HTML de forma prática', 80.0, 1);
INSERT INTO tb_activities (name, description, price, category_id) VALUES ('Oficina GitHub', 'Controle versões de seus projetos', 50.0, 2);

INSERT INTO tb_blocks (start_moment, end_moment, activity_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T08:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-25T11:00:00Z', 1);
INSERT INTO tb_blocks (start_moment, end_moment, activity_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T14:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-25T18:00:00Z', 2);
INSERT INTO tb_blocks (start_moment, end_moment, activity_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-26T08:00:00Z', TIMESTAMP WITH TIME ZONE '2017-09-26T11:00:00Z', 2);

INSERT INTO tb_participant_activity (participant_id, activity_id) VALUES (1, 1);
INSERT INTO tb_participant_activity (participant_id, activity_id) VALUES (1, 2);
INSERT INTO tb_participant_activity (participant_id, activity_id) VALUES (2, 1);
INSERT INTO tb_participant_activity (participant_id, activity_id) VALUES (3, 1);
INSERT INTO tb_participant_activity (participant_id, activity_id) VALUES (3, 2);
INSERT INTO tb_participant_activity (participant_id, activity_id) VALUES (4, 1);