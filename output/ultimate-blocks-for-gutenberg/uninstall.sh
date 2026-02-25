#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'master_blocks_saved_templates'
wp option delete 'master_blocks_global_settings'
wp option delete 'jltmb_blocks_settings'
wp option delete 'jltmb_sheet_promo_data'
wp option delete 'jltmb_sheet_promo_data_hash'
wp option delete 'active_sitewide_plugins'
wp option delete 'jltmb_activation_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"

# Delete Transients
wp transient delete 'master_blocks_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jltmb_api_%' OR option_name LIKE '_site_transient_jltmb_api_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jltmb-plugin-info-%' OR option_name LIKE '_site_transient_jltmb-plugin-info-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jltmb_master_blocks_rollbacks_%' OR option_name LIKE '_site_transient_jltmb_master_blocks_rollbacks_%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'jltmb_sheet_promo_data_remote_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hello_gutenberg_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hello_gutenberg_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hello_gutenberg_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hello_gutenberg_field'"
