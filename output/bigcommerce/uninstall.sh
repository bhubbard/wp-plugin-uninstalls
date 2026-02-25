#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordpress_api_key'
wp option delete 'akismet_spam_count'
wp option delete 'bigcommerce_flushed_rewrites'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'schema-%'"

# Delete Transients
wp transient delete 'bigcommerce_time_offset'
wp transient delete 'bigcommerce_activation_redirect'
wp transient delete 'settings_errors'
wp transient delete 'bigcommerce_store_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_generation%' OR option_name LIKE '_site_transient_generation%'"

# Clear Cron Jobs
wp cron event delete 'bigcommerce/sync_global_logins'
wp cron event delete 'bigcommerce/routes/cron/update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bigcommerce_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bigcommerce_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bigcommerce_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bigcommerce_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sort_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sort_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sort_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sort_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
