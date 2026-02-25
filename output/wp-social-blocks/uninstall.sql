-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fb_page_link', 'fblb_width', 'fblb_height', 'fblb_stream', 'fblb_header', 'fblb_border', 'fblb_color', 'fblb_profile', 'tw_widgetid', 'tw_width', 'tw_height', 'tw_tweetlimit', 'tw_noheader', 'tw_nofooter', 'tw_noborders', 'tw_noscrollbar', 'tw_theme');

