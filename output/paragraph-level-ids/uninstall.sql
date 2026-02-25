-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rs_para_ids_enabled', 'rs_para_id_prefix', 'rs_anchor_enabled', 'rs_anchor_prefix', 'rs_styling_enabled');

