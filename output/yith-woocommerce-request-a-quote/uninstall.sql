-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ywraq_page_id', 'ywraq_hide_add_to_cart', 'ywraq_after_click_action', 'ywraq_show_button_near_add_to_cart', 'ywraq_show_btn_link', 'ywraq_hide_price', 'ywctm_exclude_price_alternative_text', 'ywraq_show_btn_link_text', 'ywraq_add_to_quote_button_color', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'ywraq_activate_thank_you_page', 'ywraq_show_btn_single_page', 'ywraq_accept_link_label', 'ywraq_reject_link_label', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'woocommerce_email_footer_text', 'ywraq_add_privacy_checkbox', 'ywraq_privacy_description', 'ywraq_privacy_label', 'ywraq_show_sku', 'ywraq_show_update_list', 'ywraq_update_list_label', 'ywraq_page_list_layout_template', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '_yith_ywraq_session_%';
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');

