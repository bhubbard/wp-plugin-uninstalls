<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ukzc_welcome_displayed');
delete_site_option('ukzc_welcome_displayed');

