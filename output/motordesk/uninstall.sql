-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('motordesk', 'motordesk-i', 'motordesk-is', 'motordesk-i-field', 'motordesk-i-id', 'motordesk-i-alpha');
DELETE FROM wp_options WHERE option_name LIKE 'motordesk-i-%';
DELETE FROM wp_options WHERE option_name LIKE 'motordesk-v-%';
DELETE FROM wp_options WHERE option_name LIKE 'motordesk-vs-%';

