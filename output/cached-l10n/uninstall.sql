-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Cached_L10n.updated');
DELETE FROM wp_options WHERE option_name LIKE '%.updated';
DELETE FROM wp_options WHERE option_name LIKE '%.index';

