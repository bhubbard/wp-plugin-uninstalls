<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jika_widgets_options');
delete_site_option('jika_widgets_options');
delete_option('jika_widgets_options_elementor');
delete_site_option('jika_widgets_options_elementor');

