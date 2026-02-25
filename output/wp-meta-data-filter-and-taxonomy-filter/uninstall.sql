-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('meta_data_filter_settings', 'mdf_marketing_settings', 'mdf_stat_start_data', 'mdf_start_period_stat', 'meta_data_filter_was_activated', 'date_format_custom');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('page_meta_data_filter', 'shortcode_options', 'html_items', 'page_mdf_string', 'medafi_years', 'page_mdf_link', 'mdf_link_seo_prefix', 'mdf_link_seo_suffix', 'show_results_tax_navigation', 'panel_type', 'default_order', 'default_order_by', 'mdf_woo_search_values', '_wp_page_template', 'sequence', 'widget_section_max_height', 'backend_section_max_height', 'widget_section_toggle', 'widget_section_sel_emulator');
DELETE FROM wp_usermeta WHERE meta_key IN ('page_meta_data_filter', 'shortcode_options', 'html_items', 'page_mdf_string', 'medafi_years', 'page_mdf_link', 'mdf_link_seo_prefix', 'mdf_link_seo_suffix', 'show_results_tax_navigation', 'panel_type', 'default_order', 'default_order_by', 'mdf_woo_search_values', '_wp_page_template', 'sequence', 'widget_section_max_height', 'backend_section_max_height', 'widget_section_toggle', 'widget_section_sel_emulator');
DELETE FROM wp_termmeta WHERE meta_key IN ('page_meta_data_filter', 'shortcode_options', 'html_items', 'page_mdf_string', 'medafi_years', 'page_mdf_link', 'mdf_link_seo_prefix', 'mdf_link_seo_suffix', 'show_results_tax_navigation', 'panel_type', 'default_order', 'default_order_by', 'mdf_woo_search_values', '_wp_page_template', 'sequence', 'widget_section_max_height', 'backend_section_max_height', 'widget_section_toggle', 'widget_section_sel_emulator');
DELETE FROM wp_commentmeta WHERE meta_key IN ('page_meta_data_filter', 'shortcode_options', 'html_items', 'page_mdf_string', 'medafi_years', 'page_mdf_link', 'mdf_link_seo_prefix', 'mdf_link_seo_suffix', 'show_results_tax_navigation', 'panel_type', 'default_order', 'default_order_by', 'mdf_woo_search_values', '_wp_page_template', 'sequence', 'widget_section_max_height', 'backend_section_max_height', 'widget_section_toggle', 'widget_section_sel_emulator');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_desc';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_desc';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_desc';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_desc';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_from';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_from';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_from';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_from';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_to';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_to';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_to';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_to';

