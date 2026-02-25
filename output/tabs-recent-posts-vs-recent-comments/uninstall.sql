-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tabs_rpvsrc_recentposts_cnt', 'tabs_rpvsrc_recentcomments_cnt', 'tabs_rpvsrc_recentposts_title', 'tabs_rpvsrc_recentcomments_title', 'tabs_rpvsrc_recentcomments_lgt');

