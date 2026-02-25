#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_public_ai_tools_task'
wp option delete 'enable_ai_tools_logs'
wp option delete 'openai_tools_comment_count'
wp option delete 'openai_tools_review_count'
wp option delete 'custom_openai_domain'
wp option delete 'deepseek_api_key'
wp option delete 'siliconflow_api_key'
wp option delete 'groq_api_key'
wp option delete 'openai_api_key'
wp option delete 'woocommerce_webhook_deliver_async_disable'
wp option delete 'enable_xml_feeds_generator'
wp option delete 'openai_token'
wp option delete 'siliconflow_custom_model'
wp option delete 'openai_language'
wp option delete 'review_feeds_default_brand'
wp option delete 'ai_tools_default_model'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
