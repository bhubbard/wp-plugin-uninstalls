-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('soundfaith_embed_sermon_options', 'soundfaith_embed_profile_options');

