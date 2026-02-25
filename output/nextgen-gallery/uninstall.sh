#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ngg_wizard'
wp option delete 'nextgen_over_time'
wp option delete 'pope_module_list'
wp option delete 'hide_am_notices'
wp option delete 'ngg_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ngg_license_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ngg_license_level_%'"
wp option delete 'ngg_last_license_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ngg_license_expiration_%'"
wp option delete 'ngg_options_version'
wp option delete 'envira_cdn_config'
wp option delete 'ngg_admin_menu_tooltip'
wp option delete 'ngg_onboarding_data'
wp option delete 'photocrati_license_default'
wp option delete 'ngg_init_check'
wp option delete 'ngg_update_exists'
wp option delete 'ngg_db_version'
wp option delete 'ngg_next_update'
wp option delete 'ngg_ftp_root_path'
wp option delete 'ngg_api_execution_lock'
wp option delete 'ngg_api_job_list'
wp option delete 'imagely_dates_migrated'
wp option delete 'ngg_transient_groups'
wp option delete 'photocrati_cache_tracker'
wp option delete 'nextgen_usage_tracking_last_checkin'
wp option delete 'nextgen_usage_tracking_config'

# Delete Transients
wp transient delete 'ngg-activated'
wp transient delete 'dirsize_cache'

# Clear Cron Jobs
wp cron event delete 'ngg_delete_expired_transients'
wp cron event delete 'nextgen_admin_notifications_update'
wp cron event delete 'nextgen_usage_tracking_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ngg_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ngg_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ngg_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ngg_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nextgen_api_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nextgen_api_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nextgen_api_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nextgen_api_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pricelist_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pricelist_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pricelist_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pricelist_id'"
