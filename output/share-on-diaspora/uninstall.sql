-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('share-on-diaspora-settings', 'share-on-diaspora-settings2', 'dpu-podlist');

