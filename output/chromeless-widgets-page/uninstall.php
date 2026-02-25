<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chromeless_widgets_page_slug');
delete_site_option('chromeless_widgets_page_slug');
delete_option('chromeless_widgets_page_css');
delete_site_option('chromeless_widgets_page_css');

