<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cta_button_name');
delete_site_option('cta_button_name');
delete_option('cta_button_effects');
delete_site_option('cta_button_effects');
delete_option('cta_button_options');
delete_site_option('cta_button_options');
delete_option('cta_button_hover_options');
delete_site_option('cta_button_hover_options');

