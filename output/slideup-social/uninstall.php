<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fb_username');
delete_site_option('fb_username');
delete_option('tw_username');
delete_site_option('tw_username');
delete_option('ins_username');
delete_site_option('ins_username');
delete_option('fb_url');
delete_site_option('fb_url');
delete_option('tw_url');
delete_site_option('tw_url');
delete_option('ins_url');
delete_site_option('ins_url');

