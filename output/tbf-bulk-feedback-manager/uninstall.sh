#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tbfbuusm_bulk_manager_history'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tbfbuusm_slug_fix_plan_%' OR option_name LIKE '_site_transient_tbfbuusm_slug_fix_plan_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tbfbuusm_slug_fix_progress_%' OR option_name LIKE '_site_transient_tbfbuusm_slug_fix_progress_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tbfbuusm_user_gen_plan_%' OR option_name LIKE '_site_transient_tbfbuusm_user_gen_plan_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tbfbuusm_user_gen_progress_%' OR option_name LIKE '_site_transient_tbfbuusm_user_gen_progress_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tbfbuusm_user_gen_results_%' OR option_name LIKE '_site_transient_tbfbuusm_user_gen_results_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbfbuusm_avatar_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbfbuusm_avatar_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbfbuusm_avatar_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbfbuusm_avatar_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbfbuusm_gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbfbuusm_gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbfbuusm_gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbfbuusm_gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_latest_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_latest_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_latest_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_latest_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
