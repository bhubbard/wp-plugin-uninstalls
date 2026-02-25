-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccf_cod_fee_enabled', 'wccf_cod_fee_label', 'wccf_cod_fee_type', 'wccf_cod_fee_amount', 'wccf_cod_fee_min_total');

