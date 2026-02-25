-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecwp_db_version', 'ecwp_encryption_key', 'ecwp_client_license_key', 'ecwp_client_license_data', 'ecwp_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('my_easy_compta_banner_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('my_easy_compta_banner_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('my_easy_compta_banner_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('my_easy_compta_banner_dismissed');

