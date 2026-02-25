-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myyt_username', 'myyt_display_many', 'myyt_enable_hd', 'myyt_display_thumb', 'myyt_display_dateadded', 'myyt_orderby');

