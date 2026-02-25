-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsuc-enable', 'rsuc-enable-homepage', 'rsuc-ip', 'rsuc-secret-word', 'rsuc-cookie-time', 'rsuc-html');

