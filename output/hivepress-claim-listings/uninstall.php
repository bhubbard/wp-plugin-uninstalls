<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hp_listing_claim_categories');
delete_site_option('hp_listing_claim_categories');
delete_option('hp_product_listing_claim');
delete_site_option('hp_product_listing_claim');
delete_option('hp_listing_claim_enable_moderation');
delete_site_option('hp_listing_claim_enable_moderation');

