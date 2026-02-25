-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yith-wcwtl-form-message', 'yith-wcwtl-button-add-label', 'yith-wcwtl-button-leave-label', 'yith-wcwtl-button-success-msg', 'yith-wcwtl-button-error-msg-for-user-already-subscribed', 'yith-wcwtl-leave-message', 'yith-wcwtl-button-error-msg', 'yith-wcwtl-enable-privacy-checkbox', 'yith-wcwtl-keep-after-email', 'yith-wcwtl-enable', 'woocommerce_myaccount_waiting_list_endpoint', 'woocommerce_email_footer_text', 'woocommerce_yith_waitlist_mail_instock_settings', 'yith-wcwtl-section-background', 'yith-wcwtl-section-border-radius', 'yith-wcwtl-notice-colors', 'yith-wcwtl-privacy-checkbox-text', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith-wcwtl-form-placeholder', 'yith-wcwtl-enable-button-leave', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yith_wcwtl_products_list', '_yith_wcwtl_users_list', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yith_wcwtl_products_list', '_yith_wcwtl_users_list', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yith_wcwtl_products_list', '_yith_wcwtl_users_list', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yith_wcwtl_products_list', '_yith_wcwtl_users_list', 'dismissed_wp_pointers', 'blog-cats');

