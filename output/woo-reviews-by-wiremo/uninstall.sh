#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wiremo_widget_location'
wp option delete 'wiremo-siteId'
wp option delete 'wiremo_custom_text_reviews'
wp option delete 'wiremo_automated_authentification'
wp option delete 'wiremo-api-key'
wp option delete 'wiremo_disable_woo'
wp option delete 'wiremo_widget_display'
wp option delete 'wiremo_generate_schema'
wp option delete 'wiremo_custom_tab_name'
wp option delete 'wiremo_hide_mini_widget_home'
wp option delete 'wiremo_hide_mini_widget_cat'
wp option delete 'wiremo_hide_mini_widget_prod'
wp option delete 'wiremo_hide_mini_widget'
wp option delete 'wiremo_show_custom_text_related'
wp option delete 'wiremo_related_custom_text'
wp option delete 'wiremo_related_products_sort'
wp option delete 'wiremo_automated_review_request'
wp option delete 'wiremo_email_template'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'wiremo_email_template_name'
wp option delete 'wiremo_manual_emails_day'
wp option delete 'wiremo_manual_email_template'
wp option delete 'wiremo_manual_email_template_name'
wp option delete 'wiremo_total_campaigns'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wiremo_campaigns_%'"
wp option delete 'wiremo-display-import'
wp option delete 'wiremo_import_reviews'
wp option delete 'wiremo_widget_sync_products'
wp option delete 'wiremo_manual_datetime_start'
wp option delete 'wiremo_manual_datetime_end'
wp option delete 'wiremo_manual_create_campaigns'
wp option delete 'wiremo-widget-text-font'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'wrpw_wpml_option'
wp option delete 'wiremo-register-hooks'
wp option delete 'wiremo-widget-hover'
wp option delete 'wiremo-widget-star-color'
wp option delete 'wiremo-widget-language'
wp option delete 'wiremo-widget-star-style'
wp option delete 'wiremo-widget-star-size'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiremo-review-count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiremo-review-count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiremo-review-count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiremo-review-count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiremo-review-total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiremo-review-total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiremo-review-total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiremo-review-total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiremo-review-average'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiremo-review-average'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiremo-review-average'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiremo-review-average'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hwp_product_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hwp_product_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hwp_product_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hwp_product_gtin'"
