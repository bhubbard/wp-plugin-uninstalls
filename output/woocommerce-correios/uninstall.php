<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_correios_autofill_addresses_db_version');
delete_site_option('woocommerce_correios_autofill_addresses_db_version');
delete_option('woocommerce_correios_version');
delete_site_option('woocommerce_correios_version');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Delete Transients
delete_transient('correios-cwsstaging-token');
delete_site_transient('correios-cwsstaging-token');
delete_transient('correios-cwsproduction-token');
delete_site_transient('correios-cwsproduction-token');
delete_transient('correios-cws-staging-token');
delete_site_transient('correios-cws-staging-token');
delete_transient('correios-cws-production-token');
delete_site_transient('correios-cws-production-token');

