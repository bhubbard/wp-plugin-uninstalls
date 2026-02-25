#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wfic_device_code'
wp option delete 'wfic_api_key_fattureincloud'
wp option delete 'wfic_refresh_token'
wp option delete 'wfic_id_azienda'
wp option delete 'api_uid_fattureincloud'
wp option delete 'woo-fattureincloud-anno-fatture'
wp option delete 'fattureincloud_send_choice'
wp option delete 'fattureincloud_auto_save'
wp option delete 'fattureincloud_paid'
wp option delete 'activate_customer_receipt'
wp option delete 'show_short_descr'
wp option delete 'disable_cf_required'
wp option delete 'count_load_time_woo_fattureincloud'
wp option delete 'woo_fattureincloud_order_id'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'fattureincloud_autosent_id_fallito'
wp option delete 'fattureincloud_autosent_id_successo'
wp option delete 'wfic_nome_azienda'
wp option delete 'update_customer_registry'
wp option delete 'fattureincloud_partiva_codfisc'
wp option delete 'api_key_fattureincloud'
wp option delete 'delete_autosave_fattureincloud'

# Delete Transients
wp transient delete 'wfic_check_block_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_fattureincloud_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_fattureincloud_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_fattureincloud_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_fattureincloud_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_fattureincloud_notice_maybe_delay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_fattureincloud_notice_maybe_delay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_fattureincloud_notice_maybe_delay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_fattureincloud_notice_maybe_delay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_cod_fisc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_cod_fisc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_cod_fisc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_cod_fisc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_partita_iva'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_partita_iva'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_partita_iva'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_partita_iva'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_pec_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_pec_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_pec_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_pec_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_codice_destinatario'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_codice_destinatario'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_codice_destinatario'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_codice_destinatario'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woorichiestaricevuta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woorichiestaricevuta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woorichiestaricevuta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woorichiestaricevuta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_cod_fisc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_cod_fisc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_cod_fisc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_cod_fisc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_partita_iva'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_partita_iva'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_partita_iva'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_partita_iva'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_pec_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_pec_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_pec_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_pec_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_codice_destinatario'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_codice_destinatario'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_codice_destinatario'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_codice_destinatario'"
