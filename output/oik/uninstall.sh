#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bw_options'
wp option delete 'bw_options1'
wp option delete 'bw_plugins'
wp option delete 'bw_buttons'
wp option delete 'bw_admin_options'
wp option delete 'active_sitewide_plugins'
wp option delete '_site_transient_update_plugins'
wp option delete 'bw_themes'
wp option delete '_site_transient_update_themes'

# Delete Transients
wp transient delete 'plugin_slugs'
wp transient delete 'theme_slugs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sc_param_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sc_param_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sc_param_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sc_param_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oik_sc_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oik_sc_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oik_sc_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oik_sc_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_code'"
