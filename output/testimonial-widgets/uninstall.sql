-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpttst_custom_forms', 'wpttst_options', 'wp-testimonials-visited-get-reviews', 'wpttst_fields');

