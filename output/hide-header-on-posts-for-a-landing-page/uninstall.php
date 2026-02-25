<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vgse_welcome_redirect');
delete_site_option('vgse_welcome_redirect');
delete_option('vg_page_layout_in_use');
delete_site_option('vg_page_layout_in_use');

