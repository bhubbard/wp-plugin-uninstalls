-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intochat_display_method', 'intochat_default_id', 'intochat_embed_transient_data');

