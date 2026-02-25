#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ald_options'
wp option delete 'ald_wrapper_class'
wp option delete 'ald_load_class'
wp option delete 'ald_item_show'
wp option delete 'ald_item_load'
wp option delete 'ald_load_label'
wp option delete 'ald_wrapper_classa'
wp option delete 'ald_load_classa'
wp option delete 'ald_item_showa'
wp option delete 'ald_item_loada'
wp option delete 'ald_load_labela'
wp option delete 'ald_wrapper_classb'
wp option delete 'ald_load_classb'
wp option delete 'ald_item_showb'
wp option delete 'ald_item_loadb'
wp option delete 'ald_load_labelb'
wp option delete 'ald_wrapper_classc'
wp option delete 'ald_load_classc'
wp option delete 'ald_item_showc'
wp option delete 'ald_item_loadc'
wp option delete 'ald_load_labelc'
wp option delete 'ald_wrapper_classd'
wp option delete 'ald_load_classd'
wp option delete 'ald_item_showd'
wp option delete 'ald_item_loadd'
wp option delete 'ald_load_labeld'
wp option delete 'ald_wrapper_classe'
wp option delete 'ald_load_classe'
wp option delete 'ald_item_showe'
wp option delete 'ald_item_loade'
wp option delete 'ald_load_labele'
wp option delete 'asr_ald_css_class'
wp option delete 'ald_old_options'
wp option delete 'ald_installed'
wp option delete 'ald_plugin_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

