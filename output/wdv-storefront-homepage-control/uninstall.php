<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdvsf_homepage_checks');
delete_site_option('wdvsf_homepage_checks');
delete_option('wdvsf_homepage_categories_checks');
delete_site_option('wdvsf_homepage_categories_checks');

