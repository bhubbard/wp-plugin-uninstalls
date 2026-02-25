-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_azure_admin_email', 'mo_azure_admin_password', 'mo_azos_admin_email', 'mo_saml_admin_password', 'manual', 'automatic', 'push_user_to_ad', 'mo_saml_admin_email', 'mo_saml_admin_phone', 'host_name', 'mo_azos_application_config');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('AD_SYNC_ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('AD_SYNC_ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('AD_SYNC_ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('AD_SYNC_ID');

