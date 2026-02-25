<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_piggly_pix_settings');
delete_site_option('wc_piggly_pix_settings');
delete_option('wc_piggly_pix_dbversion');
delete_site_option('wc_piggly_pix_dbversion');
delete_option('wc_piggly_pix_version');
delete_site_option('wc_piggly_pix_version');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('pgly_cron_wc_piggly_pix_processing');

