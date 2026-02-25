<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('relive_classic_editor_enable');
delete_site_option('relive_classic_editor_enable');
delete_option('relive_classic_widgets_enable');
delete_site_option('relive_classic_widgets_enable');
delete_option('relive_classic_frontend_gutenberg_stylesheet');
delete_site_option('relive_classic_frontend_gutenberg_stylesheet');

