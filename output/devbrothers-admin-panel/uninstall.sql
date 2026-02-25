-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbst_settings', 'devbrothers_version', 'devbrothers_settings', 'devbrothers_plugins_cache');

