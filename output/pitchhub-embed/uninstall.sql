-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pitchhub_embed_general', 'pitchhub_embed_shortcode', 'pitchhub_embed_shortcode_admin', 'pitchhub_embed_shortcode_site', 'pitchhub_embed_version');

