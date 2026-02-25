#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpum_setup_is_complete'
wp option delete 'wpum_version_upgraded_from'
wp option delete 'wpum_activation_date'
wp option delete 'wpum_version'
wp option delete 'wpum_data_installation_fix_check'
wp option delete 'wpum_permalink'
wp option delete 'wpum_email'
wp option delete 'v202_upgrade'
wp option delete 'wpum_emails'
wp option delete 'wpum_completed_upgrades'
wp option delete 'wpumv2_upgrade_completed'
wp option delete 'wpum_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete 'carbon_custom_sidebars'
wp option delete 'tdp_dismissed_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'wpum_get_pages'
wp transient delete 'wpum_addons_feed'
wp transient delete '_wpum_activation_redirect'
wp transient delete 'wpum_get_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_stripe_products' OR option_name LIKE '_site_transient_%_stripe_products'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_data' OR option_name LIKE '_site_transient_%_license_data'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'directory_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'directory_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'directory_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'directory_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_search_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_search_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_search_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_search_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'excluded_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'excluded_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'excluded_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'excluded_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profiles_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profiles_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profiles_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profiles_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'directory_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'directory_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'directory_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'directory_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_sorter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_sorter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_sorter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_sorter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_sorting_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_sorting_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_sorting_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_sorting_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_cover_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_cover_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_cover_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_cover_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_current_user_avatar_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_current_user_avatar_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_current_user_avatar_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_current_user_avatar_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpum_stripe_plan_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpum_stripe_plan_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpum_stripe_plan_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpum_stripe_plan_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpum_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpum_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpum_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpum_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_cover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_cover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_cover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_cover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tdp_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tdp_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tdp_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tdp_dismissed_notices'"
