-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_auto_group_join_plugin_options', 'bp_auto_group_join_support_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bpagj_groups_visited');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bpagj_groups_visited');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bpagj_groups_visited');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bpagj_groups_visited');

