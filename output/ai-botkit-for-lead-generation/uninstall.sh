#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_botkit_chatbot_sitewide_enabled'
wp option delete 'ai_botkit_post_sync_settings'
wp option delete 'ai_botkit_saas_connect_token'
wp option delete 'ai_botkit_banned_keywords'
wp option delete 'ai_botkit_blocked_ips'
wp option delete 'ai_botkit_chatbot_enabled_pages'
wp option delete 'ai_botkit_setup_completed'
wp option delete 'ai_botkit_version'

# Delete Transients
wp transient delete 'ai_botkit_onboarding_nonce'
wp transient delete '_ai_botkit_activation_redirect'

