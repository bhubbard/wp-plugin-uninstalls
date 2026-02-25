#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7pp_theme_message'
wp option delete 'cf7pp_theme_error_message'
wp option delete 'cf7pp_options'
wp option delete 'cf7pp_my_plugin_notice_shown'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7pp_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7pp_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7pp_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7pp_description'"
