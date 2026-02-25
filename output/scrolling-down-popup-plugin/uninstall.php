<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sdp_On_Homepage');
delete_site_option('sdp_On_Homepage');
delete_option('sdp_On_Posts');
delete_site_option('sdp_On_Posts');
delete_option('sdp_On_Pages');
delete_site_option('sdp_On_Pages');
delete_option('sdp_On_Archives');
delete_site_option('sdp_On_Archives');
delete_option('sdp_On_Search');
delete_site_option('sdp_On_Search');
delete_option('sdp_cookies');
delete_site_option('sdp_cookies');

