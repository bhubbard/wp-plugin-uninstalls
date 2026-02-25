#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emailit_options'
wp option delete 'emailit_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailit_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailit_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailit_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailit_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailit_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailit_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailit_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailit_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailit_ignore_notice2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailit_ignore_notice2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailit_ignore_notice2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailit_ignore_notice2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailit_ignore_notice3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailit_ignore_notice3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailit_ignore_notice3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailit_ignore_notice3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emailit_ignore_notice4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emailit_ignore_notice4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emailit_ignore_notice4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emailit_ignore_notice4'"
