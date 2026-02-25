#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'einvmylhdn_api_key'
wp option delete 'einvmylhdn_api_secret'
wp option delete 'einvmylhdn_myinvois_tin'
wp option delete 'einvmylhdn_company_name'
wp option delete 'einvmylhdn_company_email'
wp option delete 'einvmylhdn_company_phone'
wp option delete 'einvmylhdn_identification_number'
wp option delete 'einvmylhdn_identification_scheme'
wp option delete 'einvmylhdn_tin'
wp option delete 'einvmylhdn_sst_registration'
wp option delete 'einvmylhdn_tourism_tax_registration'
wp option delete 'einvmylhdn_industry_classification_code'
wp option delete 'einvmylhdn_industry_classification_name'
wp option delete 'einvmylhdn_street_address'
wp option delete 'einvmylhdn_city_name'
wp option delete 'einvmylhdn_state_code'
wp option delete 'einvmylhdn_postal_zone'
wp option delete 'einvmylhdn_country_code'
wp option delete 'einvmylhdn_enable_logging'
wp option delete 'einvmylhdn_default_classification_code'

# Clear Cron Jobs
wp cron event delete 'einvmylhdn_process_pending_invoices'
wp cron event delete 'einvmylhdn_expire_old_invoices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'einvoice_id_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'einvoice_id_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'einvoice_id_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'einvoice_id_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'einvoice_id_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'einvoice_id_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'einvoice_id_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'einvoice_id_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'einvoice_tin_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'einvoice_tin_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'einvoice_tin_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'einvoice_tin_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'einvoice_sst_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'einvoice_sst_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'einvoice_sst_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'einvoice_sst_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_einvmylhdn_use_global_classification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_einvmylhdn_use_global_classification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_einvmylhdn_use_global_classification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_einvmylhdn_use_global_classification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_einvmylhdn_classification_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_einvmylhdn_classification_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_einvmylhdn_classification_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_einvmylhdn_classification_code'"
