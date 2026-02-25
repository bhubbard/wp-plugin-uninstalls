-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'essential_blocks_version', 'eb_admin_menu_notice', 'eb_admin_promotion', '_wpdeveloper_plugin_pointer_priority', 'essential_blocks_quick_setup_shown', 'essential_blocks_user_type', 'eb_settings', 'essential_all_blocks', 'essential_quick_toolbar_allowed_blocks', 'eb_write_with_ai', 'eb_global_styles', 'wpins_allow_tracking', 'wpins_last_track_time', 'active_sitewide_plugins', 'wpins_block_notice', '_eb_reusable_block_ids', 'eb_opt_migration', 'essential_block_maybe_whatsnew_redirect', 'essential_block_whats_new_notice', 'wpnotice_priority_time_expired', 'eb_openverse_token');
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template', '_eb_block_lists', '_eb_reusable_block_ids', '_generate_element_display_conditions', '_generate_element_exclude_conditions', '_generate_element_user_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template', '_eb_block_lists', '_eb_reusable_block_ids', '_generate_element_display_conditions', '_generate_element_exclude_conditions', '_generate_element_user_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template', '_eb_block_lists', '_eb_reusable_block_ids', '_generate_element_display_conditions', '_generate_element_exclude_conditions', '_generate_element_user_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template', '_eb_block_lists', '_eb_reusable_block_ids', '_generate_element_display_conditions', '_generate_element_exclude_conditions', '_generate_element_user_conditions');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';

