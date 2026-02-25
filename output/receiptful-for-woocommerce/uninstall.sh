#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'receiptful_widgets'
wp option delete 'receiptful_public_user_key'
wp option delete '_receiptful_queue'
wp option delete 'receiptful_debug_mode_enabled'
wp option delete '_receiptful_resend_queue'
wp option delete 'receiptful_api_key'
wp option delete 'receiptful_woocommerce_version'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'receiptful_suppress_wc_processing_email'
wp option delete 'receiptful_suppress_wc_completed_email'
wp option delete 'receiptful_enable_search'
wp option delete 'receiptful_enable_recommendations'
wp option delete 'receiptful_enable_feedback_widgets'
wp option delete 'receiptful_marketing_optin'
wp option delete 'receiptful_marketing_optin_text'
wp option delete 'receiptful_completed_initial_product_sync'
wp option delete 'receiptful_completed_initial_receipt_sync'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_version'
wp option delete 'receiptful_enable_abandoned_cart'

# Clear Cron Jobs
wp cron event delete 'receiptful_check_resend'
wp cron event delete 'receiptful_initial_product_sync'
wp cron event delete 'receiptful_initial_receipt_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_receiptful_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_receiptful_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_receiptful_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_receiptful_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_receiptful_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_receiptful_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_receiptful_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_receiptful_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_receiptful_web_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_receiptful_web_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_receiptful_web_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_receiptful_web_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_receiptful_receipt_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_receiptful_receipt_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_receiptful_receipt_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_receiptful_receipt_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
