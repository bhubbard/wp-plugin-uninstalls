-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdu_inquiryform_boot_switch', 'wdu_inquiryform_form_source', 'wdu_inquiryform_shortcode');

