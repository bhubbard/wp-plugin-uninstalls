-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dw4elementor_activation_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dw4elementor_review_dismiss');
DELETE FROM wp_usermeta WHERE meta_key IN ('dw4elementor_review_dismiss');
DELETE FROM wp_termmeta WHERE meta_key IN ('dw4elementor_review_dismiss');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dw4elementor_review_dismiss');

