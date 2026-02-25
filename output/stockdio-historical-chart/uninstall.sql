-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stockdio_historical_chart_options', 'stockdio_historical_chart_do_activation_redirect');

