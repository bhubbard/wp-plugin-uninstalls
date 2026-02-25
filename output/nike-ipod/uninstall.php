<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nikePLUS_localpath');
delete_site_option('nikePLUS_localpath');
delete_option('nikePLUS_userid');
delete_site_option('nikePLUS_userid');
delete_option('nikePLUS_pass');
delete_site_option('nikePLUS_pass');
delete_option('nikePLUS_showpowersong');
delete_site_option('nikePLUS_showpowersong');
delete_option('nikePLUS_itmslink');
delete_site_option('nikePLUS_itmslink');
delete_option('nikePLUS_dontcache');
delete_site_option('nikePLUS_dontcache');
delete_option('nikePLUS_proxy');
delete_site_option('nikePLUS_proxy');
delete_option('nikePLUS_showgoals');
delete_site_option('nikePLUS_showgoals');
delete_option('nikePLUS_showrecords');
delete_site_option('nikePLUS_showrecords');
delete_option('nikePLUS_decimal');
delete_site_option('nikePLUS_decimal');
delete_option('nikePLUS_thousands');
delete_site_option('nikePLUS_thousands');
delete_option('nikePLUS_showavgs');
delete_site_option('nikePLUS_showavgs');
delete_option('nikePLUS_showrecent');
delete_site_option('nikePLUS_showrecent');
delete_option('nikePLUS_showgraphs');
delete_site_option('nikePLUS_showgraphs');
delete_option('nikePLUS_graphsmoothing');
delete_site_option('nikePLUS_graphsmoothing');
delete_option('nikePLUS_showrecentcount');
delete_site_option('nikePLUS_showrecentcount');
delete_option('nikePLUS_lastxml');
delete_site_option('nikePLUS_lastxml');
delete_option('nikePLUS_showchallenge');
delete_site_option('nikePLUS_showchallenge');
delete_option('nikePLUS_showchallengedetail');
delete_site_option('nikePLUS_showchallengedetail');
delete_option('widget_nikePLUS');
delete_site_option('widget_nikePLUS');

