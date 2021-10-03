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
--   Date and Time:   13:23 Domingo Outubro 3, 2021
--   Exported By:     DANIEL@MAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 122
--   Manifest End
--   Version:         21.1.2
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00122
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>122);
end;
/
prompt --application/pages/page_00122
begin
wwv_flow_api.create_page(
 p_id=>122
,p_user_interface_id=>wwv_flow_api.id(38135772577540198928)
,p_name=>'pg_pagina_editar'
,p_alias=>'PAGINA_EDITAR'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Editar P\00E1gina')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'jQuery("#P122_NOME").focus();'
,p_step_template=>wwv_flow_api.id(38135339941365198842)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(38137761775886382934)
,p_last_updated_by=>'DANIEL@MAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211003130225'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38233591467566007501)
,p_plug_name=>unistr('Editar P\00E1gina')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(38135351981225198851)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PAGINA'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38233591840838007505)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38233591467566007501)
,p_button_name=>'Salvar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(38135748027198198903)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BELOW_BOX'
,p_button_css_classes=>'u-color-4'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38233592580902007512)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(38233591467566007501)
,p_button_name=>'Remover'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(38135748027198198903)
,p_button_image_alt=>'Remover'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::P123_PAGINA_ID:&P122_PAGINA_ID.'
,p_button_css_classes=>'u-color-23'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38233592060649007507)
,p_branch_name=>'Go to page'
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233591648814007503)
,p_name=>'P122_PAGINA_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38233591467566007501)
,p_item_source_plug_id=>wwv_flow_api.id(38233591467566007501)
,p_prompt=>unistr('N\00FAmero')
,p_source=>'PAGINA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38233591738574007504)
,p_name=>'P122_NOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(38233591467566007501)
,p_item_source_plug_id=>wwv_flow_api.id(38233591467566007501)
,p_prompt=>'Nome'
,p_source=>'NOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(38135746853186198902)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38233591961559007506)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(38233591467566007501)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Salvar'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>unistr('A p\00E1gina n\00E3o foi atualizada!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('A p\00E1gina foi atualizada.')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38233591594349007502)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(38233591467566007501)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar o form pg_pagina_editar'
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
