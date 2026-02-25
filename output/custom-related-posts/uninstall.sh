#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'crp_option'
wp option delete 'crp_migrated_to_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'crp_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bv_birthday_giveaway_2016'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bv_birthday_giveaway_2016'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bv_birthday_giveaway_2016'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bv_birthday_giveaway_2016'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crp_relations_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crp_relations_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crp_relations_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crp_relations_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crp_relations_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crp_relations_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crp_relations_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crp_relations_to'"
