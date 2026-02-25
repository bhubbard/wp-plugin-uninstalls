#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_key'
wp option delete 'no_books'
wp option delete 'no_book'
wp option delete 'service_url'
wp option delete 'api_source'
wp option delete 'typesense_catalog'
wp option delete 'typesense_api_key'
wp option delete 'typesense_host'
wp option delete 'widget_book_link_page'
wp option delete 'widget_book_link_pattern'
wp option delete 'product_details_cache_lifetime'
wp option delete 'search_results_cache_lifetime'
wp option delete 'isbn_lookups_cache_lifetime'
wp option delete 'product_details_seo_title'
wp option delete 'product_details_seo_description'
wp option delete 'product_details_seo_canonical'
wp option delete 'widget_retailer_name'
wp option delete 'retailer_image'
wp option delete 'widget_retailer_link_pattern'
wp option delete 'widget_retailer_tracking_pattern'
wp option delete 'retailer_link_formats'
wp option delete 'supapress'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_widget_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_widget_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_widget_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_widget_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
