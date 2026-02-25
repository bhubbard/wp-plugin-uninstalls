#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cs_term_%'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_agenda'"

# Delete Transients
wp transient delete 'cs-framework-transient'
wp transient delete 'cs-metabox-transient'
wp transient delete 'cs-taxonomy-transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dt_booking_person_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dt_booking_person_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dt_booking_person_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dt_booking_person_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_info'"
