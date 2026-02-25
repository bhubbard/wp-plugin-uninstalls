-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_referrer_link_ping_strings', 'seo_referrer_link_ping_version');

