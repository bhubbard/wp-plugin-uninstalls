#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chanma_free_settings'
wp option delete 'chanma_free_tutorial_completed'
wp option delete 'chanma_version'
wp option delete 'chanma_tutorial_completed'
wp option delete 'chanma_settings'
wp option delete 'chanma_default_statuses_created'
wp option delete 'chanma_default_project_created'
wp option delete 'chanma_subscribers'
wp option delete 'chanma_custom_block_logo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_release_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_release_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_release_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_release_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_bugfixes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_bugfixes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_bugfixes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_bugfixes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_improvements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_improvements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_improvements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_improvements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_security'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_security'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_security'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_security'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_removed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_removed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_removed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_removed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_roadmap_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_roadmap_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_roadmap_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_roadmap_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_roadmap_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_roadmap_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_roadmap_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_roadmap_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_roadmap_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_roadmap_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_roadmap_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_roadmap_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_roadmap_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_roadmap_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_roadmap_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_roadmap_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chanma_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chanma_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chanma_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chanma_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_chanma_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_chanma_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_chanma_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_chanma_%'"
