<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wt_sermonnet_playlists');
delete_site_option('wt_sermonnet_playlists');
delete_option('wt_sermonnet_id');
delete_site_option('wt_sermonnet_id');
delete_option('wt_sermonnet_num');
delete_site_option('wt_sermonnet_num');
delete_option('wt_sermonnet_name');
delete_site_option('wt_sermonnet_name');

// Delete Transients
delete_transient('wt_recent_sermonnets_all');
delete_site_transient('wt_recent_sermonnets_all');
delete_transient('wt_50_sermonnets_fulldata');
delete_site_transient('wt_50_sermonnets_fulldata');

