<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brosclad_options');
delete_site_option('brosclad_options');
delete_option('brosclad_show_activation_notice');
delete_site_option('brosclad_show_activation_notice');

