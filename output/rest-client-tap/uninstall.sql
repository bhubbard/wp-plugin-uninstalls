-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TAP_BOOKIES', 'TAP_DEPORTES', 'TAP_COMPETICIONES');

