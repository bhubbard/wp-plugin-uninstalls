<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ca_wp_text_slider_texts');
delete_site_option('ca_wp_text_slider_texts');

