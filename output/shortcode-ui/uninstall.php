<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shortcode_ui_activation_notice');
delete_site_option('shortcode_ui_activation_notice');

