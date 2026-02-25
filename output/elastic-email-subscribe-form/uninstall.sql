-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eesf-connecting-status', 'ee_options', 'ee_security_options', 'ee_delListName', 'eesf_plugin_dir_name', 'ee-apikey', 'ee_publicaccountid', 'ee_accountemail', 'ee_enablecontactfeatures', 'ee_is_created_channels', 'eesf_is_created_channels', 'elastic-email-to-send-status', 'ee-list-checkbox', 'elastic-email-subscribe-status', 'ee_mimetype', 'ee_config_from_name', 'ee_config_override_wooCommerce', 'ee_config_from_email', 'ee_from_email', 'woocommerce_email_from_address', 'ee_config_woocommerce_original_email', 'woocommerce_email_from_name', 'ee_config_woocommerce_original_name', 'ee_send-email-type', 'elastic-email-subscribe-basename', 'elastic-email-sender-basename', 'eesf_plugin_path', 'ee_actualselectedlist', 'daterangeselect', 'ees_plugin_dir_name');

