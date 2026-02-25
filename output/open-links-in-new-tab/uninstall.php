<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('olint_open_external_link_in_new_tab');
delete_site_option('olint_open_external_link_in_new_tab');
delete_option('olint_open_internal_link_in_new_tab');
delete_site_option('olint_open_internal_link_in_new_tab');

