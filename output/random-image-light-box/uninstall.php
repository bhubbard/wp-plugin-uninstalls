<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('random-image-light-box');
delete_site_option('random-image-light-box');

// Delete Transients
delete_transient('_rilb_activation_redirect');
delete_site_transient('_rilb_activation_redirect');

