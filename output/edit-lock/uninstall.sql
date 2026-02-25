-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%locked_posts';
DELETE FROM wp_options WHERE option_name LIKE '%lock_type';
DELETE FROM wp_options WHERE option_name LIKE '%lock_toggle';
DELETE FROM wp_options WHERE option_name LIKE '%allow_admin';

