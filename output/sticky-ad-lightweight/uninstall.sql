-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sticky_ad_lightweight_auto_hide_delay', 'sticky_ad_lightweight_schedule_start', 'sticky_ad_lightweight_schedule_end', 'sticky_ad_lightweight_close_button_type', 'sticky_ad_lightweight_close_button_image', 'sticky_ad_lightweight_close_button_text', 'sticky_ad_lightweight_close_button_svg', 'sticky_ad_lightweight_display_mobile', 'sticky_ad_lightweight_display_desktop', 'sticky_ad_lightweight_ad_code', 'sticky_ad_lightweight_display_top', 'sticky_ad_lightweight_display_bottom', 'sticky_ad_lightweight_background_color');

