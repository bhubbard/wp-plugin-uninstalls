<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('intelliassist_options');
delete_site_option('intelliassist_options');
delete_option('intms_cs');
delete_site_option('intms_cs');
delete_option('intelliassist_activation_redirect');
delete_site_option('intelliassist_activation_redirect');
delete_option('intms_ck');
delete_site_option('intms_ck');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');

// Delete Transients
delete_transient('intelliassist_flush_rules');
delete_site_transient('intelliassist_flush_rules');

