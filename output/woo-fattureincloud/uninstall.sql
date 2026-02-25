-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfic_device_code', 'wfic_api_key_fattureincloud', 'wfic_refresh_token', 'wfic_id_azienda', 'api_uid_fattureincloud', 'woo-fattureincloud-anno-fatture', 'fattureincloud_send_choice', 'fattureincloud_auto_save', 'fattureincloud_paid', 'activate_customer_receipt', 'show_short_descr', 'disable_cf_required', 'count_load_time_woo_fattureincloud', 'woo_fattureincloud_order_id', 'woocommerce_prices_include_tax', 'fattureincloud_autosent_id_fallito', 'fattureincloud_autosent_id_successo', 'wfic_nome_azienda', 'update_customer_registry', 'fattureincloud_partiva_codfisc', 'api_key_fattureincloud', 'delete_autosave_fattureincloud', 'wfic_check_block_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_fattureincloud_notice_dismissed', 'woo_fattureincloud_notice_maybe_delay', 'billing_cod_fisc', 'billing_partita_iva', 'billing_pec_email', 'billing_codice_destinatario', 'woorichiestaricevuta', '_billing_cod_fisc', '_billing_partita_iva', '_billing_pec_email', '_billing_codice_destinatario');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_fattureincloud_notice_dismissed', 'woo_fattureincloud_notice_maybe_delay', 'billing_cod_fisc', 'billing_partita_iva', 'billing_pec_email', 'billing_codice_destinatario', 'woorichiestaricevuta', '_billing_cod_fisc', '_billing_partita_iva', '_billing_pec_email', '_billing_codice_destinatario');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_fattureincloud_notice_dismissed', 'woo_fattureincloud_notice_maybe_delay', 'billing_cod_fisc', 'billing_partita_iva', 'billing_pec_email', 'billing_codice_destinatario', 'woorichiestaricevuta', '_billing_cod_fisc', '_billing_partita_iva', '_billing_pec_email', '_billing_codice_destinatario');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_fattureincloud_notice_dismissed', 'woo_fattureincloud_notice_maybe_delay', 'billing_cod_fisc', 'billing_partita_iva', 'billing_pec_email', 'billing_codice_destinatario', 'woorichiestaricevuta', '_billing_cod_fisc', '_billing_partita_iva', '_billing_pec_email', '_billing_codice_destinatario');

