#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beucw_api_request_created_status'
wp option delete 'beucw_ai_default_check'
wp option delete 'beucw_default_ai_prompt'
wp option delete 'beucw_all_products'
wp option delete 'beucw_products_name'
wp option delete 'beucw_products_desc'
wp option delete 'beucw_ai_prompt_type'
wp option delete 'beucw_display_ai_request_notice'
wp option delete 'beucw_api_valid_key_status'
wp option delete 'beucw_prompt_request_button_hit'
wp option delete 'beucw_api_error_data'
wp option delete 'beucw_product_selected_options'
wp option delete 'beucw_about_store'
wp option delete 'beucw_product_list'
wp option delete 'test'
wp option delete 'beucw_openai_api_key'
wp option delete 'beucw_api_model_name'
wp option delete 'beucw_current_ai_request'
wp option delete 'beucw_tokens_used'
wp option delete 'beucw_ai_request_logs'
wp option delete 'response_ai'
wp option delete 'beucw_last_notice'
wp option delete 'beucw_latest_popup_sale_notice'
wp option delete 'beucw_ai_request_prompt'
wp option delete 'samit_test_taxonomy_start'
wp option delete 'beucw_api_usage_status'
wp option delete 'beucw_openai_api_model'

# Delete Transients
wp transient delete 'beucw_set_model_names'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beucw_latest_version_read_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beucw_latest_version_read_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beucw_latest_version_read_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beucw_latest_version_read_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related_products_individual_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related_products_individual_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related_products_individual_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related_products_individual_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beucw_rate_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beucw_rate_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beucw_rate_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beucw_rate_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beucw_notices_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beucw_notices_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beucw_notices_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beucw_notices_time'"
