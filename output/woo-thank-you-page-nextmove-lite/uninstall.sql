-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xl_is_opted', 'xlwcty_default_posts', 'xlwcty_custom_thank_you_pages', 'xlp_is_opted', '_site_transient_update_plugins', 'xlwcty_scroll_components', 'xlplugin_nextmove_lite_hide_update_notice', 'woocommerce_checkout_order_received_endpoint', 'xlwcty_global_settings', 'fkwcs_wp_stripe', 'active_sitewide_plugins', 'xl_admin_notices', 'xl_uninstall_reasons', 'xl_optin_ref', 'woocommerce_default_country', 'woocommerce_calc_taxes', 'woocommerce_enable_guest_checkout', 'xl_track_day', 'update_plugins', 'xl_get_modules');
DELETE FROM wp_options WHERE option_name LIKE '%_upsell_displayed';
DELETE FROM wp_options WHERE option_name LIKE '_xl_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_active';
DELETE FROM wp_options WHERE option_name LIKE '%license_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_xlwcty_builder_layout', '_xlwcty_builder_template', '_xlwcty_menu_order', 'xlwcty_rule', '_xlwcty_is_default', '_xlwcty_order_details_enable', '_xlwcty_customer_information_enable', '_xlwcty_order_enable', '_elementor_edit_mode', '_xlwcty_chosen_order_preview', 'wpml_language', '_xlwcty_settings', '_et_pb_page_layout', '_et_pb_use_builder', '_dt_sidebar_position', 'gdlr-core-page-option', 'date_expires', 'expiry_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_xlwcty_builder_layout', '_xlwcty_builder_template', '_xlwcty_menu_order', 'xlwcty_rule', '_xlwcty_is_default', '_xlwcty_order_details_enable', '_xlwcty_customer_information_enable', '_xlwcty_order_enable', '_elementor_edit_mode', '_xlwcty_chosen_order_preview', 'wpml_language', '_xlwcty_settings', '_et_pb_page_layout', '_et_pb_use_builder', '_dt_sidebar_position', 'gdlr-core-page-option', 'date_expires', 'expiry_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_xlwcty_builder_layout', '_xlwcty_builder_template', '_xlwcty_menu_order', 'xlwcty_rule', '_xlwcty_is_default', '_xlwcty_order_details_enable', '_xlwcty_customer_information_enable', '_xlwcty_order_enable', '_elementor_edit_mode', '_xlwcty_chosen_order_preview', 'wpml_language', '_xlwcty_settings', '_et_pb_page_layout', '_et_pb_use_builder', '_dt_sidebar_position', 'gdlr-core-page-option', 'date_expires', 'expiry_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_xlwcty_builder_layout', '_xlwcty_builder_template', '_xlwcty_menu_order', 'xlwcty_rule', '_xlwcty_is_default', '_xlwcty_order_details_enable', '_xlwcty_customer_information_enable', '_xlwcty_order_enable', '_elementor_edit_mode', '_xlwcty_chosen_order_preview', 'wpml_language', '_xlwcty_settings', '_et_pb_page_layout', '_et_pb_use_builder', '_dt_sidebar_position', 'gdlr-core-page-option', 'date_expires', 'expiry_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_enable';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_enable';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_enable';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_enable';

