-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lastfm_tabs_options', 'lastfm_tabs_template_cache', 'lastfm_tabs_shortcode_cache');

