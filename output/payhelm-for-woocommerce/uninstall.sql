-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paywoo_private_key', 'has_visited_channels', 'ck', 'cs');

