-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nikePLUS_localpath', 'nikePLUS_userid', 'nikePLUS_pass', 'nikePLUS_showpowersong', 'nikePLUS_itmslink', 'nikePLUS_dontcache', 'nikePLUS_proxy', 'nikePLUS_showgoals', 'nikePLUS_showrecords', 'nikePLUS_decimal', 'nikePLUS_thousands', 'nikePLUS_showavgs', 'nikePLUS_showrecent', 'nikePLUS_showgraphs', 'nikePLUS_graphsmoothing', 'nikePLUS_showrecentcount', 'nikePLUS_lastxml', 'nikePLUS_showchallenge', 'nikePLUS_showchallengedetail', 'widget_nikePLUS');

