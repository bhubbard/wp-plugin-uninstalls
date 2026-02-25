#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aisk_plugin_version'
wp option delete 'aisk_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aisk_url_user_message_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aisk_url_processing_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aisk_bot_protected_url_%'"
wp option delete 'aisk_last_pdf_processing'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aisk_order_auth_%' OR option_name LIKE '_site_transient_aisk_order_auth_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aisk_otp_%' OR option_name LIKE '_site_transient_aisk_otp_%'"

# Clear Cron Jobs
wp cron event delete 'aisk_process_url_background'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aisk_pdf_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aisk_pdf_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aisk_pdf_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aisk_pdf_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aisk_pdf_chunks_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aisk_pdf_chunks_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aisk_pdf_chunks_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aisk_pdf_chunks_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
