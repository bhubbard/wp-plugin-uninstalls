-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abwp_eym_plugin_version', 'abwp_eym_token', 'abwp_eym_counter_id');

