-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awoos_format', 'awoos_custom_label', 'awoos_percent_label', 'awoos_percent_after_before', 'awoos_price_label', 'awoos_price_after_before');

