-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%fm_import_media';
DELETE FROM wp_options WHERE option_name LIKE '%fm_super_user';
DELETE FROM wp_options WHERE option_name LIKE '%fm_allowed_roles';
DELETE FROM wp_options WHERE option_name LIKE '%fm_restricted_users';

