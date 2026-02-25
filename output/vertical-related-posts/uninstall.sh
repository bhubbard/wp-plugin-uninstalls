#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cc_vrp_options'
wp option delete 'cc_vrp_activate_flag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disableVRPOnPage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disableVRPOnPage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disableVRPOnPage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disableVRPOnPage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'numberOfDisplayedPosts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'numberOfDisplayedPosts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'numberOfDisplayedPosts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'numberOfDisplayedPosts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customPostTypesToUse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customPostTypesToUse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customPostTypesToUse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customPostTypesToUse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkedTypes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkedTypes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkedTypes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkedTypes'"
