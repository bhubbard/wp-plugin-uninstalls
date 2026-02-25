-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbwp_update_message', 'bbwp_error_message');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_user_created_metaboxes';
DELETE FROM wp_options WHERE option_name LIKE '%_user_created_pages';

