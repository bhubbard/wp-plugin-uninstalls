#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acfcs_version'
wp option delete 'acfcs_db_version'
wp option delete 'acfcs_city_update_1_8_0'
wp option delete 'current_theme'
wp option delete 'charset'
wp option delete 'registration'
wp option delete 'b3_registration_type'
wp option delete 'acfcs_delete_cities_table'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'acfcs_city_update_1_8_0_%'"
wp option delete 'acfcs_city_update_1_8_0_be'
wp option delete 'acfcs_city_update_1_8_0_nl'
wp option delete 'acf_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acfcs_search_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acfcs_search_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acfcs_search_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acfcs_search_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acfcs_search_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acfcs_search_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acfcs_search_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acfcs_search_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acfcs_search_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acfcs_search_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acfcs_search_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acfcs_search_city'"
