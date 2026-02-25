#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'novelist_imported_demo_book'
wp option delete 'novelist_version_upgraded_from'
wp option delete 'novelist_settings'
wp option delete 'novelist_settings_book'
wp option delete 'novelist_settings_styles'
wp option delete 'novelist_settings_misc'
wp option delete 'novelist_settings_addons'
wp option delete 'novelist_settings_licenses'
wp option delete 'active_sitewide_plugins'
wp option delete 'novelist_version'

# Delete Transients
wp transient delete '_novelist_activation_redirect'
wp transient delete 'novelist_extensions_feed'
wp transient delete 'novelist_books_array'
wp transient delete 'novelist_csv_imported_books'
wp transient delete 'novelist_csv_import_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_pub_date_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_pub_date_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_pub_date_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_pub_date_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_series'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_series'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_series'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_series'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_cover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_cover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_cover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_cover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_publisher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_publisher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_publisher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_publisher'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_pub_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_pub_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_pub_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_pub_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_contributors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_contributors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_contributors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_contributors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_asin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_asin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_asin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_asin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_goodreads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_goodreads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_goodreads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_goodreads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_purchase_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_purchase_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_purchase_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_purchase_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_synopsis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_synopsis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_synopsis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_synopsis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'novelist_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'novelist_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'novelist_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'novelist_extra'"
