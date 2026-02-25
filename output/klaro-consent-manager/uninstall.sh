#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'klaro_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'klaro_default_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'klaro_default_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'klaro_default_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'klaro_default_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'klaro_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'klaro_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'klaro_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'klaro_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'klaro_optout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'klaro_optout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'klaro_optout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'klaro_optout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'klaro_onlyonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'klaro_onlyonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'klaro_onlyonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'klaro_onlyonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'klaro_purposes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'klaro_purposes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'klaro_purposes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'klaro_purposes'"
