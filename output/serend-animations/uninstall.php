<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('serend_animations_debug_mode');
delete_site_option('serend_animations_debug_mode');

// Delete Transients
delete_transient('serend_animations_activation_notice');
delete_site_transient('serend_animations_activation_notice');

