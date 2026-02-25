<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('opm_options');
delete_site_option('opm_options');
delete_option('_opm_messages');
delete_site_option('_opm_messages');
delete_option('starterpack_options');
delete_site_option('starterpack_options');
delete_option('opm_do_activation_redirect');
delete_site_option('opm_do_activation_redirect');

