#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcis_enable_rewrite_cats'
wp option delete 'autocomplete_version'
wp option delete 'wcis_site_id'
wp option delete 'wcis_general_settings'
wp option delete 'serp_config'
wp option delete 'serp_version'
wp option delete 'category_version'
wp option delete 'authentication_key'
wp option delete 'wcis_enable_rewrite_links'
wp option delete 'wcis_serp_page_name'
wp option delete 'rewrite_rules'
wp option delete 'isp_wpml_languages'
wp option delete 'wcis_user_email'
wp option delete 'is_activation_triggered'
wp option delete 'cron_category_list'
wp option delete 'wcis_timeframe'
wp option delete 'cron_in_progress'
wp option delete 'wcis_batch_size'
wp option delete 'max_num_of_batches'
wp option delete 'wcis_taxonomies'
wp option delete 'wcis_acf_fields'
wp option delete 'cron_product_list'
wp option delete 'cron_update_product_list_by_date'
wp option delete 'cron_send_batches_disable'
wp option delete 'wcis_enable_highlight'
wp option delete 'wcis_just_created_alert'
wp option delete 'wcis_site_alert'
wp option delete 'wcis_site_notification'

# Clear Cron Jobs
wp cron event delete 'instantsearchplus_cron_request_event'
wp cron event delete 'instantsearchplus_cron_request_event_backup'
wp cron event delete 'instantsearchplus_cron_check_alerst'
wp cron event delete 'instantsearchplus_send_all_categories'
wp cron event delete 'instantsearchplus_send_batches_if_unreachable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
