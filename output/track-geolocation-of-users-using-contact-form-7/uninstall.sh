#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfgeo_webhook_enabled'
wp option delete 'cfgeo_webhook_urls'
wp option delete 'cfgeo_webhook_secret'
wp option delete 'cfgeo_webhook_timeout'
wp option delete 'cfgeo_webhook_logs'
wp option delete 'cfgeo_google_api_key'
wp option delete 'cfgeo_color_picker'
wp option delete 'cfgeo_activation_redirect'
wp option delete 'cfgeo_debug_mode'
wp option delete 'cfgeo_ipstack_access'

# Clear Cron Jobs
wp cron event delete 'cfgeo_send_webhook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfgeo-country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfgeo-country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfgeo-country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfgeo-country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfgeo-state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfgeo-state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfgeo-state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfgeo-state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfgeo-city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfgeo-city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfgeo-city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfgeo-city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfgeo-lat-long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfgeo-lat-long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfgeo-lat-long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfgeo-lat-long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfgeo-api-used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfgeo-api-used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfgeo-api-used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfgeo-api-used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfgeo-debug-ipstack'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfgeo-debug-ipstack'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfgeo-debug-ipstack'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfgeo-debug-ipstack'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfgeo-debug-ipapi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfgeo-debug-ipapi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfgeo-debug-ipapi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfgeo-debug-ipapi'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfgeo-debug-keycdn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfgeo-debug-keycdn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfgeo-debug-keycdn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfgeo-debug-keycdn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_id'"
