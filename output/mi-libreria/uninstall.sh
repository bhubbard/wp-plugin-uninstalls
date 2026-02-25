#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prh_ml_options_saved_time'
wp option delete 'prh_ml_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prh_ml_saved_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prh_ml_saved_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prh_ml_saved_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prh_ml_saved_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prh_ml_books'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prh_ml_books'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prh_ml_books'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prh_ml_books'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prh_ml_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prh_ml_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prh_ml_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prh_ml_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prh_ml_exclusions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prh_ml_exclusions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prh_ml_exclusions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prh_ml_exclusions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prh_ml_auto_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prh_ml_auto_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prh_ml_auto_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prh_ml_auto_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prh_ml_manual_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prh_ml_manual_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prh_ml_manual_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prh_ml_manual_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_prh_ml_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_prh_ml_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_prh_ml_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_prh_ml_%'"
