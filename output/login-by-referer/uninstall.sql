-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login-by-referer_other_uninstall');
DELETE FROM wp_options WHERE option_name LIKE '%_referer_allowed';
DELETE FROM wp_options WHERE option_name LIKE '%_user_id';
DELETE FROM wp_options WHERE option_name LIKE '%_other_init';
DELETE FROM wp_options WHERE option_name LIKE '%_other_uninstall';

