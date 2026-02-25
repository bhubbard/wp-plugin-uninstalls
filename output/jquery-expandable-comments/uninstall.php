<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bb_jcr_options');
delete_site_option('bb_jcr_options');
delete_option('current_theme');
delete_site_option('current_theme');

