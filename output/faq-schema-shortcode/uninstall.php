<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('faq_schema_shortcode_dogbytemarketing_settings');
delete_site_option('faq_schema_shortcode_dogbytemarketing_settings');

