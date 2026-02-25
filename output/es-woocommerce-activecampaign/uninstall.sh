#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_activecampaign_settings'
wp option delete 'settings_activecampaign'

# Delete Transients
wp transient delete 'es_wc_activecampaign_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_es_wc_activecampaign_list_%' OR option_name LIKE '_site_transient_es_wc_activecampaign_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_es_wc_activecampaign_tags_list_%' OR option_name LIKE '_site_transient_es_wc_activecampaign_tags_list_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'es_wc_activecampaign_opt_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'es_wc_activecampaign_opt_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'es_wc_activecampaign_opt_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'es_wc_activecampaign_opt_in'"
