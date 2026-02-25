#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rocket_exclude_js'
wp option delete 'rocket_exclude_defer_js'
wp option delete 'rocket_delay_js_exclusions'
wp option delete 'autoptimize_js_exclude'
wp option delete 'litespeed.conf.optm-js_excludes'
wp option delete 'litespeed.conf.optm-js_defer_excludes'
wp option delete 'wpo_minify_js_excludes'
wp option delete 'wpo_minify_js_noptimize'
wp option delete 'dori-chatbot-onboarding-completed'
wp option delete 'dori-chatbot-integrate'
wp option delete 'dori-chatbot-sharing-id'
wp option delete 'dori-chatbot-client-id'
wp option delete 'dori-chatbot-temp-user-id'
wp option delete 'dori-chatbot-user-phone'
wp option delete 'dori-chatbot-client-secret'
wp option delete 'dori-chatbot-wc-consumer-key'
wp option delete 'dori-chatbot-wc-consumer-secret'
wp option delete 'dori-chatbot-version'
wp option delete 'dori_chatbot_auto_update'
wp option delete 'dori_chatbot_last_update'
wp option delete 'dori_chatbot_update_error'
wp option delete 'dori_chatbot_last_update_check'

# Delete Transients
wp transient delete 'dori-chatbot-extract-response-data'
wp transient delete 'dori-chatbot-bot-creation-retries'
wp transient delete 'dori-chatbot-bot-creation-status'
wp transient delete 'dori_chatbot_product_count'
wp transient delete 'dori-chatbot-bot-creation-error'
wp transient delete 'dori_chatbot_cache'

# Clear Cron Jobs
wp cron event delete 'dori_chatbot_send_order_data'
wp cron event delete 'dori_chatbot_send_cart_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dori_thread_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dori_thread_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dori_thread_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dori_thread_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dori_current_thread_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dori_current_thread_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dori_current_thread_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dori_current_thread_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dori_session_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dori_session_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dori_session_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dori_session_key'"
