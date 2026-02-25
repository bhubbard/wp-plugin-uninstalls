-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('likejs_url', 'likejs_backlink', 'likejs_headline', 'likejs_px');

