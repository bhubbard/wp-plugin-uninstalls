#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'epoi_%'"
wp option delete 'epoi_params'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epoi_accumulated_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epoi_accumulated_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epoi_accumulated_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epoi_accumulated_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epoi_user_blocked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epoi_user_blocked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epoi_user_blocked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epoi_user_blocked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epoi_total_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epoi_total_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epoi_total_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epoi_total_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epoi_free_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epoi_free_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epoi_free_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epoi_free_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epoi_lock_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epoi_lock_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epoi_lock_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epoi_lock_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epoi_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epoi_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epoi_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epoi_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epoi_reached_rank_reward'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epoi_reached_rank_reward'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epoi_reached_rank_reward'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epoi_reached_rank_reward'"
