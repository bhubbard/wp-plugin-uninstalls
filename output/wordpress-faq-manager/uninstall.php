<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('faq_options');
delete_site_option('faq_options');

// Delete Transients
delete_transient('wpfaq_admin_fetch_faqs');
delete_site_transient('wpfaq_admin_fetch_faqs');
delete_transient('wpfaq_widget_fetch_random');
delete_site_transient('wpfaq_widget_fetch_random');
delete_transient('wpfaq_widget_fetch_recent');
delete_site_transient('wpfaq_widget_fetch_recent');
delete_transient('wpfaq_total_faq_count');
delete_site_transient('wpfaq_total_faq_count');

