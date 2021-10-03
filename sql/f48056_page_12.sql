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
--   Date and Time:   13:21 Domingo Outubro 3, 2021
--   Exported By:     DANIEL@MAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 12
--   Manifest End
--   Version:         21.1.2
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00012
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>12);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(38135772577540198928)
,p_name=>'pg_paginas'
,p_alias=>'PAGINAS'
,p_step_title=>unistr('P\00E1ginas')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ListaInterativa td[headers=ColunaEditar]{ width:64px; }',
'',
'body .ui-dialog .ui-dialog-titlebar {',
'  background-color: #006BD8;',
'  fill: #006BD8;',
'}',
'body .ui-dialog .ui-dialog-title {',
'  color: #fff;',
'}',
'',
'body .ui-dialog .ui-dialog-titlebar-close {',
'  border-color: #006BD8;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(38137761775886382934)
,p_last_updated_by=>'DANIEL@MAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20211003131757'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38139071256628503711)
,p_plug_name=>unistr('Listagem das P\00E1ginas')
,p_region_name=>'ListaInterativa'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(38135381006473198864)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ''Editar'' AS edit_link',
'       , l.pagina_id',
'       , l.nome',
'       , LISTAGG (l.grupo, '', '') WITHIN GROUP (ORDER BY l.grupo) AS grupos',
'    FROM (SELECT p.pagina_id',
'               , p.nome',
'               , g.nome AS grupo',
'            FROM pagina p',
'               , grupo g',
'               , grupo_pagina j',
'           WHERE p.pagina_id = j.pagina_id',
'             AND g.grupo_id = j.grupo_id) l',
'GROUP BY l.pagina_id, l.nome',
'ORDER BY l.pagina_id;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Listagem das P\00E1ginas')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'<h4>&P12_TITULO.</h4>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(38139071382842503712)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'DANIEL@MAIL.COM'
,p_internal_uid=>38139071382842503712
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38139071462398503713)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.::P122_PAGINA_ID:#PAGINA_ID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'ColunaEditar'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38139071566167503714)
,p_db_column_name=>'PAGINA_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38328275871880404904)
,p_db_column_name=>'NOME'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38328275738079404903)
,p_db_column_name=>'GRUPOS'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Grupo(s)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(38145235892323706771)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'381452359'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT_LINK:PAGINA_ID:NOME:GRUPOS:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38224886895963061512)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38139071256628503711)
,p_button_name=>'Nova'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(38135748027198198903)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nova'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38338619037287160517)
,p_name=>'P12_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38139071256628503711)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nome',
'  FROM pagina',
' WHERE pagina_id = &APP_PAGE_ID.;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
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
