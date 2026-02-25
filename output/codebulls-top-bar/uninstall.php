<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('options_cb_top_bar');
delete_site_option('options_cb_top_bar');
delete_option('options_cb_top_bar_content');
delete_site_option('options_cb_top_bar_content');

