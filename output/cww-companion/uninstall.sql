-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_onboarded', 'cww_fresh_website_activate', '_cs_options', 'sidebars_widgets', '_wc_needs_pages', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_load_fa4_shim', 'elementor_container_width', '_wc_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'portfolio_client_name', 'portfolip_skills', 'portfolio_company_website', 'portfolio_date', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'portfolio_client_name', 'portfolip_skills', 'portfolio_company_website', 'portfolio_date', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'portfolio_client_name', 'portfolip_skills', 'portfolio_company_website', 'portfolio_date', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'portfolio_client_name', 'portfolip_skills', 'portfolio_company_website', 'portfolio_date', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');

