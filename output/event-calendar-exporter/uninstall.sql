-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccsve_post_type', 'ccsve_custom_fields');
DELETE FROM wp_options WHERE option_name LIKE '%post_meta_keys';

