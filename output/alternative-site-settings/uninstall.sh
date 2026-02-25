#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'altss_settings_options'
wp option delete 'altss_settings_cforms_container_id'
wp option delete 'altss_settings_cforms_privacy_policy_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_titleshow_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_desc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_descshow_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_fields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_reqfields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_firstemail_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_secondemail_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_submitbtntext_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_field_%'"
wp option delete 'altss_settings_cforms_additional_settings'
wp option delete 'altss_settings_options_custom_recs'
wp option delete 'altss_settings_options_custom_recs_settings'
wp option delete 'altss_settings_options_cookie_banner_settings'
wp option delete 'copyright_info'
wp option delete 'general_phone_number'
wp option delete 'altss_uninstall_data_enable'
wp option delete 'altss_uninstall_data_items'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_options_embedded_text_%'"

# Delete Transients
wp transient delete 'cfs_record_removed_id'
wp transient delete 'cfs_record_remove_error'
wp transient delete 'altss_reviews_session'
wp transient delete 'thadm_admrevs_session'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_meta_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_meta_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_meta_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_meta_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_meta_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_meta_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_meta_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_meta_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_meta__title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_meta__title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_meta__title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_meta__title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_meta__description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_meta__description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_meta__description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_meta__description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seo_meta__og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seo_meta__og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seo_meta__og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seo_meta__og_image'"
