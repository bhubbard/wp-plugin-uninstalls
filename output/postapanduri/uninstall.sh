#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'postapanduri_setari_generale'
wp option delete 'postapanduri_setari_pachetomat'
wp option delete 'postapanduri_setari_puncte_ridicare'
wp option delete 'postapanduri_setari_curierat'
wp option delete 'jal_db_version'
wp option delete 'woocommerce_calc_taxes'

# Clear Cron Jobs
wp cron event delete 'postapanduri_generate_sitemaps_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'id_pachetomat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'id_pachetomat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'id_pachetomat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'id_pachetomat'"
