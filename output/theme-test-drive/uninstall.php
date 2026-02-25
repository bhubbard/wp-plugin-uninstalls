<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('td_themes');
delete_site_option('td_themes');
delete_option('td_level');
delete_site_option('td_level');

