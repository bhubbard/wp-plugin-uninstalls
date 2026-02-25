<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcr_options');
delete_site_option('wcr_options');
delete_option('woocommerce_review_rating_verification_required');
delete_site_option('woocommerce_review_rating_verification_required');

