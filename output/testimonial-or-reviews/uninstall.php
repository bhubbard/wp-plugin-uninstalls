<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orphita_testimonial_or_reviews_user_role_key');
delete_site_option('orphita_testimonial_or_reviews_user_role_key');
delete_option('oxi_div_database');
delete_site_option('oxi_div_database');
delete_option('orphita_review_data');
delete_site_option('orphita_review_data');
delete_option('orphita_review_data_active');
delete_site_option('orphita_review_data_active');
delete_option('orphita_testimonial_or_reviews_license_key');
delete_site_option('orphita_testimonial_or_reviews_license_key');
delete_option('orphita_testimonial_or_reviews_license_status');
delete_site_option('orphita_testimonial_or_reviews_license_status');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_Orphita_testimonial_or_reviews_welcome_activation_redirect');
delete_site_transient('_Orphita_testimonial_or_reviews_welcome_activation_redirect');

