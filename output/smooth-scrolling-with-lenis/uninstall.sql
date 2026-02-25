-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('miga_smooth_scrolling_exclude_page', 'miga_smooth_scrolling_disable_wheel', 'miga_smooth_scrolling_anchor_offset', 'miga_smooth_scrolling_lerp', 'miga_smooth_scrolling_duration', 'miga_smooth_scrolling_anchor_links', 'miga_smooth_scrolling_gsap');

