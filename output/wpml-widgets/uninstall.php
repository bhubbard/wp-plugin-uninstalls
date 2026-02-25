<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ignore_wpml_widgets_nag');
delete_site_option('ignore_wpml_widgets_nag');

