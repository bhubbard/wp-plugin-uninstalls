-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emb_divider', 'emb_class', 'emb_customfield', 'emb_input', 'emb_home', 'emb_frontpage');

