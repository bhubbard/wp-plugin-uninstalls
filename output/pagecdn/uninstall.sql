-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pagecdn', 'pagecdn-cache', 'pagecdn-image-cache', 'pagecdn-webp-cache');

