#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cvcs-taxonomy-enabled'
wp option delete 'cvcs-taxonomy-all-enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cv_term_status_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cv_term_status_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cv_term_status_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cv_term_status_draft'"
