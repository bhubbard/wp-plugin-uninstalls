<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pass_protect_all_select_types');
delete_site_option('pass_protect_all_select_types');
delete_option('pass_protect_all_pass_field');
delete_site_option('pass_protect_all_pass_field');

