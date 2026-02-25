#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'b4y_plugin_setting_adresse'
wp option delete 'b4y_plugin_setting_prod'
wp option delete 'b4y_plugin_setting_adresse_longitude'
wp option delete 'b4y_plugin_setting_adresse_latitude'
wp option delete 'b4y_plugin_setting_texte'
wp option delete 'b4y_plugin_setting_aide'
wp option delete 'b4y_plugin_setting_comm'
wp option delete 'b4y_plugin_setting_key'
wp option delete 'b4y_plugin_setting_cats'
wp option delete 'b4y_plugin_setting_sender_name'
wp option delete 'b4y_plugin_setting_sender_phone'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b4y_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b4y_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b4y_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b4y_send'"
