#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publication_authors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publication_authors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publication_authors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publication_authors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publication_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publication_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publication_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publication_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eep_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eep_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eep_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eep_featured'"
