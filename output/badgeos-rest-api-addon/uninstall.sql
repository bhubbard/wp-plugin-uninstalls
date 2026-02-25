-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bos_api_version', 'badgeos_settings', 'non_ob_conversion_progress');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_badgeos_restapi_apikey', '_badgeos_restapi_permission', '_badgeos_restapi_domain', '_badgeos_restapi_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_badgeos_restapi_apikey', '_badgeos_restapi_permission', '_badgeos_restapi_domain', '_badgeos_restapi_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_badgeos_restapi_apikey', '_badgeos_restapi_permission', '_badgeos_restapi_domain', '_badgeos_restapi_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_badgeos_restapi_apikey', '_badgeos_restapi_permission', '_badgeos_restapi_domain', '_badgeos_restapi_user');

