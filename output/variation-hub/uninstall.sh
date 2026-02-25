#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'varihu_sync_processed'
wp option delete 'varihu_sync_total'
wp option delete 'varihu_sync_last_error'
wp option delete 'varihu_cache_last_sync'
wp option delete 'varihu_sync_running'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'varihu_activated'
wp option delete 'varihu_cache_sync_status'
wp option delete 'varihu_migration_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'varihu_cache_db_version'
wp option delete 'varihu_license_data'
wp option delete 'varihu_license_key'
wp option delete 'varihu_license_tier'
wp option delete 'varihu_license_expires'
wp option delete 'varihu_version'
wp option delete 'varihu_installed_date'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_varihu_security_incident_%' OR option_name LIKE '_site_transient_varihu_security_incident_%'"
wp transient delete 'varihu_security_incident_hmac_validation_failed'

# Clear Cron Jobs
wp cron event delete 'varihu_sync_imported_variation'
wp cron event delete 'varihu_validate_license_daily'
wp cron event delete 'varihu_cache_sync_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
