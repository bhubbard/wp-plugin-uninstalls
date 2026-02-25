#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmufs_settings'
wp option delete 'wmufs_maximum_execution_time'
wp option delete 'wmufs_memory_limit'
wp option delete 'wmufs_notice_disable_time'
wp option delete 'max_file_size'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'wmufs_settings_updated'
wp transient delete 'codepopular_promo_data'
wp transient delete 'codepopular_blog_posts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wf-plugin-info-%' OR option_name LIKE '_site_transient_wf-plugin-info-%'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
