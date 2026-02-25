-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avang-email-sender-basename', 'avang-email-subscribe-basename', 'avangemail_plugin_dir_name', 'avangemail_options', 'avangemail_send-email-type', 'avangemail_config_from_name', 'avangemail_config_from_email', 'avangemail_from_email', 'avangemail_config_override_wooCommerce', 'avangemail_config_woocommerce_original_email', 'avangemail_config_woocommerce_original_name', 'woocommerce_email_from_address', 'woocommerce_email_from_name');

