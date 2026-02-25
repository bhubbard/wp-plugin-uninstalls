-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('donamt_total_donation_amount', 'donamt_settings', 'donamt_display_settings', 'donamt_version', 'total_donation_amount', 'donamt_previous_version', 'donamt_hpos_compatible', 'donation_amount_settings', 'donation_amount_display_settings', 'donation_amount_version', 'dat_settings', 'dat_display_settings', 'dat_total_donation_amount', 'dat_version', 'dat_previous_version', 'donamt_redirect_after_save', 'donamt_version_changed', 'donamt_checked_amount');

