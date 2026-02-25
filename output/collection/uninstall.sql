-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slwsu_is_active_grouper', 'slwsu_collection_grouper', 'slwsu_collection_delete_options', 'slwsu_collection_metaboxs', 'slwsu_collection_plugin_name', 'slwsu_collection_post_types', 'slwsu_collection_add_body_class', 'slwsu_collection_inline_styles', 'slwsu_collection_capability_type', 'slwsu_collection_post_type_supports', 'slwsu_collection_post_type_deregister', 'slwsu_collection_flush_rewrite', 'slwsu_collection_options');
DELETE FROM wp_options WHERE option_name LIKE 'slwsu_collection_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

