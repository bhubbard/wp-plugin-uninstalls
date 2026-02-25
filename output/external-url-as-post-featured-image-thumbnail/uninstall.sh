#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'telegram_channel_names_temp'
wp option delete 'site_variables_my_secret'
wp option delete 'randoms_for_main_site'
wp option delete 'my_optioned_arrayyy'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_network_managed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_transl_lastvers'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_transl_exists'"

# Delete Transients
wp transient delete 'termids_for_js'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_ext_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_ext_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_ext_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_ext_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmm_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmm_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmm_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmm_dismissed_notices'"
