<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fixed_html_toolbar_options');
delete_site_option('fixed_html_toolbar_options');

