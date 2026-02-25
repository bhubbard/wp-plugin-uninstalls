<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('duplicate_page_options');
delete_site_option('duplicate_page_options');
delete_option('mk_fm_close_fm_help_c');
delete_site_option('mk_fm_close_fm_help_c');

