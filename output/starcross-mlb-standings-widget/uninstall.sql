-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_star_mlb_standings', 'star_mlb_standings_js', 'star_mlb_standings_update');

