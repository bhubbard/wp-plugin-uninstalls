#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpec_wpml_glue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpshpcrt_usr_profile_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpshpcrt_usr_profile_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpshpcrt_usr_profile_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpshpcrt_usr_profile_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpscml_copy_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpscml_copy_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpscml_copy_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpscml_copy_downloads'"
