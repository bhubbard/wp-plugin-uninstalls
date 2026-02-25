-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Crypto_Dash_Tracker_dashwidgetcoininfo', 'Crypto_Dash_Tracker_showdashwidget', 'crypto-dash-tracker');
DELETE FROM wp_options WHERE option_name LIKE '%_showdashwidget';
DELETE FROM wp_options WHERE option_name LIKE '%_dashwidgetcoininfo';

