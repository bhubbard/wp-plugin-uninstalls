<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dtom_add_to_page');
delete_site_option('dtom_add_to_page');
delete_option('dtom_add_to_full_post');
delete_site_option('dtom_add_to_full_post');
delete_option('dtom_bgcolor');
delete_site_option('dtom_bgcolor');
delete_option('dtom_skin');
delete_site_option('dtom_skin');
delete_option('dtom_open_new_window');
delete_site_option('dtom_open_new_window');

