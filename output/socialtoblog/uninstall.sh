#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snapblog_import_author_id'
wp option delete 'snapblog_base_url'
wp option delete 'snapblog_email_api'
wp option delete 'snapblog_password_api'
wp option delete 'snapblog_import_max_pages'
wp option delete 'snapblog_last_import_date'

# Delete Transients
wp transient delete 'snapblog_import_partial'

# Clear Cron Jobs
wp cron event delete 'snapblog_import_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapblog_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapblog_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapblog_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapblog_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snapblog_external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snapblog_external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snapblog_external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snapblog_external_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snapblog_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snapblog_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snapblog_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snapblog_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snapblog_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snapblog_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snapblog_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snapblog_featured'"
