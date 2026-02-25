-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wt_sermonnet_playlists', 'wt_sermonnet_id', 'wt_sermonnet_num', 'wt_sermonnet_name', 'wt_recent_sermonnets_all', 'wt_50_sermonnets_fulldata');

