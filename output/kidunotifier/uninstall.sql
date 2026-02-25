-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixel_key', 'myplugin_activation_date', 'kidu_no_bug');

