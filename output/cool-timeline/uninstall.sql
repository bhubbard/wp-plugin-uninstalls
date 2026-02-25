-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctl-postmeta-migration', 'cool-free-timeline-v', 'cool-timelne-v', 'cool_timeline_options', 'cool_timeline_settings', 'ctl_settings_migration_status', 'timeline_express_migrated', 'timeline_express_storage', 'csf_demo_mode', 'ctl_initial_save_version', 'ctl-install-date', 'cpfm_opt_in_choice_cool-timeline', 'dismiss_ele_addon_notice', 'cool-timelne-installDate', 'cool-timelne-ratingDiv', 'cool-timeline-already-rated', 'ctl_flush_rewrite_rules_flag', 'cool-timelne-plugin-type', 'ctl-upgraded', 'cool-timelne-type', 'ctl_shortcode_page_ids', 'ctl_layout_used');
DELETE FROM wp_options WHERE option_name LIKE '%_remove_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('story_type', 'story_media', 'story_icon', 'announcement_date', 'announcement_icon', 'announcement_color', 'announcement_image_id', 'announcement_custom_excerpt', '_ctl_visible', 'ctl_story_timestamp', 'story_date', 'story_color', 'ctl_post_meta', 'ctl_story_date', 'story_based_on', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('story_type', 'story_media', 'story_icon', 'announcement_date', 'announcement_icon', 'announcement_color', 'announcement_image_id', 'announcement_custom_excerpt', '_ctl_visible', 'ctl_story_timestamp', 'story_date', 'story_color', 'ctl_post_meta', 'ctl_story_date', 'story_based_on', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('story_type', 'story_media', 'story_icon', 'announcement_date', 'announcement_icon', 'announcement_color', 'announcement_image_id', 'announcement_custom_excerpt', '_ctl_visible', 'ctl_story_timestamp', 'story_date', 'story_color', 'ctl_post_meta', 'ctl_story_date', 'story_based_on', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('story_type', 'story_media', 'story_icon', 'announcement_date', 'announcement_icon', 'announcement_color', 'announcement_image_id', 'announcement_custom_excerpt', '_ctl_visible', 'ctl_story_timestamp', 'story_date', 'story_color', 'ctl_post_meta', 'ctl_story_date', 'story_based_on', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

