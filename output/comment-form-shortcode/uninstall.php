<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selected_button');
delete_site_option('selected_button');
delete_option('floating_social_button_float');
delete_site_option('floating_social_button_float');
delete_option('floating_social_button_position_top');
delete_site_option('floating_social_button_position_top');
delete_option('floating_social_button_position_left');
delete_site_option('floating_social_button_position_left');
delete_option('floating_social_button_disable_mobile');
delete_site_option('floating_social_button_disable_mobile');

