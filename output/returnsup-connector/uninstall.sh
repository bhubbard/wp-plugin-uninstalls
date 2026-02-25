#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'returnsup_needs_webhook_setup'
wp option delete 'returnsup_webhook_ids'
wp option delete 'returnsup_webhook_id'
wp option delete 'returnsup_enable_account_menu'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_default_country'
wp option delete 'returnsup_connection_key'
wp option delete 'returnsup_connection_secret'
wp option delete 'returnsup_consumer_secret'
wp option delete 'wooreturns_setup_step'
wp option delete 'wooreturns_consumer_key'
wp option delete 'wooreturns_api_error'
wp option delete 'wooreturns_request_data'
wp option delete 'wooreturns_request_timestamp'
wp option delete 'wooreturns_request_id'
wp option delete 'woocommerce_wooreturns_free_exchange_settings'
wp option delete 'wooreturns_connection_key'
wp option delete 'returnsup_key_migrated'

# Clear Cron Jobs
wp cron event delete 'returnsupc_create_webhook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_returnsup_refund_in_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_returnsup_refund_in_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_returnsup_refund_in_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_returnsup_refund_in_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_returnsup_credit_note_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_returnsup_credit_note_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_returnsup_credit_note_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_returnsup_credit_note_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_returnsup_credit_note_generated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_returnsup_credit_note_generated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_returnsup_credit_note_generated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_returnsup_credit_note_generated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_returnsup_unified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_returnsup_unified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_returnsup_unified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_returnsup_unified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_returnsup_return_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_returnsup_return_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_returnsup_return_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_returnsup_return_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooreturns_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooreturns_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooreturns_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooreturns_lang'"
