<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('quick_and_easy_faqs_options');
delete_site_option('quick_and_easy_faqs_options');
delete_option('qaef_typography');
delete_site_option('qaef_typography');

