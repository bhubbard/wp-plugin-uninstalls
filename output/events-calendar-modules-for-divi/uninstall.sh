#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecmd_initial_save_version'
wp option delete 'ecmd_install_date'
wp option delete 'ecmd-v'
wp option delete 'ecmd-type'
wp option delete 'ecmd-installDate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueState'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueAddress'"
