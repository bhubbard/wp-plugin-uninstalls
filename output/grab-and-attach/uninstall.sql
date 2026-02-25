-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpt_checkbox_plugin_active');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alt-post-title');
DELETE FROM wp_usermeta WHERE meta_key IN ('alt-post-title');
DELETE FROM wp_termmeta WHERE meta_key IN ('alt-post-title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alt-post-title');

