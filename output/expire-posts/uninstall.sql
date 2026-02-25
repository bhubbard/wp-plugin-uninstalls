-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epw_post_type', 'epw_frequency', 'epw_expiration_time', 'epw_setting_time', 'epw_expire');

