#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nimble_version'
wp option delete 'nimble_version_upgraded_from'
wp option delete 'nimble_started_with_version'
wp option delete 'nimble_start_date'
wp option delete 'nimble_last_update_notice'
wp option delete 'active_sitewide_plugins'
wp option delete 'nimble_api_news_data'
wp option delete '__nimble_options__'
wp option delete 'nb_prebuild_section_json'
wp option delete 'wp_rocket_settings'

# Delete Transients
wp transient delete 'started_using_hueman'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
