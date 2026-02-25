#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tuta_store_url'
wp option delete 'tuta_store_id'
wp option delete 'tuta_onboarding_steps_completed'
wp option delete 'tuta_onboarding_step'
wp option delete 'tuta_onboarding_status'
wp option delete 'tuta_onboarding_never_show'
wp option delete 'tuta_selected_plan'
wp option delete 'tuta_current_plan_name'
wp option delete 'tuta_last_products_sync'
wp option delete 'tuta_selected_pages'
wp option delete 'tuta_last_pages_sync'
wp option delete 'tuta_web_chat_enabled'
wp option delete 'tuta_web_chat_position'
wp option delete 'tuta_web_chat_primary_color'
wp option delete 'tuta_web_chat_welcome_message'
wp option delete 'tuta_web_chat_size'
wp option delete 'tuta_whatsapp_status'
wp option delete 'tuta_current_plan'
wp option delete 'tuta_store_status'
wp option delete 'tuta_api_key'
wp option delete 'tuta_last_products_sync_time'
wp option delete 'tuta_last_pages_sync_time'
wp option delete 'tuta_api_url'
wp option delete 'tuta_edge_function_domain'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'tuta_access_token'
wp transient delete 'tuta_subscription_success'
wp transient delete 'tuta_subscription_error'
wp transient delete 'tuta_plan_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tuta_pending_cart_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tuta_pending_cart_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tuta_pending_cart_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tuta_pending_cart_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tuta_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tuta_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tuta_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tuta_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tuta_generated_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tuta_generated_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tuta_generated_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tuta_generated_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tuta_visitor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tuta_visitor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tuta_visitor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tuta_visitor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tuta_visit_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tuta_visit_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tuta_visit_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tuta_visit_time'"
