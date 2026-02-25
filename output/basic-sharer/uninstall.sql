-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basic_sharer_facebook', 'basic_sharer_twitter', 'basic_sharer_linkedin', 'basic_sharer_bluesky', 'basic_sharer_whatsapp');

