<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssbhm_locations');
delete_site_option('ssbhm_locations');
delete_option('ssbhm_do_activation_redirect');
delete_site_option('ssbhm_do_activation_redirect');

