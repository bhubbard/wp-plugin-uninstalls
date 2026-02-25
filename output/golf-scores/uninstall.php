<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('golfScoresUser');
delete_site_option('golfScoresUser');
delete_option('golfScoresShowNet');
delete_site_option('golfScoresShowNet');
delete_option('golfScoresShowTee');
delete_site_option('golfScoresShowTee');
delete_option('golfScoresShowHoles');
delete_site_option('golfScoresShowHoles');
delete_option('golfScoresWidgetList');
delete_site_option('golfScoresWidgetList');
delete_option('golfScoresPageList');
delete_site_option('golfScoresPageList');
delete_option('golfScores');
delete_site_option('golfScores');
delete_option('golfScoresSubtitle');
delete_site_option('golfScoresSubtitle');
delete_option('trackPlayer');
delete_site_option('trackPlayer');
delete_option('golfScoresAdminList');
delete_site_option('golfScoresAdminList');
delete_option('golfScoresShowName');
delete_site_option('golfScoresShowName');
delete_option('golfScores_database_version');
delete_site_option('golfScores_database_version');

