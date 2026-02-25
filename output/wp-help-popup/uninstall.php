<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wphp_options_group');
delete_site_option('wphp_options_group');
delete_option('wphp_dboptions');
delete_site_option('wphp_dboptions');

