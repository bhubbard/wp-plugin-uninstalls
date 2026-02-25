-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rankyak_embed_key', 'rankyak_activation_redirect', 'rankyak_notices');

