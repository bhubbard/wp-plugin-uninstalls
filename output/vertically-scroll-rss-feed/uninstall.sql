-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gVerticalscroll_rssfeed_title', 'gVerticalscroll_rssfeed_font', 'gVerticalscroll_rssfeed_fontsize', 'gVerticalscroll_rssfeed_fontweight', 'gVerticalscroll_rssfeed_fontcolor', 'gVerticalscroll_rssfeed_width', 'gVerticalscroll_rssfeed_height', 'gVerticalscroll_rssfeed_slidedirection', 'gVerticalscroll_rssfeed_slidetimeout', 'gVerticalscroll_rssfeed_textalign', 'gVerticalscroll_rssfeed_textvalign', 'gVerticalscroll_rssfeed_noannouncement', 'gVerticalscroll_rssfeed_url');

