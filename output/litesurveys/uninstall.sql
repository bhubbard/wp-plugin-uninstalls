-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lsapp_litesurveys_version', 'LSAPP_litesurveys_settings', 'litesurveys_active_surveys', 'litesurveys_has_active');

