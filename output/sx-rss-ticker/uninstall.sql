-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sxrssticker_setting_s1', 'sxrssticker_setting_s2', 'sxrssticker_setting_s3', 'sxrssticker_setting_s4');

