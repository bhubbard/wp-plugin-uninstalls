#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp option delete 'allowed_astra_notices'

# Delete Transients
wp transient delete 'bsf_analytics_track'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsf-sb-users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsf-sb-users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsf-sb-users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsf-sb-users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_replace_this_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_replace_this_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_replace_this_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_replace_this_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsf-sb-location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsf-sb-location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsf-sb-location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsf-sb-location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsf-sb-exclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsf-sb-exclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsf-sb-exclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsf-sb-exclusion'"
