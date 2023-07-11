--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: digmaturityapp_block; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.digmaturityapp_block (id, name, weight) VALUES (1, 'Статус преподавателя', 0.083);
INSERT INTO public.digmaturityapp_block (id, name, weight) VALUES (2, 'Профессиональные обязанности', 0.251);
INSERT INTO public.digmaturityapp_block (id, name, weight) VALUES (3, 'Цифровые ресурсы', 0.158);
INSERT INTO public.digmaturityapp_block (id, name, weight) VALUES (4, 'Преподавание и обучение', 0.176);
INSERT INTO public.digmaturityapp_block (id, name, weight) VALUES (5, 'Оценка студентов', 0.158);
INSERT INTO public.digmaturityapp_block (id, name, weight) VALUES (6, 'Рост прав/потенциала студентов', 0.08);
INSERT INTO public.digmaturityapp_block (id, name, weight) VALUES (7, 'Рост IT- грамотности студентов', 0.093);


--
-- Data for Name: digmaturityapp_question; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (1, 'Какую должность на кафедре Вы занимаете?', 0.02, 1, 'Должность');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (2, 'Каков Ваш возраст?', 0.02, 1, 'Возраст');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (3, 'Каков Ваш стаж работы в университете?', 0.015, 1, 'Стаж');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (4, 'Как давно вы пользуетесь цифровыми технологиями в преподавании?', 0.016, 1, 'Опыт в IT');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (5, 'Сколько времени отводилось цифровым технологиям на ваших занятиях в последние 3 месяца?', 0.012, 1, 'Доля преподавания в IT');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (6, 'Я регулярно использую различные цифровые каналы для общения с обучающимися и коллегами (например, электронную почту, блоги, веб-сайт образовательной организации, приложения)', 0.066, 2, 'Контакты с НПР и студентами');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (7, 'Я использую цифровые технологии для совместной работы с коллегами внутри и за пределами моего учебного заведения', 0.075, 2, 'Коворкинг со студентами и НПР');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (8, 'Я активно развиваю свои навыки применения цифровых технологий в обучении', 0.075, 2, 'Развитие цифровых навыков');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (9, 'Я обучаюсь в Интернете и принимаю участие в вебинарах, конференциях, онлайн-курсах', 0.035, 2, 'Цифровое самообучение');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (10, 'Я использую Интернет, чтобы найти подходящие информационные ресурсы,
которые можно использовать в учебной работе', 0.07, 3, 'Поиск информационных ресурсов');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (11, 'С помощью компьютера я создаю свои собственные учебные материалы, в том числе адаптирую уже имеющиеся материалы под свои задачи', 0.062, 3, 'Создание своих материалов');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (12, 'Я надёжно защищаю личную информацию, например: экзаменационные работы, оценки обучающихся, их персональные данные', 0.026, 3, 'Защита личной информации');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (13, 'Я всегда тщательно обдумываю, когда и зачем буду использовать цифровые технологии на занятии, чтобы они принесли максимальную пользу обучающимся', 0.055, 4, 'Целеполагание внедрения IT в учебе');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (14, 'Я контролирую работу и общение между обучающимися в совместных интерактивных онлайн-средах, которые мы используем на занятиях и для выполнения домашних заданий', 0.05, 4, 'Интерактивный мониторинг учебы');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (15, 'Когда мои обучающиеся выполняют задания в группах, они используют цифровые технологии, чтобы получить знания', 0.046, 4, 'Организация учебы в группах');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (16, 'Я использую цифровые технологии, чтобы обучающиеся имели возможность планировать, документировать и проводить мониторинг своей учебной деятельности самостоятельно (например: тесты для самооценки и самоконтроля, электронные портфолио для документации и представления результатов, онлайн дневники, блоги и пр.)', 0.024, 4, 'Создание среды самообучения студентов');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (17, 'Я использую цифровые инструменты для оценки и отслеживания прогресса обучающихся', 0.079, 5, 'Отслеживание прогресса студентов');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (18, 'Я анализирую все доступные мне данные для того, чтобы выявить, кто из обучающихся нуждается в дополнительной поддержке', 0.05, 5, 'Контроль студентов для поддержки');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (19, 'Я использую цифровые технологии для предоставления обучающимся обратной связи', 0.029, 5, 'Защита личной информации');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (20, 'Когда я создаю цифровые задания для обучающихся, я стараюсь оценить возможные практические или технические сложности их выполнения (например, не всем из моих студентов могут быть доступны цифровые устройства и программы, у них могут быть разные навыки работы с цифровыми устройствами, могут возникать проблемы с совместимостью ПО и т.д.)', 0.038, 6, 'Создание цифровых заданий');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (21, 'Я использую цифровые технологии, чтобы обеспечить обучающимся индивидуальные возможности обучения (например, используя цифровые технологии, я готовлю для каждого конкретного обучающегося задания, соответствующие его индивидуальным потребностям обучения, предпочтениям и интересам)', 0.018, 6, 'Персонализация обучения студентов');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (22, 'Я использую цифровые технологии с целью повышения активности обучающихся во время учебных занятий', 0.024, 6, 'Способствование учебной активности');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (23, 'Я обучаю студентов, как оценивать достоверность информации и выявлять
ложную или предвзятую информацию', 0.016, 7, 'Оценка достоверности информации');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (24, 'Я даю задания, которые требуют от обучающихся использования цифровых технологий для совместной работы и общения как между собой, так и с внешней аудиторией', 0.019, 7, 'Ввод IT в коворкинг студентов');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (25, 'Я даю задания, которые требуют от обучающихся создавать цифровой контент (например: видео, аудио, фотографии, цифровые презентации, блоги, вики)', 0.022, 7, 'Креативизация цифрового контента');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (26, 'Я обучаю, как пользоваться цифровыми технологиями безопасно и ответственно', 0.017, 7, 'Обучение безопасному применению IT');
INSERT INTO public.digmaturityapp_question (id, text, weight, block_id_id, subfactor_name) VALUES (27, 'Я побуждаю обучающихся творчески применять цифровые технологии для решения конкретных учебных задач (например, для преодоления препятствий или проблем, возникающих в процессе обучения)', 0.019, 7, 'Ориентация на IT-подход в решении задач');


--
-- Data for Name: digmaturityapp_answer; Type: TABLE DATA; Schema: public; Owner: django
--

INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (6, 'Профессор', 5, 1);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (4, 'Старший преподаватель', 3, 1);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (7, 'Менее 25', 1, 2);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (8, '25 - 29', 2, 2);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (9, '30 - 39', 3, 2);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (10, '40 - 49', 4, 2);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (11, '50 и старше', 5, 2);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (12, 'Менее 5 лет', 1, 3);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (13, 'От 5 до 10 лет', 2, 3);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (14, 'От 11 до 20', 3, 3);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (15, 'От 21 до 40', 4, 3);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (16, 'Более 41 года', 5, 3);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (17, 'Я не пользуюсь цифровыми технологиями в преподавании', 1, 4);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (18, 'Менее года', 2, 4);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (19, 'от 1 до 3 лет', 3, 4);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (20, 'От 4 до 9 лет', 4, 4);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (21, 'Более 9 лет', 5, 4);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (22, '0 - 10%', 1, 5);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (23, '11 - 25%', 2, 5);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (24, '26 - 50%', 3, 5);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (25, '51 - 75%', 4, 5);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (26, '76 - 100%', 5, 5);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (27, 'Я не использую или редко использую цифровые каналы для общения', 1, 6);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (28, 'Я использую самые простые цифровые каналы для общения, например, e-mail', 2, 6);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (29, 'Я сочетаю различные цифровые каналы для общения, например, e-mail или веб-сайт образовательной организации', 3, 6);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (30, 'Я регулярно отбираю, настраиваю и комбинирую разного рода цифровые решения для эффективного общения', 4, 6);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (31, 'Я обдумываю, обсуждаю и активно разрабатываю свои собственные средства коммуникации (блог, форум, собственный сайт)', 5, 6);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (32, 'Я редко взаимодействую с другими преподавателями с помощью цифровых технологий', 1, 7);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (33, 'Иногда я обмениваюсь материалами с коллегами, например, по электронной почте', 2, 7);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (34, 'Мы с коллегами работаем в общей компьютерной сети или используем общие диски/сервера/облачные технологии', 3, 7);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (35, 'Я обмениваюсь материалами, опытом и идеями с коллегами в том числе, из других организаций, например, в профессиональных онлайн-сообществах', 4, 7);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (36, 'Я разрабатываю материалы вместе с коллегами на онлайн-платформах', 5, 7);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (37, 'У меня редко находится время для совершенствования своих навыков применения цифровых технологий в обучении', 1, 8);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (38, 'Я совершенствую свои навыки, обдумывая их и экспериментируя', 2, 8);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (39, 'Я использую целый ряд ресурсов для развития своих навыков применения цифровых технологий в обучении', 3, 8);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (40, 'Я обсуждаю с коллегами, как можно использовать цифровые технологии для улучшения образовательного процесса', 4, 8);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (41, 'Я помогаю коллегам разрабатывать методы и стратегии обучения с использованием цифровых технологий', 5, 8);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (42, 'Это новая для меня сфера деятельности, о которой я ещё не задумывался/лась', 1, 9);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (43, 'У меня нет такого опыта, но я заинтересован/а в таком обучении', 2, 9);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (44, 'Я принимал/а участие в онлайн-обучении один или два раза', 3, 9);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (45, 'Я опробовал/а различные варианты и площадки онлайн-обучения', 4, 9);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (46, 'Я часто участвую в разных видах онлайн-обучения', 5, 9);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (47, 'Я редко пользуюсь Интернетом, чтобы найти подобные ресурсы, материалы', 1, 10);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (48, 'Я использую поисковые системы и образовательные порталы для поиска соответствующих ресурсов', 2, 10);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (49, 'Я оцениваю и отбираю ресурсы с точки зрения их соответствия моей группе студентов', 3, 10);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (50, 'Я сравниваю ресурсы, используя ряд критериев (например: их надёжность, качество, соответствие, дизайн, интерактивность)', 4, 10);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (51, 'Я рекомендую коллегам подходящие ресурсы и стратегии их поиска', 5, 10);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (52, 'Я не создаю свои собственные учебные материалы', 1, 11);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (53, 'Я создаю на компьютере конспекты лекций, списки для чтения, но распечатываю их для дальнейшего использования', 2, 11);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (3, 'Ассистент', 2, 1);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (1, 'Вспомогательный персонал (например, лаборант, секретарь, инженер)', 1, 1);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (5, 'Доцент', 4, 1);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (54, 'Я создаю на компьютере презентации но, как правило, ничего больше', 3, 11);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (55, 'Я создаю разного рода цифровые учебные материалы', 4, 11);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (56, 'Я настраиваю и использую сложные интерактивные ресурсы', 5, 11);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (57, 'Мне не нужно заниматься этим, потому что моя образовательная организация заботится об этом', 1, 12);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (58, 'Я стараюсь избегать хранения личной информации в электронном виде', 2, 12);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (59, 'Я защищаю паролем некоторые файлы с личной информацией', 3, 12);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (60, 'Я защищаю все файлы с личной информацией с помощью пароля', 4, 12);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (61, 'Я обеспечиваю личную информацию полномасштабной защитой, например, сочетаю сложные пароли и шифрование, а также часто обновляю программное обеспечение', 5, 12);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (62, 'Я не использую или редко использую технологии на занятиях', 1, 13);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (63, 'Я использую в основном стандартное оборудование, такое как цифровые доски и проекторы', 2, 13);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (64, 'Я использую разнообразные цифровые ресурсы и устройства в учебном процессе', 3, 13);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (65, 'Я использую цифровые технологии и тем самым постоянно совершенствую учебный процесс', 4, 13);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (66, 'Я использую цифровые инструменты для внедрения инновационных педагогических стратегий, новых подходов к обучению', 5, 13);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (67, 'Я не использую цифровые среды в работе с учащимися', 1, 14);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (68, 'Я не контролирую деятельность моих учащихся в используемых нами онлайн-средах', 2, 14);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (69, 'Иногда я контролирую наши общие онлайн-среды, наблюдаю за обсуждениями учащихся', 3, 14);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (70, 'Я регулярно отслеживаю и анализирую учебную деятельность моих учащихся в Интернете', 4, 14);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (71, 'Я регулярно участвую в онлайн-дискуссиях и даю мотивирующие и корректирующие комментарии', 5, 14);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (72, 'Мои учащиеся не работают в группах', 1, 15);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (73, 'В работе моих учащихся над совместными проектами (задачами) применение цифровых технологий невозможно', 2, 15);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (74, 'Я призываю учащихся, работающих в группе, искать информацию в Интернете и представлять результаты в цифровом формате', 3, 15);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (75, 'Я требую, чтобы учащиеся, работающие в группах, находили информацию в Интернете и представляли результаты работы в цифровом формате', 4, 15);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (76, 'Мои учащиеся обмениваются информацией и идеями в онлайн-пространстве и совместно создают проекты в электронном виде', 5, 15);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (77, 'Это невозможно в моей профессиональной деятельности', 1, 16);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (78, 'Мои учащиеся анализируют свой учебный процесс и достижения, но без применения цифровых технологий', 2, 16);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (79, 'Время от времени я предлагаю учащимся такие задания в цифровом формате, как электронные тесты для самооценки', 3, 16);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (80, 'Я использую ряд цифровых инструментов, позволяющих учащимся планировать, документировать и анализировать процесс обучения', 4, 16);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (81, 'Я регулярно использую цифровые инструменты, позволяющие учащимся планировать, отслеживать и анализировать свои успехи в учёбе', 5, 16);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (82, 'Я не отслеживаю прогресс студентов', 1, 17);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (83, 'Я регулярно отслеживаю прогресс учащихся, но не использую для этого электронные средства', 2, 17);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (84, 'Иногда я использую цифровые инструменты, например, электронные тесты, для проверки знаний учащихся', 3, 17);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (85, 'Я использую ряд цифровых инструментов для отслеживания прогресса учащихся', 4, 17);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (86, 'Я регулярно использую разнообразные цифровые инструменты для отслеживания прогресса учащихся', 5, 17);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (87, 'Я регулярно использую разнообразные цифровые инструменты для отслеживания прогресса учащихся', 1, 18);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (88, 'Я лишь анализирую академически релевантные данные, такие как число и качество выполненных работ и оценки', 2, 18);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (89, 'Я анализирую данные об учебной активности, а также о поведении для выявления учащихся, нуждающихся в дополнительной поддержке, помощи', 3, 18);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (90, 'Я регулярно анализирую все доступные данные, чтобы выявить учащихся, нуждающихся в дополнительной поддержке', 4, 18);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (91, 'Я систематически анализирую данные и своевременно реагирую и оказываю дополнительную поддержку конкретным учащимся', 5, 18);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (92, 'В моей профессиональной деятельности не требуется предоставлять учащимся обратную связь', 1, 19);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (93, 'Я предоставляю учащимся обратную связь, но не в цифровом формате (например, устно)', 2, 19);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (94, 'Иногда я использую цифровые технологии для обратной связи с учащимися например, оценки в онлайн-тестах, комментарии и «лайки» в онлайн-средах', 3, 19);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (95, 'Я использую ряд цифровых технологий для обратной связи', 4, 19);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (96, 'Я регулярно использую цифровые технологии для обратной связи', 5, 19);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (97, 'Я не создаю заданий в цифровом формате', 1, 20);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (98, 'У моих учащихся нет проблем с использованием цифровых технологий', 2, 20);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (99, 'Я адаптирую задачи таким образом, чтобы свести вероятность возникновения сложностей к минимуму', 3, 20);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (100, 'Я обсуждаю возможные проблемы с учащимися и пытаюсь найти их решение', 4, 20);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (101, 'Я делаю всё возможное, например, я адаптирую задание, обсуждаю решение и предлагаю альтернативные способы выполнения задания', 5, 20);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (102, 'В моей профессиональной деятельности все учащиеся обязаны выполнять одинаковые задания, независимо от их уровня.', 1, 21);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (103, 'Я даю учащимся рекомендации, указываю, к каким дополнительным ресурсам им следует обратиться', 2, 21);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (104, 'Я предлагаю дополнительные задания и материалы в цифровой форме тем, кто сильно продвинулся или, наоборот, отстаёт', 3, 21);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (105, 'Когда это возможно, я использую цифровые технологии, чтобы предложить различные возможности обучения', 4, 21);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (106, 'Я регулярно корректирую и совершенствую свой подход к обучению и учебные материалы, чтобы они максимально соответствовали индивидуальным потребностям, предпочтениям и интересам учащихся', 5, 21);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (107, 'В моей работе невозможно вовлечь учащихся в активную деятельность на уроке', 1, 22);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (108, 'Я вовлекаю учащихся в активную работу на уроке, но не использую для этого цифровые технологии', 2, 22);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (109, 'В своей преподавательской деятельности я использую такие мотивирующие к активной работе на уроке стимулы, как видео и анимацию', 3, 22);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (110, 'На моих уроках учащиеся занимаются с использованием цифровых средств, таких как электронные рабочие листы, игры и тесты', 4, 22);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (111, 'Мои учащиеся регулярно используют цифровые технологии в своих учебных, исследовательских и творческих проектах, при их создании и обсуждении', 5, 22);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (112, 'Это невозможно / не применимо в моей профессиональной деятельности', 1, 23);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (113, 'Я время от времени напоминаю им, что не вся информация в Интернете надёжна', 2, 23);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (114, 'Я учу их различать надёжные и ненадёжные источники информации в Интернете', 3, 23);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (115, 'Я обсуждаю с учащимися, как проверить и оценить достоверность информации', 4, 23);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (116, 'Мы детально обсуждаем, как создаётся информация, как и кем она может быть искажена, с какой целью', 5, 23);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (117, 'Это невозможно на моём предмете/в моей профессиональной деятельности', 1, 24);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (118, 'Лишь изредка я требую, чтобы учащиеся общались или выполняли совместные проекты онлайн', 2, 24);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (119, 'Мои учащиеся используют цифровую коммуникацию и сотрудничество главным образом между собой (а не с людьми за пределами школы)', 3, 24);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (120, 'Мои учащиеся общаются и вместе работают посредством цифровых технологий друг с другом и с внешней аудиторией', 4, 24);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (121, 'Я регулярно задаю задания, способствующие развитию навыков общения онлайн', 5, 24);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (122, 'Это невозможно в моей профессиональной деятельности', 1, 25);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (123, 'Это сложно реализовать на занятиях с моими учащимися', 2, 25);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (124, 'Иногда я даю такие задания в качестве разнообразия или мотивации', 3, 25);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (125, 'Создание цифрового контента – неотъемлемая часть учебной деятельности моих учащихся', 4, 25);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (126, 'Это неотъемлемая часть учебной деятельности, и я систематически повышаю уровень сложности заданий, чтобы учащиеся развивали свои навыки', 5, 25);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (127, 'Это невозможно в моей профессиональной деятельности', 1, 26);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (128, 'Я говорю своим учащимся, что им следует проявлять осторожность, публикуя и передавая личную информацию в Интернете', 2, 26);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (129, 'Я объясняю основные правила безопасного поведения в онлайн-средах', 3, 26);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (130, 'Мы обсуждаем правила ответственного поведения в Интернете и договариваемся придерживаться их', 4, 26);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (131, 'Я регулярно вырабатываю у моих учащихся использование общепринятых правил ответственного поведения в разных цифровых средах, которые мы используем', 5, 26);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (132, 'Это невозможно в моей профессиональной деятельности', 1, 27);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (133, 'У меня редко появляется возможность развивать у учащихся навыки решения проблем с помощью цифровых технологий', 2, 27);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (134, 'Иногда, когда появляется такая возможность', 3, 27);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (135, 'Мы часто экспериментируем, как решать учебные задачи и проблемы с использованием цифровых технологий', 4, 27);
INSERT INTO public.digmaturityapp_answer (id, text, value, question_id_id) VALUES (136, 'Я регулярно предлагаю учащимся возможность творческого решения проблем с помощью цифровых технологий', 5, 27);


--
-- PostgreSQL database dump complete
--

