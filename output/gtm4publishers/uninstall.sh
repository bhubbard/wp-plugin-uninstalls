#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gtm4publishers_settings'
wp option delete 'gtm4publishers_activation_redirect'

# Delete Transients
wp transient delete 'gtm4pubs_cache'
wp transient delete 'gtm4pubs_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtm4pubs_premium_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtm4pubs_premium_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtm4pubs_premium_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtm4pubs_premium_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtm4pubs_evergreen_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtm4pubs_evergreen_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtm4pubs_evergreen_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtm4pubs_evergreen_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_built_for_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_built_for_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_built_for_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_built_for_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_vc_js_interface_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_vc_js_interface_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_vc_js_interface_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_vc_js_interface_version'"
