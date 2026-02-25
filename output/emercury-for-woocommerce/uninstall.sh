#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_settings_tab_emercury_api_key'
wp option delete 'wc_settings_tab_emercury_email'
wp option delete 'wc_settings_tab_emercury_section_audiences'
wp option delete 'wc_marketing_settings_tab_emercury_checkbox'
wp option delete 'wc_marketing_settings_tab_emercury_section_checkbox_title'
wp option delete 'wc_marketing_settings_tab_emercury_section_audiences'
wp option delete 'wc_settings_tab_emercury_force_campaign_enable'
wp option delete 'wc_settings_tab_emercury_force_campaign_automation_id'
wp option delete 'wc_settings_tab_emercury_force_campaign_list_id'

# Delete Transients
wp transient delete 'wc_marketing_settings_updated'

# Clear Cron Jobs
wp cron event delete 'woocommerce_emercury_ac_send_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
