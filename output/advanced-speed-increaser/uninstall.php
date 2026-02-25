<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tw_asi_msg');
delete_site_option('tw_asi_msg');
delete_option('tw_asi_html1');
delete_site_option('tw_asi_html1');
delete_option('tw_asi_status');
delete_site_option('tw_asi_status');

