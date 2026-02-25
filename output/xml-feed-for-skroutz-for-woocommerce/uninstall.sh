#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dicha_skroutz_feed_manufacturer'
wp option delete 'dicha_skroutz_feed_color'
wp option delete 'dicha_skroutz_feed_size'
wp option delete 'dicha_skroutz_feed_size_default_one_size'
wp option delete 'dicha_skroutz_feed_availability'
wp option delete 'dicha_skroutz_feed_include_backorders'
wp option delete 'dicha_skroutz_feed_title_attributes'
wp option delete 'dicha_skroutz_feed_description'
wp option delete 'dicha_skroutz_feed_global_markup'
wp option delete 'dicha_skroutz_feed_enable_ean_field'
wp option delete 'dicha_skroutz_feed_filter_categories'
wp option delete 'dicha_skroutz_feed_filter_tags'
wp option delete 'dicha_skroutz_incl_excl_mode_categories'
wp option delete 'dicha_skroutz_incl_excl_mode_tags'
wp option delete 'dicha_skroutz_feed_shipping_cost'
wp option delete 'dicha_skroutz_feed_free_shipping'
wp option delete 'dicha_skroutz_feed_log_level'
wp option delete 'dicha_skroutz_feed_monitor_enabled'
wp option delete 'dicha_skroutz_feed_monitor_email'
wp option delete 'dicha_skroutz_feed_cron'
wp option delete 'dicha_skroutz_feed_last_run'
wp option delete 'dicha_skroutz_feed_last_alert_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dicha_skroutz_feed_custom_availability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dicha_skroutz_feed_custom_availability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dicha_skroutz_feed_custom_availability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dicha_skroutz_feed_custom_availability'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dicha_skroutz_feed_ean_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dicha_skroutz_feed_ean_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dicha_skroutz_feed_ean_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dicha_skroutz_feed_ean_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dicha_skroutz_feed_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dicha_skroutz_feed_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dicha_skroutz_feed_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dicha_skroutz_feed_price'"
