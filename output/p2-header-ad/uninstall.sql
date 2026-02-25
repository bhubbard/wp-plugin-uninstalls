-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p2HeaderCode', 'p2HeaderAdDisplayOption', 'p2HeaderShowAfterContent', 'p2HeaderShowOnFrontPage', 'p2HeaderPriority', 'p2HeaderShowOnFrontpage');

