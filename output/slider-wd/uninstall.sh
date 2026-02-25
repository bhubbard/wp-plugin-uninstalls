#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wds_global_options'
wp option delete 'wds_theme_version'
wp option delete 'tenweb_notice_status'
wp option delete 'wds_version'
wp option delete 'wds_subscribe_done'
wp option delete 'wds_loading_gif'
wp option delete 'wds_register_scripts'
wp option delete 'two-front-page-speed'
wp option delete 'twb_images_total_size'
wp option delete 'twb_speed_score'
wp option delete 'tenweb_domain_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_domain_id'"
wp option delete 'tenweb_access_token'
wp option delete 'twb_show_cta'
wp option delete 'twb_hompage_optimized'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_global_options'"
wp option delete 'wds_version_1.0.46'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice'"

# Delete Transients
wp transient delete 'twb_optimized_pages'
wp transient delete 'tenweb_subscription_id'
wp transient delete 'wds_update_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
