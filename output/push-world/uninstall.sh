#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sunrise_defaults_%'"
wp option delete 'pushworld_protocol'
wp option delete 'pushworld_abandoned_timeout'
wp option delete 'pushworld_default_title'
wp option delete 'pushworld_default_text'
wp option delete 'pushworld_default_duration'
wp option delete 'pushworld_default_life_time'
wp option delete 'pushworld_default_url'
wp option delete 'pushworld_default_icon'
wp option delete 'pushworld_client_id'
wp option delete 'pushworld_client_secret'
wp option delete 'pushworld_platform_code'
wp option delete 'pushworld_embed_code'
wp option delete 'pushworld_woocommerce_enable'

# Clear Cron Jobs
wp cron event delete 'cron_check_abandoned'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pw_device_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pw_device_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pw_device_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pw_device_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_method_title'"
