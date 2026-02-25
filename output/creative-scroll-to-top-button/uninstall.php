<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('creative_scroll_to_top_button_settings');
delete_site_option('creative_scroll_to_top_button_settings');

// Delete Transients
delete_transient('creative_scroll_to_top_button_activation_notice');
delete_site_transient('creative_scroll_to_top_button_activation_notice');

