-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('musicbox_only_homepage', 'musicbox_music_url', 'musicbox_custom_icon', 'musicbox_width', 'musicbox_height', 'musicbox_position_left', 'musicbox_position_bottom', 'musicbox_enable_autoplay', 'musicbox_disable_hours', 'musicbox_disable_progress_memory', 'musicbox_disable_mobile_autoplay');

