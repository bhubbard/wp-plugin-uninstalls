-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orcsnet_placement', 'orcsnet_userid', 'orcsnet_publisher_lock', 'orcsnet_variant');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

