#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'absolute_addons_version'
wp option delete 'absolute_addons_settings'
wp option delete 'trix_theme_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wc_am_migrated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_product_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_instance'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated'"
wp option delete 'theme_switched_via_customizer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_signature'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_auth_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_auth_salt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_updated_at'"
wp option delete 'absp_mc_audience_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"
wp option delete 'woocommerce_hide_out_of_stock_items'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_is_updating_license' OR option_name LIKE '_site_transient_%_is_updating_license'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cached_promos' OR option_name LIKE '_site_transient_%_cached_promos'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_absp_like_user_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_absp_like_user_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_absp_like_user_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_absp_like_user_ids'"
