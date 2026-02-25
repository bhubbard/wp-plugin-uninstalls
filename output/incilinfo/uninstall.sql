-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('incilinfo_aracipucu', 'incilinfo_yenipencere');

