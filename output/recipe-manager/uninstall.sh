#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcpm_default_recipe_course_terms'
wp option delete 'rcpm_default_allergen_ingredients'
wp option delete 'rcpm_sample_recipe_1'
wp option delete 'rcpm_activation_redirect'
wp option delete 'rcpm_permalinks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'rcpm_tracking_last_send'
wp option delete 'rcpm_settings'
wp option delete 'rcpm_tracking_notice'
wp option delete 'rcpm_status_options'
wp option delete 'rcpm_version_upgraded_from'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'rcpm_flush_rewrite_rules'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'rcpm_weekly_scheduled_events'
wp cron event delete 'rcpm_daily_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phases'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'phase_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'phase_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'phase_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'phase_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'additional_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'additional_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'additional_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'additional_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_allergen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_allergen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_allergen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_allergen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_has_lactose'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_has_lactose'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_has_lactose'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_has_lactose'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allergen_warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allergen_warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allergen_warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allergen_warning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'servings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'servings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'servings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'servings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prep_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prep_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prep_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prep_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cook_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cook_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cook_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cook_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_time'"
