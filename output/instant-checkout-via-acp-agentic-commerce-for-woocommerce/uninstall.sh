#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icvaac_api_enabled'
wp option delete 'icvaac_test_mode'
wp option delete 'icvaac_stripe_publishable_key'
wp option delete 'icvaac_stripe_secret_key'
wp option delete 'icvaac_openai_api_key'
wp option delete 'icvaac_webhook_secret'
wp option delete 'icvaac_enable_logging'

# Delete Transients
wp transient delete 'icvaac_product_feed_cache'

# Clear Cron Jobs
wp cron event delete 'icvaac_update_product_feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_payment_intent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_payment_intent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_payment_intent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_payment_intent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icvaac_test_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icvaac_test_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icvaac_test_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icvaac_test_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icvaac_enable_chatgpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icvaac_enable_chatgpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icvaac_enable_chatgpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icvaac_enable_chatgpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_request_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_request_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_request_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_request_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_line_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_line_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_line_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_line_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_totals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_totals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_totals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_totals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_fulfillment_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_fulfillment_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_fulfillment_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_fulfillment_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_selected_fulfillment_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_selected_fulfillment_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_selected_fulfillment_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_selected_fulfillment_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acp_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acp_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acp_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acp_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
