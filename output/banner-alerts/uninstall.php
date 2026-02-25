<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('options-general_banner-alerts_display');
delete_site_option('options-general_banner-alerts_display');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

