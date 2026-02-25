-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwc_widget_options', 'cwc_review_status', 'cwc_usage_count', 'cwc_activation_date');

