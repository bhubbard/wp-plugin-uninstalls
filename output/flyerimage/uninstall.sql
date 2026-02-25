-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flyer_image_installed_V002596854', 'flyer_image_version_V002596854', 'flyeri_api_url');

