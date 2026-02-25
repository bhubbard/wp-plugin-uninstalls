#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'efe-fatturazione-elettronica-abilitata'
wp option delete 'efe-delete-options'
wp option delete 'efe-pad-num-fattura'
wp option delete 'efe-denominazione-soggetto'
wp option delete 'efe-codice-fornitore'
wp option delete 'efe-cf-fornitore'
wp option delete 'efe-regime-fiscale-fornitore'
wp option delete 'efe-tipo-documento-fatture'
wp option delete 'efe-nome-ditta-fornitore'
wp option delete 'efe-nome-fornitore'
wp option delete 'efe-cognome-fornitore'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'efe-counter-fattura'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_default_country'
wp option delete 'efe-provider-selected'
wp option delete 'efe-nota-credito-periodo-fatt'
wp option delete 'efe-layout'
wp option delete 'efe-fa-ri-abilitati'
wp option delete 'efe-pi-cf-abilitati'
wp option delete 'efe-counter-ricevuta'
wp option delete 'efe-abilita-soggetto'
wp option delete 'efe-counter-nota-credito'
wp option delete 'efe-license'
wp option delete 'efe-token'
wp option delete 'efe-app-pin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efe_partitaiva_codicefiscale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efe_partitaiva_codicefiscale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efe_partitaiva_codicefiscale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efe_partitaiva_codicefiscale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efe_privato_azienda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efe_privato_azienda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efe_privato_azienda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efe_privato_azienda'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efe_fattura_ricevuta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efe_fattura_ricevuta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efe_fattura_ricevuta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efe_fattura_ricevuta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efe_codice_pec'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efe_codice_pec'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efe_codice_pec'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efe_codice_pec'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efe_data_fattura'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efe_data_fattura'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efe_data_fattura'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efe_data_fattura'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping'"
