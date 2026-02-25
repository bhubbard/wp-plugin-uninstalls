#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gutenkit_version'
wp option delete 'gutenkit_installed_time'
wp option delete 'gutenkit_do_activation_redirect'
wp option delete 'gutenkit_onboard_status'
wp option delete 'active_sitewide_plugins'
wp option delete 'gutenkit_blocks_list'
wp option delete 'gutenkit_favorite_templates'
wp option delete 'gutenkit_modules_list'
wp option delete 'gutenkit_onboard_email'
wp option delete 'gutenkit_settings_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_list'"
wp option delete 'gutenkitBreakpoints'
wp option delete '__gutenkit_oppai__'
wp option delete '__gutenkit_license_key__'
wp option delete 'enable_smooth_scroll'
wp option delete 'smooth_scroll_duration'
wp option delete 'smooth_scroll_lerp'
wp option delete 'smooth_scroll_prevent_type'
wp option delete 'smooth_scroll_exclude'
wp option delete 'smooth_scroll_include'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_never_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'globalClassManagerStyle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'globalClassManagerStyle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'globalClassManagerStyle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'globalClassManagerStyle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postBodyCss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postBodyCss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postBodyCss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postBodyCss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'origin_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'origin_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'origin_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'origin_from'"
