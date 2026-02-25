<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trrc_post_types');
delete_site_option('trrc_post_types');
delete_option('trrc_roles_excepted');
delete_site_option('trrc_roles_excepted');

