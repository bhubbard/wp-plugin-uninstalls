#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_active_modules'
wp option delete 'powerkit_enabled_lazyload'
wp option delete 'theme_mods_flatsome-child'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'et_%'"
wp option delete 'woocs_shop_is_cached'
wp option delete 'FLYING_PRESS_CONFIG'
wp option delete 'siteground_optimizer_combine_css'
wp option delete 'wpassetcleanup_settings'
wp option delete 'fusion_options'
wp option delete 'asp_compatibility'
wp option delete 'rabbit_loader_user_options'
wp option delete 'rabbit_loader_wp_options'
wp option delete 'gd_system_last_cache_flush'
wp option delete 'rabbitloader_cdn_prefix'
wp option delete 'rabbitloader_do_activation_redirect'

# Delete Transients
wp transient delete 'rabbitloader_trans_overview_data'
wp transient delete 'rabbitloader_knowlegebase_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rl_survey_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rl_survey_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rl_survey_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rl_survey_dismissed'"
