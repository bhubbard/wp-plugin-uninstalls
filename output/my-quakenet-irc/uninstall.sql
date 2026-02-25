-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('new_irc', 'kw_use_forum', 'kw_use_shortcode', 'kw_use_shortcode_no_sidebar', 'kw_special_width1', 'kw_special_width2', 'kw_special_width3');

