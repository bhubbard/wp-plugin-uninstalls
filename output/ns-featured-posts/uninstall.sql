-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nsfp_plugin_options', 'nsfp_option_migration_complete', 'nsfp_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_ns_featured_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_ns_featured_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_ns_featured_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_ns_featured_post');

