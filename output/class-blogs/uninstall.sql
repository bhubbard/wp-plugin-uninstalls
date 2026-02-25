-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cb_disabled_plugins', 'cb_version', 'cb_plugin_pages', 'rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');

