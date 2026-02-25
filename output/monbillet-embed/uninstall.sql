-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('monbillet_embed_field_twig_sandbox', 'monbillet_embed_field_api_token', 'monbillet_embed_field_api_cache_duration');

