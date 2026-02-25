#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cutp_post_excluded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cutp_post_excluded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cutp_post_excluded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cutp_post_excluded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cutp_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cutp_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cutp_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cutp_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_updated_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_updated_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_updated_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_updated_date'"
