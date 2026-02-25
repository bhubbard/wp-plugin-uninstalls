#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flx_woo_version'
wp option delete 'flx_woo_settings'
wp option delete 'flx_woo_last_render_time'
wp option delete 'flx_woo_allow_bypass'
wp option delete 'flx_woo_render_stats_24h'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_min_amount'

# Delete Transients
wp transient delete 'flx_woo_renderer_version'
wp transient delete 'flx_woo_db_tables_verified'

# Clear Cron Jobs
wp cron event delete 'flx_woo_performance_test'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
