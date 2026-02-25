<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rw_widgets_options');
delete_site_option('rw_widgets_options');
delete_option('restrict_widgets_activated_blogs');
delete_site_option('restrict_widgets_activated_blogs');

