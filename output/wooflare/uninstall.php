<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocf_settings');
delete_site_option('woocf_settings');
delete_option('woocf_log');
delete_site_option('woocf_log');
delete_option('woocf_notice_toggled');
delete_site_option('woocf_notice_toggled');
delete_option('woocommerce_demo_store');
delete_site_option('woocommerce_demo_store');
delete_option('cloudflare_api_email');
delete_site_option('cloudflare_api_email');
delete_option('cloudflare_api_key');
delete_site_option('cloudflare_api_key');
delete_option('woocf_activated_on');
delete_site_option('woocf_activated_on');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');

