#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ai_chatbot_api_url'
wp option delete 'wp_ai_chatbot_api_key'
wp option delete 'wp_ai_chatbot_title'
wp option delete 'wp_ai_chatbot_position'
wp option delete 'wp_ai_chatbot_theme'
wp option delete 'unishine_shop_assist_api_url'
wp option delete 'unishine_shop_assist_api_key'
wp option delete 'unishine_shop_assist_title'
wp option delete 'unishine_shop_assist_position'
wp option delete 'unishine_shop_assist_theme'

