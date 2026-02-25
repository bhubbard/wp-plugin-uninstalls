-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ot_css_file_paths', 'qcpx_details_page_width', 'qcpx_details_page_width_val', 'qcld_template_links', 'qcpx_list_page_width', 'qcpx_list_page_width_val', 'qcld_post_per_page', 'qcld_link_title', 'qcpo_tpl1_serial_number', 'qcpo_tpl1_color_scheme', 'qcpo_tpl1_qcld_img_border_radius', 'qcpo_tpl2_item_border_radius', 'qcpo_tpl2_item_margin_tp', 'qcpo_tpl2_item_margin_rt', 'qcpo_tpl2_item_margin_bt', 'qcpo_tpl2_item_margin_lt', 'qcld_port_custom_css', 'qx_ot_convrt', 'qcpx_plugin_options');
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_format_link_url', '_format_quote_source_url', '_custom_sort_post_order', 'qc_port_settings_template', 'qc_port_settings_orderby', 'qc_port_settings_order', '_qc_portfoliourl', 'qc_portfolio_wysiwyg', 'qc_portfolio_disp_url', 'qc_portfolio_url', 'qc_portfolio_technology', 'qc_portfolio_project_date', 'qc_portfolio_gallery_images', 'qcld_start_date', 'qcld_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_format_link_url', '_format_quote_source_url', '_custom_sort_post_order', 'qc_port_settings_template', 'qc_port_settings_orderby', 'qc_port_settings_order', '_qc_portfoliourl', 'qc_portfolio_wysiwyg', 'qc_portfolio_disp_url', 'qc_portfolio_url', 'qc_portfolio_technology', 'qc_portfolio_project_date', 'qc_portfolio_gallery_images', 'qcld_start_date', 'qcld_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_format_link_url', '_format_quote_source_url', '_custom_sort_post_order', 'qc_port_settings_template', 'qc_port_settings_orderby', 'qc_port_settings_order', '_qc_portfoliourl', 'qc_portfolio_wysiwyg', 'qc_portfolio_disp_url', 'qc_portfolio_url', 'qc_portfolio_technology', 'qc_portfolio_project_date', 'qc_portfolio_gallery_images', 'qcld_start_date', 'qcld_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_format_link_url', '_format_quote_source_url', '_custom_sort_post_order', 'qc_port_settings_template', 'qc_port_settings_orderby', 'qc_port_settings_order', '_qc_portfoliourl', 'qc_portfolio_wysiwyg', 'qc_portfolio_disp_url', 'qc_portfolio_url', 'qc_portfolio_technology', 'qc_portfolio_project_date', 'qc_portfolio_gallery_images', 'qcld_start_date', 'qcld_end_date');

