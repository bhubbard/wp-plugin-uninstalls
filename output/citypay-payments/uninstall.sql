-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_citypay_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('AccountNo', 'CityPay Paylink Token', 'CityPay TransNo', 'CityPay Identifier', 'Card used', '_cp_attrib_authcode', '_cp_attrib_amount_display', '_cp_attrib_authorised_display', '_cp_attrib_card_scheme', '_cp_attrib_name_on_card', '_cp_attrib_masked_pan', '_cp_attrib_transno', '_cp_attrib_datetime_iso', '_cp_attrib_datetime_display');
DELETE FROM wp_usermeta WHERE meta_key IN ('AccountNo', 'CityPay Paylink Token', 'CityPay TransNo', 'CityPay Identifier', 'Card used', '_cp_attrib_authcode', '_cp_attrib_amount_display', '_cp_attrib_authorised_display', '_cp_attrib_card_scheme', '_cp_attrib_name_on_card', '_cp_attrib_masked_pan', '_cp_attrib_transno', '_cp_attrib_datetime_iso', '_cp_attrib_datetime_display');
DELETE FROM wp_termmeta WHERE meta_key IN ('AccountNo', 'CityPay Paylink Token', 'CityPay TransNo', 'CityPay Identifier', 'Card used', '_cp_attrib_authcode', '_cp_attrib_amount_display', '_cp_attrib_authorised_display', '_cp_attrib_card_scheme', '_cp_attrib_name_on_card', '_cp_attrib_masked_pan', '_cp_attrib_transno', '_cp_attrib_datetime_iso', '_cp_attrib_datetime_display');
DELETE FROM wp_commentmeta WHERE meta_key IN ('AccountNo', 'CityPay Paylink Token', 'CityPay TransNo', 'CityPay Identifier', 'Card used', '_cp_attrib_authcode', '_cp_attrib_amount_display', '_cp_attrib_authorised_display', '_cp_attrib_card_scheme', '_cp_attrib_name_on_card', '_cp_attrib_masked_pan', '_cp_attrib_transno', '_cp_attrib_datetime_iso', '_cp_attrib_datetime_display');

