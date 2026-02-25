#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_lsx-to_settings'

# Delete Transients
wp transient delete '_tour_operators_team_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expert'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expert'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expert'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expert'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accommodation_to_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accommodation_to_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accommodation_to_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accommodation_to_team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'skype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'skype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'skype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'skype'"
