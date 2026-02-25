#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rwcufr_spare_me'
wp option delete 'rwcufr_a08n_time'
wp option delete 'rwcufr_generals'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rwcufr_author_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rwcufr_author_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rwcufr_author_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rwcufr_author_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rwcufr_status_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rwcufr_status_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rwcufr_status_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rwcufr_status_date'"
