-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mit3xxx_toolbar_account', 'mit3xxx_toolbar_website', 'mit3xxx_toolbar_rss', 'mit3xxx_toolbar_theme', 'mit3xxx_toolbar_position', 'mit3xxx_toolbar_twitter_account', 'mit3xxx_toolbar_show_back_to_top', 'mit3xxx_toolbar_show_back_to_bottom', 'mit3xxx_toolbar_show_twitter', 'mit3xxx_toolbar_show_facebook', 'mit3xxx_toolbar_show_bookmarks', 'mit3xxx_toolbar_show_search', 'mit3xxx_toolbar_search_website', 'mit3xxx_toolbar_distance', 'mit3xxx_toolbar_style', 'mit3xxx_toolbar_distance_from_position');

