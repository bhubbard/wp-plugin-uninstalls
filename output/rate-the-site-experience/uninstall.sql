-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtse-enable', 'rtse-enable-pages', 'rtse-widget-settings', 'rtse-widget-content', 'rtse-thankyou-widget-content', 'rtse-widget-content-logo');

