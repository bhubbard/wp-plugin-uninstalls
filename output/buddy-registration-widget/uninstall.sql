-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddy_member_cover', 'buddy_group_cover', 'buddy_hide_activity_tab', 'buddy_profile_image', 'buddy_custom_widget_template', 'buddy_custom_shortcode_template');

