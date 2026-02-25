#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wthf_types'
wp option delete 'wthf_question_text'
wp option delete 'wthf_yes_text'
wp option delete 'wthf_no_text'
wp option delete 'wthf_thank_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wthf_yes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wthf_yes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wthf_yes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wthf_yes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wthf_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wthf_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wthf_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wthf_no'"
