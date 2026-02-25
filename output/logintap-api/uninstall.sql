-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logintap_api_tenant', 'logintap_api_appuuid', 'logintap_api_login', 'logintap_api_password', 'logintap_api_accesstoken', 'logintap_api_refreshtoken');

