-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordpoints_recently_activated_modules', 'wordpoints_breaking_deactivated_modules', 'wordpoints_incompatible_modules', 'wordpoints_merged_extensions', 'wordpoints_module_check_nonce', 'wordpoints_module_check_rand_str', 'wordpoints_sitewide_active_modules', 'wordpoints_active_modules', 'wordpoints_legacy_extensions_dir', 'wordpoints_disabled_points_hooks_edit_points_types', 'wordpoints_points_types_hooks', 'wordpoints_comment_removed_hook_legacy', 'wordpoints_post_delete_hook_legacy', 'wordpoints_points_register_legacy_post_publish_event', 'wordpoints_comment_hook_legacy', 'wordpoints_post_hook_legacy', 'wordpoints_ranks_2_4_0_update_duplicates', 'wordpoints_filled_base_ranks', 'wordpoints_data', 'update_plugins', 'wordpoints_extension_updates');
DELETE FROM wp_options WHERE option_name LIKE 'wordpoints_modules_delete_result_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reverse_fired', 'hook_hit_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('reverse_fired', 'hook_hit_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('reverse_fired', 'hook_hit_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reverse_fired', 'hook_hit_id');

