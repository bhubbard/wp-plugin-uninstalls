-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scd_free_cancel', 'scd_currency_options', 'scd_role_options', 'scd_general_options', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_currency', 'woocommerce_currency_pos', 'scd_first_install_date', 'scd_activation_notif_sent', 'scd_deactivation_notif_sent', 'widget_scd_widget', 'scd_rates_OpenEx', 'scd-admin-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('scd_form_textpopup', 'scd_other_options', 'scd-user-currency');
DELETE FROM wp_usermeta WHERE meta_key IN ('scd_form_textpopup', 'scd_other_options', 'scd-user-currency');
DELETE FROM wp_termmeta WHERE meta_key IN ('scd_form_textpopup', 'scd_other_options', 'scd-user-currency');
DELETE FROM wp_commentmeta WHERE meta_key IN ('scd_form_textpopup', 'scd_other_options', 'scd-user-currency');

