-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lana_shortcodes_bootstrap_version', 'lana_shortcodes_bootstrap_load');

