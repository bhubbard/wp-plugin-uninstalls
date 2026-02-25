-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lexiwbs_cod_restriction_enabled', 'lexiwbs_cod_min_total', 'lexiwbs_cod_max_total');

