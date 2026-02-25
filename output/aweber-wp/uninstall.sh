#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'fca_eoi_settings'
wp option delete 'paf'
wp option delete 'fca_eoi_license_key'
wp option delete 'fca_eoi_allow_customform'
wp option delete 'fca_eoi_last_provider'
wp option delete 'fca_eoi_last_form_meta'
wp option delete 'fca_eoi_dismiss_review'
wp option delete 'fca_eoi_license_status'
wp option delete 'fca_eoi_subscribers_table_ver'
wp option delete 'fca_eoi_comment_optin_settings'
wp option delete 'fca_eoi_comment_optin_post'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fca_eoi_api_aweber_credentials_%'"
wp option delete 'easy_opt_in_oath_infor_settings'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fca_eoi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fca_eoi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fca_eoi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fca_eoi'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fca_eoi_animation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fca_eoi_animation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fca_eoi_animation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fca_eoi_animation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fca_eoi_meta_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fca_eoi_meta_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fca_eoi_meta_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fca_eoi_meta_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fca_eoi_head'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fca_eoi_head'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fca_eoi_head'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fca_eoi_head'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fca_eoi_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fca_eoi_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fca_eoi_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fca_eoi_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fca_eoi_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fca_eoi_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fca_eoi_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fca_eoi_provider'"
