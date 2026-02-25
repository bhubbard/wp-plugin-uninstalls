#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bokio_webhook_secret'
wp option delete 'pekibokio_refresh_token'
wp option delete 'pekibokio_employee_token'
wp option delete 'bokio_employee_token'
wp option delete 'pekibokio_subscription_state'
wp option delete 'pekibokio_has_active_subscription'
wp option delete 'pekibokio_plan'
wp option delete 'pekibokio_next_renewal'
wp option delete 'bokio_last_status'
wp option delete 'pekibokio_connection_id'
wp option delete 'pekibokio_company_slug'
wp option delete 'pekibokio_sync_last'
wp option delete 'wfb_employee_token'
wp option delete 'pekibokio_transfers_used'
wp option delete 'pekibokio_transfers_limit'
wp option delete 'pekibokio_transfers_reset'
wp option delete 'pekibokio_cancel_at_period_end'
wp option delete 'pekibokio_auto_upgrade_enabled'
wp option delete 'pekibokio_company_id'
wp option delete 'bokio_company_slug'
wp option delete 'bokio_used_count'
wp option delete 'bokio_auto_save_invoice_pdf'
wp option delete 'pekibokio_bank_slot_map'
wp option delete 'bokio_shipping_income_account'
wp option delete 'bokio_company_id'
wp option delete 'bokio_status'
wp option delete 'bokio_plan'
wp option delete 'bokio_used_month'
wp option delete 'bokio_refresh_token'
wp option delete 'bokio_force_no_vat'
wp option delete 'bokio_cash_behavior_enabled'
wp option delete 'pekibokio_bank_account_map'
wp option delete 'bokio_gateway_cash_map'
wp option delete 'wfb_company_slug'
wp option delete 'pekibokio_product_id'
wp option delete 'bokio_product_id'

# Delete Transients
wp transient delete 'bokio_status_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pekibokio_connect_state_%' OR option_name LIKE '_site_transient_pekibokio_connect_state_%'"
wp transient delete 'pekibokio_state_throttle'
wp transient delete 'pekibokio_last_remote_error'

# Clear Cron Jobs
wp cron event delete 'pekibokio_cron_refresh_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bokio_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bokio_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bokio_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bokio_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bokio_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bokio_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bokio_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bokio_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bokio_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bokio_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bokio_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bokio_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bokio_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bokio_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bokio_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bokio_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bokio_invoice_pdf_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bokio_invoice_pdf_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bokio_invoice_pdf_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bokio_invoice_pdf_id'"
