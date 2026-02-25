-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qb_mm_enabled', 'qb_mm_style', 'qb_mm_title', 'qb_mm_message', 'qb_mm_logo_id');

