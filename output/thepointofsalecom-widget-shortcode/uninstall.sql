-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tposguten_org', 'tposguten_theme', 'tposguten_lang', 'tposguten_main_color', 'tposguten_ticket_agency', 'org', 'theme', 'lang', 'mainColor');

