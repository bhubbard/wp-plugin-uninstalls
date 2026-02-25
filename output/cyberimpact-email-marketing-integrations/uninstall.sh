#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cyberimpact_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cyberimpact_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cyberimpact_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cyberimpact_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cyberimpact_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cyberimpact_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cyberimpact_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cyberimpact_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cyberimpact_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cyberimpact_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cyberimpact_opt_in_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cyberimpact_opt_in_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cyberimpact_opt_in_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cyberimpact_opt_in_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cyberimpact_mappings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cyberimpact_mappings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cyberimpact_mappings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cyberimpact_mappings'"
