-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esfs_load_type', 'esfs_show_teams_list', 'esfs_show_performances', 'sportspress_link_players', 'esfs_show_scoring_performances_list', 'esfs_show_special_scoring_performances_list', 'esfs_show_other_performances_list', 'esfs_show_officials', 'sportspress_link_officials', 'esfs_show_officials_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_team');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_team');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_team');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_team');

