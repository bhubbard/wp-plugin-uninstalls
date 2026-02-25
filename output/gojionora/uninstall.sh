#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gojion_default_variant'
wp option delete 'gojion_default_position'
wp option delete 'gojion_texts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gojion_variant'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gojion_variant'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gojion_variant'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gojion_variant'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gojion_ad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gojion_ad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gojion_ad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gojion_ad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gojion_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gojion_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gojion_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gojion_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gojion_applied_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gojion_applied_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gojion_applied_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gojion_applied_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gld_ad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gld_ad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gld_ad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gld_ad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gojion_reco_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gojion_reco_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gojion_reco_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gojion_reco_vendor'"
