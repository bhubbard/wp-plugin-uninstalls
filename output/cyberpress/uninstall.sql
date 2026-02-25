-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_cyberpress_trying_to_add_archive_page', 'cyberpress_archive_pages', 'cyberpress_general', 'carbon_custom_sidebars', 'cyberpress_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cyberpress_match_tournament', '_cyberpress_team_game', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cyberpress_match_tournament', '_cyberpress_team_game', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cyberpress_match_tournament', '_cyberpress_team_game', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cyberpress_match_tournament', '_cyberpress_team_game', '_wp_page_template');

