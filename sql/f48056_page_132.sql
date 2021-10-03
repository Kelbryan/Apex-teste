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
--     PAGE: 132
--   Manifest End
--   Version:         21.1.2
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00132
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>132);
end;
/
prompt --application/pages/page_00132
begin
wwv_flow_api.create_page(
 p_id=>132
,p_user_interface_id=>wwv_flow_api.id(38135772577540198928)
,p_name=>'pg_menu_editar'
,p_alias=>'MENU_EDITAR'
,p_page_mode=>'MODAL'
,p_step_title=>'Editar Item de Menu'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'jQuery("#P132_LABEL").focus();'
,p_step_template=>wwv_flow_api.id(38135339941365198842)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(38137761775886382934)
,p_last_updated_by=>'DANIEL@MAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211003130325'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76476173554874927854)
,p_plug_name=>'Editar Item de Menu'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(38135351981225198851)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'MENU'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38251285767344866333)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(76476173554874927854)
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
 p_id=>wwv_flow_api.id(38248853109387715706)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_button_name=>'Remover'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(38135748027198198903)
,p_button_image_alt=>'Remover'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.::P133_MENU_ID:&P132_MENU_ID.'
,p_button_css_classes=>'u-color-23'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38251294021918866354)
,p_branch_name=>'Go to page'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251286167918866337)
,p_name=>'P132_MENU_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_source=>'MENU_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251286563183866338)
,p_name=>'P132_PARENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_prompt=>'Pai'
,p_source=>'PARENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MENU_ITENS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT menu_id AS return_value',
'       , label AS display_value',
'    FROM menu',
'ORDER BY label;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Nenhum -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251286933170866339)
,p_name=>'P132_PAGINA_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_prompt=>unistr('P\00E1gina')
,p_source=>'PAGINA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PAGINAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT pagina_id AS return_value',
'       , pagina_id || '' - '' || nome AS display_value',
'    FROM pagina',
'ORDER BY pagina_id;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Nenhuma -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251287342446866339)
,p_name=>'P132_LABEL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_prompt=>'Legenda'
,p_source=>'LABEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(38135746853186198902)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251287750541866339)
,p_name=>'P132_ORDEM'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_prompt=>'Ordem'
,p_source=>'ORDEM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(38135746853186198902)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251288194316866339)
,p_name=>'P132_IMAGE_REF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_prompt=>'Imagem'
,p_source=>'IMAGE_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251288507632866340)
,p_name=>'P132_IMAGE_ATTRIB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_prompt=>'Atributos da Imagem'
,p_source=>'IMAGE_ATTRIB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251288923157866340)
,p_name=>'P132_IMAGE_ALT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_prompt=>'Texto Alternativo'
,p_source=>'IMAGE_ALT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251289375036866340)
,p_name=>'P132_PARAM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_prompt=>unistr('Nomes dos Par\00E2metros')
,p_source=>'PARAM_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38251289705593866340)
,p_name=>'P132_PARAM_VALUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_item_source_plug_id=>wwv_flow_api.id(76476173554874927854)
,p_prompt=>unistr('Valores dos Par\00E2metros')
,p_source=>'PARAM_VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(38135745552562198901)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38251293522742866344)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(76476173554874927854)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Salvar'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>unistr('O item de menu n\00E3o foi atualizado!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'O item de menu foi atualizado.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38251293129790866344)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(76476173554874927854)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializar o form pg_menu_novo'
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
