-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myyt_username', 'myyt_hd', 'myyt_width', 'myyt_height', 'myyt_display_many', 'myyt_display_thumb', 'myyt_display_dateadded', 'myyt_enable_hd', 'myyt_orderby', 'Youtube_videos');

