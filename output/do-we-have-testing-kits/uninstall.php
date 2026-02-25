<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dwhtk_time');
delete_site_option('dwhtk_time');
delete_option('dwhtk_status');
delete_site_option('dwhtk_status');
delete_option('dwhtk_yes_content');
delete_site_option('dwhtk_yes_content');
delete_option('dwhtk_no_content');
delete_site_option('dwhtk_no_content');

