#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iyzico_overlay_token'
wp option delete 'iyzicoWebhookUrlKey'
wp option delete 'iyzico_google_products_xml_last_update'
wp option delete 'iyzico_google_products_next_send_time'
wp option delete 'iyzico_google_products_xml_url'
wp option delete 'iyzico_google_products_retry_data'
wp option delete 'iyzico_google_products_last_sent'
wp option delete 'iyziTLS'
wp option delete 'iyzico_overlay_position'
wp option delete 'iyzico_thank_you'
wp option delete 'init_active_webhook_url'

# Clear Cron Jobs
wp cron event delete 'iyzico_generate_google_products_xml'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_google_product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_google_product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_google_product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_google_product_category'"
