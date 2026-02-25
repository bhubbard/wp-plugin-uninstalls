<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppp_configurator_expiration_hours');
delete_site_option('ppp_configurator_expiration_hours');

