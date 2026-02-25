-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hashtags_for_wp_color', 'hashtags_for_wp_symbol');

