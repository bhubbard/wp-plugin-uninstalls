<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psr_is_order_random');
delete_site_option('psr_is_order_random');
delete_option('psr_animation_effect');
delete_site_option('psr_animation_effect');

