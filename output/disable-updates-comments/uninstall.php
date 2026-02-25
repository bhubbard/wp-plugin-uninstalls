<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dun_disable_all');
delete_site_option('dun_disable_all');
delete_option('dun_disable_comments');
delete_site_option('dun_disable_comments');

