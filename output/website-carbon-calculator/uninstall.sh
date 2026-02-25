#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcc_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcc::%'"
wp option delete 'wpcc::search'
wp option delete 'wpcc::404'
wp option delete 'carbon_calculator'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcc_details::%'"
wp option delete 'wpcc_details::search'
wp option delete 'wpcc_details::404'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcc_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcc_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcc_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcc_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcc_pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcc_pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcc_pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcc_pending'"
