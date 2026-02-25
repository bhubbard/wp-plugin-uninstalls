-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grassblade_tincan_endpoint', 'grassblade_free_addons', 'grassblade_addons');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_xapi_content', 'xapi_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_xapi_content', 'xapi_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_xapi_content', 'xapi_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_xapi_content', 'xapi_content');

