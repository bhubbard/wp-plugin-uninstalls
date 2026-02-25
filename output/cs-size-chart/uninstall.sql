-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cs_sc_openai_api_key', 'cs_sc_primary_color', 'cs_sc_text_color', 'cs_sc_font_family', 'cs_sc_header_bg_color', 'cs_sc_header_text_color', 'cs_sc_body_bg_color', 'cs_sc_body_text_color', 'cs_sc_table_header_bg', 'cs_sc_table_header_text', 'cs_sc_table_row_bg', 'cs_sc_table_row_text', 'cs_sc_display_position', 'cs_sc_enable_ai_quiz', 'cs_sc_delete_on_uninstall', 'cs_sc_activated_time', 'cs_sc_version', 'cs_sc_db_version', 'cs_sc_flush_rewrite_rules', 'cs_sc_stats_0');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cs_size_chart_id', '_cs_assignment_type', '_cs_assigned_products', '_cs_assigned_categories', '_cs_size_chart_data', '_cs_size_chart_display_position', '_cs_size_chart_layout', '_cs_size_chart_style', '_cs_size_chart_quiz');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cs_size_chart_id', '_cs_assignment_type', '_cs_assigned_products', '_cs_assigned_categories', '_cs_size_chart_data', '_cs_size_chart_display_position', '_cs_size_chart_layout', '_cs_size_chart_style', '_cs_size_chart_quiz');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cs_size_chart_id', '_cs_assignment_type', '_cs_assigned_products', '_cs_assigned_categories', '_cs_size_chart_data', '_cs_size_chart_display_position', '_cs_size_chart_layout', '_cs_size_chart_style', '_cs_size_chart_quiz');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cs_size_chart_id', '_cs_assignment_type', '_cs_assigned_products', '_cs_assigned_categories', '_cs_size_chart_data', '_cs_size_chart_display_position', '_cs_size_chart_layout', '_cs_size_chart_style', '_cs_size_chart_quiz');

