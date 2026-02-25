<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aco_user_level');
delete_site_option('aco_user_level');
delete_option('aco_user_own_comments');
delete_site_option('aco_user_own_comments');

