#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'learndash-hubspot-settings-key'
wp option delete 'learndash-hubspot-settings-deal'
wp option delete 'learndash-hubspot-settings-contact'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_lock' OR option_name LIKE '_site_transient_%_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ldhs_dl_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ldhs_dl_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ldhs_dl_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ldhs_dl_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
