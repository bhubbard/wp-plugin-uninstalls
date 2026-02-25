#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mm-option-use-legacy-db'
wp option delete 'gfmm_checkoutpage_notice'
wp option delete 'gfmm_confirmationpage_notice'
wp option delete 'mm_custom_field_group_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmgroups-ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmgroups-ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmgroups-ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmgroups-ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmgroups-sc-ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmgroups-sc-ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmgroups-sc-ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmgroups-sc-ignore'"
