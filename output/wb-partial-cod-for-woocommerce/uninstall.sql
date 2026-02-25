-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woobooster_partial_cod_enabled', 'woobooster_partial_cod_title_text', 'woobooster_partial_cod_amount', 'woobooster_partial_cod_amount_type', 'woobooster_partial_cod_extra_fees_enabled', 'woobooster_partial_cod_extra_fees', 'woobooster_partial_cod_extra_fees_title', 'woocommerce_tax_class', 'woobooster_partial_cod_extra_fees_tax');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('restrict_partial_cod', 'only_partial_cod');
DELETE FROM wp_usermeta WHERE meta_key IN ('restrict_partial_cod', 'only_partial_cod');
DELETE FROM wp_termmeta WHERE meta_key IN ('restrict_partial_cod', 'only_partial_cod');
DELETE FROM wp_commentmeta WHERE meta_key IN ('restrict_partial_cod', 'only_partial_cod');

