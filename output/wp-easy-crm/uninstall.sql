-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clients_db_version', 'wp-easy-crm-settings', 'eacr_recaptcha_site_key', 'eacr_recaptcha_secret_key', 'eacr_enable_region_in_contact_form', 'eacr_exclude_general_region', 'default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'region_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'region_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'region_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'region_%';

