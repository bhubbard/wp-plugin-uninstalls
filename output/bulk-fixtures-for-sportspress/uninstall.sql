-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sportspress_event_teams_delimiter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_team', 'sp_day', 'sp_format');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_team', 'sp_day', 'sp_format');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_team', 'sp_day', 'sp_format');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_team', 'sp_day', 'sp_format');

