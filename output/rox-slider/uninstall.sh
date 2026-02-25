#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'roxslider_settings_list'
wp option delete '__roxslider_oppai__'
wp option delete '__roxslider_license_key__'
wp option delete 'roxslider_fse_fonts'
wp option delete 'active_sitewide_plugins'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roxslider_posts_fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roxslider_posts_fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roxslider_posts_fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roxslider_posts_fonts'"
