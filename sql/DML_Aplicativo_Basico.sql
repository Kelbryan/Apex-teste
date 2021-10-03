REM INSERTING into pagina
INSERT INTO pagina (pagina_id, nome) VALUES ('1', 'Início');
INSERT INTO pagina (pagina_id, nome) VALUES ('10', 'Usuários');
INSERT INTO pagina (pagina_id, nome) VALUES ('11', 'Grupos');
INSERT INTO pagina (pagina_id, nome) VALUES ('12', 'Páginas');
INSERT INTO pagina (pagina_id, nome) VALUES ('13', 'Menu');
INSERT INTO pagina (pagina_id, nome) VALUES ('101', 'Novo Usuário');
INSERT INTO pagina (pagina_id, nome) VALUES ('102', 'Editar Usuário');
INSERT INTO pagina (pagina_id, nome) VALUES ('103', 'Remover Usuário');
INSERT INTO pagina (pagina_id, nome) VALUES ('111', 'Novo Grupo');
INSERT INTO pagina (pagina_id, nome) VALUES ('112', 'Editar Grupo');
INSERT INTO pagina (pagina_id, nome) VALUES ('113', 'Remover Grupo');
INSERT INTO pagina (pagina_id, nome) VALUES ('121', 'Nova Página');
INSERT INTO pagina (pagina_id, nome) VALUES ('122', 'Editar Página');
INSERT INTO pagina (pagina_id, nome) VALUES ('123', 'Remover Página');
INSERT INTO pagina (pagina_id, nome) VALUES ('131', 'Novo Menu');
INSERT INTO pagina (pagina_id, nome) VALUES ('132', 'Editar Menu');
INSERT INTO pagina (pagina_id, nome) VALUES ('133', 'Remover Menu');
REM INSERTING into grupo
INSERT INTO grupo (grupo_id, nome) VALUES ('1', 'Administradores');
INSERT INTO grupo (grupo_id, nome) VALUES ('2', 'Usuários');
REM INSERTING into grupo_pagina
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '1');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '10');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '11');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '12');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '13');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '101');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '102');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '103');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '111');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '112');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '113');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '121');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '122');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '123');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '131');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '132');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('1', '133');
INSERT INTO grupo_pagina (grupo_id, pagina_id) VALUES ('2', '1');
REM INSERTING into menu
INSERT INTO menu (menu_id, parent_id, pagina_id, label, ordem, image_ref, image_attrib, image_alt, param_name, param_value) VALUES ('1', '0', null, 'Cadastros', '1', 'fa-server-edit', null, null, null, null);
INSERT INTO menu (menu_id, parent_id, pagina_id, label, ordem, image_ref, image_attrib, image_alt, param_name, param_value) VALUES ('2', '1', '10', 'Usuários', '3', 'fa-users', null, null, null, null);
INSERT INTO menu (menu_id, parent_id, pagina_id, label, ordem, image_ref, image_attrib, image_alt, param_name, param_value) VALUES ('3', '1', '11', 'Grupos', '2', 'fa-users-alt', null, null, null, null);
INSERT INTO menu (menu_id, parent_id, pagina_id, label, ordem, image_ref, image_attrib, image_alt, param_name, param_value) VALUES ('4', '1', '12', 'Páginas', '1', 'fa-window', null, null, null, null);
INSERT INTO menu (menu_id, parent_id, pagina_id, label, ordem, image_ref, image_attrib, image_alt, param_name, param_value) VALUES ('5', '1', '13', 'Menu', '4', 'fa-bars', null, null, null, null);
REM INSERTING into usuario
INSERT INTO usuario (usuario_id, nome, senha) VALUES ('1', 'Daniel', '123456');
INSERT INTO usuario (usuario_id, nome, senha) VALUES ('2', 'Ana', '123456');
REM INSERTING into usuario_grupo
INSERT INTO usuario_grupo (usuario_id, grupo_id) VALUES ('1', '1');
INSERT INTO usuario_grupo (usuario_id, grupo_id) VALUES ('1', '2');
INSERT INTO usuario_grupo (usuario_id, grupo_id) VALUES ('2', '2');
