<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lequiz_options');
delete_site_option('lequiz_options');
delete_option('lequiz_prem');
delete_site_option('lequiz_prem');

