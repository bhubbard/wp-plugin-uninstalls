#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpcapt_public'
wp option delete 'bpcapt_theme'
wp option delete 'bpcapt_private'
wp option delete 'bpcapt_language'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_ignore_notice'"
