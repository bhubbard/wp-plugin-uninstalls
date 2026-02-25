-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('golfScoresUser', 'golfScoresShowNet', 'golfScoresShowTee', 'golfScoresShowHoles', 'golfScoresWidgetList', 'golfScoresPageList', 'golfScores', 'golfScoresSubtitle', 'trackPlayer', 'golfScoresAdminList', 'golfScoresShowName', 'golfScores_database_version');

