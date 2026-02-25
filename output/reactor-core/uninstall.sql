-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('json_api_plugin_version', 'site_admins', 'json_testhelper_coverage', 'reactor_activate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reactor_token', '_app_image_category', '_app_image', 'testkey', '_testkey', 'testotherkey', 'testnewkey', '_testnewkey');
DELETE FROM wp_usermeta WHERE meta_key IN ('reactor_token', '_app_image_category', '_app_image', 'testkey', '_testkey', 'testotherkey', 'testnewkey', '_testnewkey');
DELETE FROM wp_termmeta WHERE meta_key IN ('reactor_token', '_app_image_category', '_app_image', 'testkey', '_testkey', 'testotherkey', 'testnewkey', '_testnewkey');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reactor_token', '_app_image_category', '_app_image', 'testkey', '_testkey', 'testotherkey', 'testnewkey', '_testnewkey');

