-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmt_promote_popup_options', 'mmt_promote_slidein_options', 'evo_promote_embed_options', 'evcal_options_evcal_promote', 'evcal_options_evcal_1', 'evcal_options_evcal_2', 'evo_tax_meta');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

