#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooei_version'
wp option delete 'wooei_customizations'
wp option delete 'wooei_invoice_type'
wp option delete 'wooei_invoice_filename_format'
wp option delete 'wooei_invoice_attach_invoice'
wp option delete 'wooei_invoice_attach'
wp option delete 'wooei_company_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_customizations'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_override_last_invoice_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_invoice_number'"
wp option delete 'wooei_id_type'
wp option delete 'wooei_id_company'
wp option delete 'wooei_shop_phone'
wp option delete 'wooei_shop_email'
wp option delete 'wooei_id_vat'
wp option delete 'wooei_msic_code'
wp option delete 'wooei_msic_name'
wp option delete 'wooei_numbering_strategy'
wp option delete 'wooei_generate_pending_invoices'
wp option delete 'wooei_invoice_reset_number'
wp option delete 'wooei_invoice_number_padding'
wp option delete 'wooei_invoice_number_format'
wp option delete 'wooei_last_invoice_number'
wp option delete 'wooei_last_invoice_date'
wp option delete 'woocommerce_weight_unit'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wooei_just_activated'
wp transient delete 'wooei_just_upgraded'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooei_commodity_classification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooei_commodity_classification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooei_commodity_classification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooei_commodity_classification'"
