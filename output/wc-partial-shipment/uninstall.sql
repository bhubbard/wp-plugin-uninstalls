-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_footer_text', 'partially_shipped_status', 'partially_auto_complete', 'partially_hide_status', 'partially_enable_status_popup');

