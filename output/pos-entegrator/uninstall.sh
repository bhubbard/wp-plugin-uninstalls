#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gpos_settings'
wp option delete 'gpos_submenu_pages'
wp option delete 'gpos_clear_export_dir_failed'
wp option delete 'gpos_default_account'
wp option delete 'gpos_db_version'
wp option delete 'gpos_callback_test_status'

# Clear Cron Jobs
wp cron event delete 'gpos_success_transaction_notification'
wp cron event delete 'gpos_error_transaction_notification'
wp cron event delete 'gpos_daily_transaction_notification'
wp cron event delete 'gpos_weekly_transaction_notification'
wp cron event delete 'gpos_clear_redirect_table'
wp cron event delete 'gpos_clear_export_dir'
wp cron event delete 'gpos_garbage_collector'
wp cron event delete 'gpos_delete_session_meta'
wp cron event delete 'gpos_transaction_check_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpos_hide_rating_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpos_hide_rating_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpos_hide_rating_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpos_hide_rating_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpos_gateway_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpos_gateway_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpos_gateway_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpos_gateway_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpos_is_installments_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpos_is_installments_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpos_is_installments_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpos_is_installments_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpos_extra_installments_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpos_extra_installments_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpos_extra_installments_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpos_extra_installments_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpos_installments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpos_installments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpos_installments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpos_installments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_type'"
