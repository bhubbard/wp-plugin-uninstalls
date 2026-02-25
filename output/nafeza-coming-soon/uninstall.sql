-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nafeza_coming_soon_active', 'nafeza_coming_soon_page_id', 'nafeza_coming_soon_message');

