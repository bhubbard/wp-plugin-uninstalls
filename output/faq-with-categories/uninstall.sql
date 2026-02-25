-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ruigehond_plugin_error', 'ruigehond010_admin_multi_message', 'ruigehond010_flag_flush_rewrite_rules', 'ruigehond010');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ruigehond010_exclusive');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ruigehond010_exclusive');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ruigehond010_exclusive');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ruigehond010_exclusive');

