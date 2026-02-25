-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('promobar_schedule', 'promobar_start_date', 'promobar_end_date', 'promobar_message');

