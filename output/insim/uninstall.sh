#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'solo_sms_key'
wp option delete 'solo_sms_email'
wp option delete 'setting_change'
wp option delete 'phone_admin'
wp option delete 'isConnectedToInsim'
wp option delete 'insim_filter_usage'
wp option delete 'insim_campaign_stats'
wp option delete 'sim_to_shop_admin_alert'
wp option delete 'sim_to_shop_admin_alert_sent'
wp option delete 'sim_to_shop_freeoption'
wp option delete 'sim_to_shop_option_id_product'
wp option delete 'sim_to_shop_admin_phone'
wp option delete 'solo_sms_sender'
wp option delete 'is_team'
wp option delete 'is_premium'
wp option delete 'recipients'
wp option delete 'Sim_To_Shop_freeoption'
wp option delete 'subsc_type'

# Clear Cron Jobs
wp cron event delete 'sim_to_shop_event_daily_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insim_filter_presets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insim_filter_presets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insim_filter_presets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insim_filter_presets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_lastname'"
