-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_transient_wc_count_comments', 'dac_disable_option', 'dac_hide_option', 'dac_plugin_activated_redirect');

