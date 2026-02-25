<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tabs_rpvsrc_recentposts_cnt');
delete_site_option('tabs_rpvsrc_recentposts_cnt');
delete_option('tabs_rpvsrc_recentcomments_cnt');
delete_site_option('tabs_rpvsrc_recentcomments_cnt');
delete_option('tabs_rpvsrc_recentposts_title');
delete_site_option('tabs_rpvsrc_recentposts_title');
delete_option('tabs_rpvsrc_recentcomments_title');
delete_site_option('tabs_rpvsrc_recentcomments_title');
delete_option('tabs_rpvsrc_recentcomments_lgt');
delete_site_option('tabs_rpvsrc_recentcomments_lgt');

