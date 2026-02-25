-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xpressbot_abandoned_cart_webhook_url', 'xpressbot_abandoned_cart_cutoff', 'xpressbot_webchat_widget_code', 'xpressbot_wabachat_widget_code');

