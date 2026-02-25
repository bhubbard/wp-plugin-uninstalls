#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_transient_extendify_admin_pages_menu'
wp option delete 'extendify_assist_tour_progress'
wp option delete 'extendify_domains_recommendations_activities'
wp option delete 'extendify_assist_globals'
wp option delete 'extendify_assist_router'
wp option delete 'extendify_assist_tasks'
wp option delete 'extendify_first_installed_version'
wp option delete 'extendify_onboarding_completed'
wp option delete 'extendify_enable_preview_features_v1'
wp option delete 'extendify_draft_router'
wp option delete 'extendify_help_center_router'
wp option delete 'extendify_assist_support_articles'
wp option delete 'extendify_wc_import_results'
wp option delete 'extendify_site_profile'
wp option delete 'extendify_site_id'
wp option delete 'generate_settings'
wp option delete 'extendify_shared_activity'
wp option delete 'extendify_draft_settings'
wp option delete 'extendify_user_selections'
wp option delete 'extendify_partner_data_v2'
wp option delete 'wpforms_settings'
wp option delete 'extendify_run_migrations'
wp option delete 'extendify_library_site_data'

# Delete Transients
wp transient delete 'extendify_partner_data_cache_check'
wp transient delete 'extendify_recommendations_products'
wp transient delete 'extendify_domains'
wp transient delete 'extendify_recommendations'
wp transient delete 'extendify_supportArticles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_extendify_%' OR option_name LIKE '_site_transient_extendify_%'"
wp transient delete 'extendify_apex_domain'
wp transient delete 'extendify_site_url'
wp transient delete 'extendify_home_url'

# Clear Cron Jobs
wp cron event delete 'extendify_update_domains_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extendify_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extendify_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extendify_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extendify_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'made_with_extendify_launch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'made_with_extendify_launch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'made_with_extendify_launch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'made_with_extendify_launch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extendify_ai_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extendify_ai_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extendify_ai_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extendify_ai_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_persisted_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_persisted_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_persisted_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_persisted_preferences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extendify_form_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extendify_form_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extendify_form_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extendify_form_type'"
