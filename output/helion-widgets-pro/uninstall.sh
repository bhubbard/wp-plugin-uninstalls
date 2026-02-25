#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'helion_wyszukiwarka_template'
wp option delete 'helion_bookstore_template_main'
wp option delete 'helion_bookstore_template_category'
wp option delete 'helion_bookstore_template_book'
wp option delete 'helion_partner_id'
wp option delete 'helion_bookstores'
wp option delete 'helion_bookstore_ksiegarnia'
wp option delete 'helion_bookstore_slug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'helion_serie_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'helion_kategorie_%'"
wp option delete 'helion_bookstore_template_serie'
wp option delete 'helion_current_cache_size'
wp option delete 'helion_cache_user'
wp option delete 'helion_wyszukiwarka_slug'

# Clear Cron Jobs
wp cron event delete 'helion_download_xmls'
wp cron event delete 'helion_import_xmls'
wp cron event delete 'helion_download_bestsellers'
wp cron event delete 'helion_import_bestsellers'
wp cron event delete 'helion_cron_cache_size'
wp cron event delete 'helion_reset_cache'

