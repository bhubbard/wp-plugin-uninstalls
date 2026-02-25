#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ondcsellerapp_onboarding'
wp option delete 'ondcsellerapp_settings'
wp option delete 'ondcsellerapp_env_veriables'
wp option delete 'ondcsellerapp_enable_message_queue'
wp option delete 'ondcsellerapp_subscription_request_type'

# Delete Transients
wp transient delete '_ondc_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'ondcsellerapp_message_schedule_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ondcsellerapp_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ondcsellerapp_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ondcsellerapp_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ondcsellerapp_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ondcsellerapp_product_sub_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ondcsellerapp_product_sub_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ondcsellerapp_product_sub_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ondcsellerapp_product_sub_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ondcsellerapp_product_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ondcsellerapp_product_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ondcsellerapp_product_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ondcsellerapp_product_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
