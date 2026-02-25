#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'drjsondata_options'
wp option delete 'drjsondata_my_plugin_notice_shown'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7ccav_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7ccav_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7ccav_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7ccav_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7ccav_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7ccav_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7ccav_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7ccav_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7ccav_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7ccav_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7ccav_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7ccav_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7ccav_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7ccav_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7ccav_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7ccav_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7ccav_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7ccav_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7ccav_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7ccav_gateway'"
