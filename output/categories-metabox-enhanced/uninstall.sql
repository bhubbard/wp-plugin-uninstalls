-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cme-display-activation-message');
DELETE FROM wp_options WHERE option_name LIKE 'default_%';
DELETE FROM wp_options WHERE option_name LIKE 'category-metabox-enhanced_%';

