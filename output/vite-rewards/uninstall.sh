#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'health-check-allowed-plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_addons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete '_vt_ac'
wp option delete 'rwd_addons'
wp option delete 'apps_bd_ups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aprp_ru%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_notice_%' OR option_name LIKE '_site_transient_dismissed_notice_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apbd_reward_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apbd_reward_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apbd_reward_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apbd_reward_out'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apbd_reward_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apbd_reward_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apbd_reward_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apbd_reward_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apbd_reward_crnt_bg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apbd_reward_crnt_bg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apbd_reward_crnt_bg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apbd_reward_crnt_bg'"
