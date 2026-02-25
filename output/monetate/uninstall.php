<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mon_domain_name');
delete_site_option('mon_domain_name');
delete_option('mon_alphanumeric_name');
delete_site_option('mon_alphanumeric_name');

