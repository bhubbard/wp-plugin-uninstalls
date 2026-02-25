-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('haw_mautic_drop_data', 'haw_mautic_base_url', 'haw_mautic_auth_type', 'haw_mautic_public_key', 'haw_mautic_secret_key', 'haw_mautic_access_token_data', 'haw_mautic_integration_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'fs_contact_form%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form');

