#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vi_wbe_full_screen_option'
wp option delete 'vi_wbe_product_meta_fields'
wp option delete 'vi_wbe_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Clear Cron Jobs
wp cron event delete 'vi_wbe_remove_revision'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vi_wbe_product_column_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vi_wbe_product_column_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vi_wbe_product_column_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vi_wbe_product_column_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vi_wbe_product_meta_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vi_wbe_product_meta_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vi_wbe_product_meta_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vi_wbe_product_meta_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vi_wbe_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vi_wbe_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vi_wbe_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vi_wbe_settings'"
