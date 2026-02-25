-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clariti_api_key', 'clariti_api_host', 'clariti_api_secret', 'clariti_plugin_version', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wprm_parent_post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wprm_parent_post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wprm_parent_post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wprm_parent_post_id');

