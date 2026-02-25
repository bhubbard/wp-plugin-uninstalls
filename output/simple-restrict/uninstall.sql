-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_restrict_setting_one', 'simple_restrict_setting_redirect');

