<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bs_sp_selector');
delete_site_option('bs_sp_selector');
delete_option('bs_sp_color');
delete_site_option('bs_sp_color');
delete_option('bs_sp_width');
delete_site_option('bs_sp_width');

