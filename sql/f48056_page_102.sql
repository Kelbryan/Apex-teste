prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.2'
,p_default_workspace_id=>38961916781733473840
,p_default_application_id=>48056
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DANIEL'
);
end;
/
 
prompt APPLICATION 48056 - Basico
--
-- Application Export:
--   Application:     48056
--   Name:            Basico
--   Date and Time:   13:22 Domingo Outubro 3, 2021
--   Exported By:     DANIEL@MAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 102
--   Manifest End
--   Version:         21.1.2
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00102
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>102);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_api.create_page(
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(38135772577540198928)
,p_name=>'pg_usuario_editar'
,p_alias=>'USUARIO_EDITAR'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Editar Usu\00E1rio')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'jQuery("#P102_NOME").focus();'
,p_step_template=>wwv_flow_api.id(38135339941365198842)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(38137761775886382934)
,p_last_updated_by=>'DANIEL@MAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211003130007'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38233594833759007535)
,p_plug_name=>unistr('Editar Usu\00E1rio')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(38135351981225198851)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'USUARIO'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38233595425368007541)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38233594833759007535)
,p_button_name=>'Salvar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(38135748027198198903)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BELOW_BOX'
,p_button_css_classes=>'u-color-4'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38233595780630007544)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(38233594833759007535)
,p_button_name=>'Remover'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(38135748027198198903)
,p_button_image_alt=>'Remover'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.::P103_USUARIO_ID:&P102_USUARIO_ID.'
,p_button_css_classes=>'u-color-23'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38233595604537007543)
,p_branch_name=>'Go to page'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233595071397007537)
,p_name=>'P102_USUARIO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38233594833759007535)
,p_item_source_plug_id=>wwv_flow_api.id(38233594833759007535)
,p_source=>'USUARIO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233595116140007538)
,p_name=>'P102_NOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(38233594833759007535)
,p_item_source_plug_id=>wwv_flow_api.id(38233594833759007535)
,p_prompt=>'Nome'
,p_source=>'NOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(38135746853186198902)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233595270365007539)
,p_name=>'P102_SENHA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(38233594833759007535)
,p_item_source_plug_id=>wwv_flow_api.id(38233594833759007535)
,p_prompt=>'Senha'
,p_source=>'SENHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(38135746853186198902)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233595349404007540)
,p_name=>'P102_GRUPOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(38233594833759007535)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grupo(s)'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT grupo_id',
'  FROM usuario_grupo',
' WHERE usuario_id = :P102_USUARIO_ID;'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_GRUPOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT grupo_id AS return_value',
'       , nome AS display_value',
'    FROM grupo',
'ORDER BY nome;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_column=>8
,p_field_template=>wwv_flow_api.id(38135746853186198902)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>':'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38233595543216007542)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Salvar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  UPDATE usuario',
'     SET nome = :P102_NOME',
'       , senha = :P102_SENHA',
'   WHERE usuario_id = :P102_USUARIO_ID;',
'',
'  DELETE',
'    FROM usuario_grupo',
'   WHERE usuario_id = :P102_USUARIO_ID;',
'',
'  FOR grupo IN (SELECT * FROM TABLE (apex_string.split (:P102_GRUPOS, '':'')))',
'  LOOP',
'    INSERT INTO usuario_grupo (usuario_id, grupo_id)',
'    VALUES (:P102_USUARIO_ID, grupo.column_value);',
'  END LOOP;',
'  ',
'  COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38233594921956007536)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(38233594833759007535)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar o form pg_usuario_editar'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
