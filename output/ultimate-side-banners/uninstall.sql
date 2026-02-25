-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lon', 'lban_attachment_id', 'lurl', 'ron', 'rban_attachment_id', 'rurl', 'topoffset', 'bwidth', 'tab', 'mode', 'hideon');

