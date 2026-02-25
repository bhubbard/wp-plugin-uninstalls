-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_piggly_pix_settings', 'wc_piggly_pix_dbversion', 'wc_piggly_pix_version', 'woocommerce_email_footer_text');

