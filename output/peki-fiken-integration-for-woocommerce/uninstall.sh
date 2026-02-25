#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fiken_webhook_secret'
wp option delete 'pekifiken_subscription_state'
wp option delete 'pekifiken_employee_token'
wp option delete 'pekifiken_refresh_token'
wp option delete 'pekifiken_connection_id'
wp option delete 'pekifiken_company_slug'
wp option delete 'pekifiken_has_active_subscription'
wp option delete 'pekifiken_sync_last'
wp option delete 'pekifiken_quota_remaining'
wp option delete 'pekifiken_quota_limit'
wp option delete 'pekifiken_quota_used'
wp option delete 'fiken_employee_token'
wp option delete 'wfb_employee_token'
wp option delete 'pekifiken_transfers_used'
wp option delete 'pekifiken_transfers_limit'
wp option delete 'pekifiken_auto_upgrade_enabled'
wp option delete 'pekifiken_transfers_reset'
wp option delete 'pekifiken_plan'
wp option delete 'pekifiken_cancel_at_period_end'
wp option delete 'pekifiken_next_renewal'
wp option delete 'fiken_company_slug'
wp option delete 'wfb_company_slug'
wp option delete 'pekifiken_bank_account_map'
wp option delete 'fiken_gateway_cash_map'
wp option delete 'fiken_used_count'
wp option delete 'fiken_auto_save_invoice_pdf'
wp option delete 'pekifiken_bank_slot_map'
wp option delete 'fiken_shipping_income_account'
wp option delete 'fiken_blocked_non_vat_company'
wp option delete 'fiken_last_status'
wp option delete 'fiken_force_no_vat'
wp option delete 'fiken_cash_behavior_enabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pekifiken_connect_state_%' OR option_name LIKE '_site_transient_pekifiken_connect_state_%'"
wp transient delete 'pekifiken_notice_check'
wp transient delete 'pekifiken_state_throttle'
wp transient delete 'pekifiken_last_remote_error'
wp transient delete 'fiken_status_cache'

# Clear Cron Jobs
wp cron event delete 'pekifiken_cron_refresh_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fiken_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fiken_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fiken_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fiken_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fiken_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fiken_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fiken_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fiken_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pekifiken_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pekifiken_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pekifiken_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pekifiken_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fiken_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fiken_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fiken_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fiken_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fiken_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fiken_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fiken_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fiken_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fiken_invoice_pdf_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fiken_invoice_pdf_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fiken_invoice_pdf_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fiken_invoice_pdf_id'"
