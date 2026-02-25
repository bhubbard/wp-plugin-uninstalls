-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_custom_emails_debug_enabled', 'alg_wc_custom_emails_delete_plugin_data', 'alg_wc_custom_emails_base_dir', 'alg_wc_custom_emails_custom_triggers', 'alg_wc_custom_emails_version', 'alg_wc_custom_emails_wpautop', 'alg_wc_custom_emails_scheduler', 'alg_wc_custom_emails_titles', 'alg_wc_custom_emails_enabled_trigger_groups', 'woocommerce_email_footer_text');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

