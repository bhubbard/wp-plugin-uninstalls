#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'invite_anyone'
wp option delete 'invite_anyone_db_version'
wp option delete 'limited_email_domains'

# Delete Transients
wp transient delete 'cloudsponge-services'
wp transient delete 'ia_user_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_ia_accepted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_ia_accepted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_ia_accepted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_ia_accepted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_ia_is_cloudsponge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_ia_is_cloudsponge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_ia_is_cloudsponge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_ia_is_cloudsponge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opt_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opt_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opt_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opt_out'"
