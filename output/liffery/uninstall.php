<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liffery_option_domain_validated');
delete_site_option('liffery_option_domain_validated');
delete_option('liffery_option_domain_validated_date');
delete_site_option('liffery_option_domain_validated_date');

