#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'premmerce_seo_%'"
wp option delete 'premmerce_seo_settings_brand_field'
wp option delete 'premmerce_seo_brand_field'
wp option delete 'premmerce_seo_settings_markup_tc'
wp option delete 'premmerce_seo_settings_markup_ld'
wp option delete 'premmerce_seo_settings_markup_og'
wp option delete 'premmerce_seo_settings_image_alts'
wp option delete 'premmerce_seo_db_version'
wp option delete 'premmerce_seo_address'
wp option delete 'premmerce_seo_email'
wp option delete 'premmerce_seo_telephone'
wp option delete 'premmerce_seo_openingHours'
wp option delete 'premmerce_seo_paymentAccepted'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

