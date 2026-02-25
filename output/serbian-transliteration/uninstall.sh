#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-db-cache-table-exists'"
wp option delete 'serbian-transliteration-version'
wp option delete 'serbian-transliteration-activation'
wp option delete 'serbian-transliteration-ID'
wp option delete 'serbian-transliteration'
wp option delete 'serbian-transliteration-db-version'
wp option delete 'serbian-transliteration-db-cache-table-exists'
wp option delete 'serbian-transliteration-deactivation'
wp option delete 'serbian-transliteration-activated'
wp option delete 'serbian-transliteration-reviewed'
wp option delete 'serbian-transliteration-donated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-activation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-ID'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-html-tags'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'rstr_allowed_sites'

# Delete Transients
wp transient delete 'transliteration_redirect'
wp transient delete 'serbian-transliteration-ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_cyr_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_cyr_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_cyr_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_cyr_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_lat_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_lat_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_lat_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_lat_slug'"
