<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('already_bought_enable_option');
delete_site_option('already_bought_enable_option');
delete_option('already_bought_enable_piaic');
delete_site_option('already_bought_enable_piaic');
delete_option('already_bought_enable_pwb');
delete_site_option('already_bought_enable_pwb');
delete_option('already_bought_add_to_cart_custom_msg');
delete_site_option('already_bought_add_to_cart_custom_msg');
delete_option('already_bought_custom_msg_pwb');
delete_site_option('already_bought_custom_msg_pwb');
delete_option('already_bought_custom_msg_piaic');
delete_site_option('already_bought_custom_msg_piaic');

