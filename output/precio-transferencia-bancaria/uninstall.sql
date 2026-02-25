-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptb_text_transferencia_price_html', 'at_text_transferencia_price_html');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('transferencia_price_field_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('transferencia_price_field_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('transferencia_price_field_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('transferencia_price_field_at');

