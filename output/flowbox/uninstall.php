<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flowbox_checkout_script');
delete_site_option('flowbox_checkout_script');
delete_option('flowbox_checkout_identifier');
delete_site_option('flowbox_checkout_identifier');
delete_option('woocommerce_review_rating_verification_required');
delete_site_option('woocommerce_review_rating_verification_required');

