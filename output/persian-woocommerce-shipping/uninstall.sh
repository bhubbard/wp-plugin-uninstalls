#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pws_install_cities'
wp option delete 'sabira_set_iran_cities'
wp option delete 'pws_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pws_dismiss_notice_%'"
wp option delete 'pws_dismiss_notice_all'
wp option delete 'PW_Options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nabik_taxonomy_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pws_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nabik_taxonomy_tapin_%'"
wp option delete 'pws_tapin_services'

# Delete Transients
wp transient delete 'pws_installing_cities'
wp transient delete 'pws_update_notices'
wp transient delete 'pws_states'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pws_cities_%' OR option_name LIKE '_site_transient_pws_cities_%'"
wp transient delete 'pws_tapin_states'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pws_tapin_cities_%' OR option_name LIKE '_site_transient_pws_tapin_cities_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pws_tapin_shop_%' OR option_name LIKE '_site_transient_pws_tapin_shop_%'"
wp transient delete 'pws_tapin_services'
wp transient delete 'pws_tapin_credit'
wp transient delete 'pws_admin_updating'

# Clear Cron Jobs
wp cron event delete 'pws_check_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pws_map_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pws_map_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pws_map_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pws_map_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_district'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_district'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_district'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_district'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tapin_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tapin_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tapin_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tapin_method'"
