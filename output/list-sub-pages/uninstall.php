<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('list_subpage_settings');
delete_site_option('list_subpage_settings');
delete_option('list_sp_activation_date');
delete_site_option('list_sp_activation_date');

