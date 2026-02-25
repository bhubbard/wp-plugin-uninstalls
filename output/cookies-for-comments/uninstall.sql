-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfc_delivery', 'cfc_key', 'cfc_speed', 'cfc_spam', 'cfc_spam_message');

