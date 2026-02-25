<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('dieter_privacy_activation_notice');
delete_site_transient('dieter_privacy_activation_notice');

