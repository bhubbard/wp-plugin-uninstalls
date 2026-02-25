-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aw_wp_yca_postcontent', 'aw_wp_yca_customhtmlphp');

