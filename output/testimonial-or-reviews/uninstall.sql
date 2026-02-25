-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orphita_testimonial_or_reviews_user_role_key', 'oxi_div_database', 'orphita_review_data', 'orphita_review_data_active', 'orphita_testimonial_or_reviews_license_key', 'orphita_testimonial_or_reviews_license_status', 'update_plugins', '_Orphita_testimonial_or_reviews_welcome_activation_redirect');

