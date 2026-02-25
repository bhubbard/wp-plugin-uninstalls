#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_social'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_social'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_social'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_social'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm-team-designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm-team-designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm-team-designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm-team-designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm-team-short-desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm-team-short-desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm-team-short-desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm-team-short-desc'"
