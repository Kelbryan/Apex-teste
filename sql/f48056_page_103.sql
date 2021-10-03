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
--     PAGE: 103
--   Manifest End
--   Version:         21.1.2
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00103
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>103);
end;
/
prompt --application/pages/page_00103
begin
wwv_flow_api.create_page(
 p_id=>103
,p_user_interface_id=>wwv_flow_api.id(38135772577540198928)
,p_name=>'pg_usuario_remover'
,p_alias=>'USUARIO_REMOVER'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Remover Usu\00E1rio')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'jQuery("#P103_NOME").focus();'
,p_step_template=>wwv_flow_api.id(38135339941365198842)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(38137761775886382934)
,p_last_updated_by=>'DANIEL@MAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211003130039'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38233595867996007545)
,p_plug_name=>unistr('Remover Usu\00E1rio')
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
 p_id=>wwv_flow_api.id(38248852667896715701)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38233595867996007545)
,p_button_name=>'Remover'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(38135748027198198903)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remover'
,p_button_position=>'BELOW_BOX'
,p_button_css_classes=>'u-color-38'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38248852739597715702)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(38233595867996007545)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(38135748027198198903)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::P102_USUARIO_ID:&P103_USUARIO_ID.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38248852909902715704)
,p_branch_name=>'Go to page'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233596045361007547)
,p_name=>'P103_USUARIO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38233595867996007545)
,p_item_source_plug_id=>wwv_flow_api.id(38233595867996007545)
,p_source=>'USUARIO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233596110159007548)
,p_name=>'P103_NOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(38233595867996007545)
,p_item_source_plug_id=>wwv_flow_api.id(38233595867996007545)
,p_prompt=>'Nome'
,p_source=>'NOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233596276810007549)
,p_name=>'P103_SENHA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(38233595867996007545)
,p_item_source_plug_id=>wwv_flow_api.id(38233595867996007545)
,p_prompt=>'Senha'
,p_source=>'SENHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233596384882007550)
,p_name=>'P103_GRUPOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(38233595867996007545)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Novo'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT grupo_id',
'  FROM usuario_grupo',
' WHERE usuario_id = :P103_USUARIO_ID;'))
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
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(38135745552562198901)
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
 p_id=>wwv_flow_api.id(38248852872460715703)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remover'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  DELETE',
'    FROM usuario_grupo',
'   WHERE usuario_id = :P103_USUARIO_ID;',
'  ',
'  DELETE',
'    FROM usuario',
'   WHERE usuario_id = :P103_USUARIO_ID;',
'  ',
'  COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('O usu\00E1rio n\00E3o foi removido!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('O usu\00E1rio foi removido.')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38233595910246007546)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(38233595867996007545)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar o form pg_usuario_remover'
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
