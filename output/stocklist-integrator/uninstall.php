<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stocklist_integrator_activation_redirect');
delete_site_option('stocklist_integrator_activation_redirect');
delete_option('stocklist_integrator_domain');
delete_site_option('stocklist_integrator_domain');
delete_option('stocklist_integrator_options');
delete_site_option('stocklist_integrator_options');

