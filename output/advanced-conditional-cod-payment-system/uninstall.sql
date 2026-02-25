-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accodps_wc_advance_payment_percentage', 'accodps_wc_advance_payment_min_order_total', 'accodps_advance_payment_title', 'accodps_advance_payment_description', 'accodps_advance_payment_checkbox_text');

