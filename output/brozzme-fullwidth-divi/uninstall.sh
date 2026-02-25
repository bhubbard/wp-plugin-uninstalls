#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bfd_general_settings'
wp option delete 'bfd_tools_settings'

# Delete Transients
wp transient delete 'brozzme_plugins_api_results'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brozzme_plugins_api_version_%' OR option_name LIKE '_site_transient_brozzme_plugins_api_version_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_single_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_single_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_single_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_single_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_post_hide_nav'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_post_hide_nav'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_post_hide_nav'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_post_hide_nav'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_side_nav'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_side_nav'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_side_nav'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_side_nav'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_show_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_show_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_show_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_show_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
