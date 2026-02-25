-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wss-page', 'wss-page-layout', 'wss-admin-color-background', 'wss-admin-color-text', 'wss-user-color-background', 'wss-user-color-text', 'wss-support-email', 'wss-support-email-name', 'wss-support-email-footer', 'wss-user-notification', 'wss-admin-notification', 'wss-premium-key');

