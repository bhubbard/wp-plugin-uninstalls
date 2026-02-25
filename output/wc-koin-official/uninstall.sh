#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_koin_settings_status'
wp option delete 'wc_koin_settings_override_number_fields'
wp option delete 'wc_koin_settings_override_document_fields'
wp option delete 'wc_koin_settings_transacting_countries'
wp option delete 'wc_koin_settings_environment'
wp option delete 'wc_koin_settings_code'
wp option delete 'wc_koin_settings_account'
wp option delete 'wc_koin_settings_custom_document_field'
wp option delete 'wc_koin_settings_sync'
wp option delete 'wc_koin_settings_my_account'
wp option delete 'wc_koin_settings_secret_key'
wp option delete 'wc_koin_settings_org_id'
wp option delete 'koin_settings_compatibility'
wp option delete 'wko_koin_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_email_footer_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_koin_blank_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_koin_blank_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_koin_blank_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_koin_blank_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc-koin-official_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc-koin-official_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc-koin-official_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc-koin-official_order_id'"
