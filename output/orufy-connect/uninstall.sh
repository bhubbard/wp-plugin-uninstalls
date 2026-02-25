#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'orufy_connect_appid'
wp option delete 'orufy_connect_whatsapp_api_key'
wp option delete 'orufy_connect_whatsapp_api_secret'
wp option delete 'orufy_whatsapp_api_response'
wp option delete 'orufy_template_status_selections'

