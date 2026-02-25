#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbiztextwc_placeholders'
wp option delete 'wpbiztextwc_placeholders_fixed'
wp option delete 'wpbiztextwc_enable_status_changes_chbx'
wp option delete 'wpbiztextwc_enable_status_changes_admin_chbx'
wp option delete 'wpbiztextwc_hidden_field'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notif_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbiztextwc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_txtarea'"
wp option delete 'wpbiztextwc_add_mobile_field'
wp option delete 'wpbiztextwc_mobile_field_info'
wp option delete 'wpbiztextwc_mobile_field_requried'
wp option delete 'wpbiztextwc_mobile_field_use_phone'
wp option delete 'wpbiztextwc_set_change_order_admin_txtarea'
wp option delete 'wpbiztextwc_set_change_order_txtarea'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_admin_chbx'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_admin_txtarea'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_chbx'"
wp option delete 'wpbiztextwc_notif_number'
wp option delete 'wpbiztextwc_notif_number_nickname'
wp option delete 'wpbiztextwc_biztext_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_mobile_wpbiztextwc_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_mobile_wpbiztextwc_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_mobile_wpbiztextwc_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_mobile_wpbiztextwc_phone'"
