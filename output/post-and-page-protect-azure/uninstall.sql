-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_session_db_version');
DELETE FROM wp_options WHERE option_name LIKE '_ad_protect_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_azure_ad_protect_enabled', '_azure_ad_protect_directory_id', '_azure_ad_protect_application_id', '_azure_ad_protect_application_secret');
DELETE FROM wp_usermeta WHERE meta_key IN ('_azure_ad_protect_enabled', '_azure_ad_protect_directory_id', '_azure_ad_protect_application_id', '_azure_ad_protect_application_secret');
DELETE FROM wp_termmeta WHERE meta_key IN ('_azure_ad_protect_enabled', '_azure_ad_protect_directory_id', '_azure_ad_protect_application_id', '_azure_ad_protect_application_secret');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_azure_ad_protect_enabled', '_azure_ad_protect_directory_id', '_azure_ad_protect_application_id', '_azure_ad_protect_application_secret');

