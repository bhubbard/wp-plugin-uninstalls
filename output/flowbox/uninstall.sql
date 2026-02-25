-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flowbox_checkout_script', 'flowbox_checkout_identifier', 'woocommerce_review_rating_verification_required');

