#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mbdb_retailers_with_itunes'
wp option delete 'mbdb_migrate_grids'
wp option delete 'mbdb_import_books'
wp option delete 'novelist_settings'
wp option delete 'mbm_novelist_to_mbm_retailers'
wp option delete 'mbm_novelist_to_mbm_genres'
wp option delete 'mbm_novelist_to_mbm_series'
wp option delete 'mbm_publishers_by_name'
wp option delete 'mbm_paperback_format'
wp option delete 'mbm_kindle_format'
wp option delete 'mbdb_old_publishers'
wp option delete 'mbdb_new_publishers'
wp option delete 'mbdb_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'mbdb_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'mbdb_admin_notices'
wp option delete 'mbdb_flush_rules'
wp option delete 'mbdb_license'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp option delete 'mbdb_cache'
wp option delete 'mbdb_update_4_14_4'
wp option delete 'mbdb_update_4_14_16'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'mbdb_version_5'
wp cron event delete 'mbdb_check_for_itunes_links'
wp cron event delete 'mbdb_version_5_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_buylinks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_buylinks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_buylinks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_buylinks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_mbdb_book'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_mbdb_book'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_mbdb_book'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_mbdb_book'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbdb_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbdb_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbdb_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbdb_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_order_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_order_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_order_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_order_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbdb_tax_grid_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbdb_tax_grid_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbdb_tax_grid_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbdb_tax_grid_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbdb_tax_grid_description_bottom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbdb_tax_grid_description_bottom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbdb_tax_grid_description_bottom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbdb_tax_grid_description_bottom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_reviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_editions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_editions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_editions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_editions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_downloadlinks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_downloadlinks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_downloadlinks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_downloadlinks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_books_across_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_books_across_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_books_across_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_books_across_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_publisher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_publisher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_publisher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_publisher'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_publisherwebsite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_publisherwebsite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_publisherwebsite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_publisherwebsite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_publisherID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_publisherID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_publisherID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_publisherID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_cover_height_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_cover_height_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_cover_height_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_cover_height_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_cover_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_cover_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_cover_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_cover_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_group_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_group_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_group_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_group_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_group_by_level_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_group_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_group_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_group_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_group_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_group_by_level_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_group_by_level_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_group_by_level_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_group_by_level_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_custom_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_custom_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_custom_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_custom_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_publisher_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_publisher_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_publisher_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_publisher_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mbdb_book_grid_publisher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mbdb_book_grid_publisher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mbdb_book_grid_publisher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mbdb_book_grid_publisher'"
