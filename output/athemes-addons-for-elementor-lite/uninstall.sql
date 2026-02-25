-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('athemes-addons-settings', 'athemes_addons_installed_time', 'athemes-addons-modules', 'athemes-addons-elementor', 'athemes_addons_notifications', 'athemes_addons_theme_builder_flushed_rules');
DELETE FROM wp_options WHERE option_name LIKE 'aafe_custom_js_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('athemes_addons_dashboard_notifications_latest_read', 'athemes_addons_disable_review_notice', 'delay_athemes_addons_disable_review_notice_partially', '_ahf_template_type', '_ahf_template_conditions', '_ahf_header_type', '_elementor_template_type', '_wp_attachment_image_alt', 'thumbnail_id', 'ahf_display_rules', '_ahf_hook_type', '_ahf_hook_priority', '_ahf_merge_header');
DELETE FROM wp_usermeta WHERE meta_key IN ('athemes_addons_dashboard_notifications_latest_read', 'athemes_addons_disable_review_notice', 'delay_athemes_addons_disable_review_notice_partially', '_ahf_template_type', '_ahf_template_conditions', '_ahf_header_type', '_elementor_template_type', '_wp_attachment_image_alt', 'thumbnail_id', 'ahf_display_rules', '_ahf_hook_type', '_ahf_hook_priority', '_ahf_merge_header');
DELETE FROM wp_termmeta WHERE meta_key IN ('athemes_addons_dashboard_notifications_latest_read', 'athemes_addons_disable_review_notice', 'delay_athemes_addons_disable_review_notice_partially', '_ahf_template_type', '_ahf_template_conditions', '_ahf_header_type', '_elementor_template_type', '_wp_attachment_image_alt', 'thumbnail_id', 'ahf_display_rules', '_ahf_hook_type', '_ahf_hook_priority', '_ahf_merge_header');
DELETE FROM wp_commentmeta WHERE meta_key IN ('athemes_addons_dashboard_notifications_latest_read', 'athemes_addons_disable_review_notice', 'delay_athemes_addons_disable_review_notice_partially', '_ahf_template_type', '_ahf_template_conditions', '_ahf_header_type', '_elementor_template_type', '_wp_attachment_image_alt', 'thumbnail_id', 'ahf_display_rules', '_ahf_hook_type', '_ahf_hook_priority', '_ahf_merge_header');

