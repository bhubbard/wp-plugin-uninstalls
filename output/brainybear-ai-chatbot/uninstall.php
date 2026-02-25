<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brainybearAI_info');
delete_site_option('brainybearAI_info');
delete_option('brainybearAI_domain');
delete_site_option('brainybearAI_domain');

