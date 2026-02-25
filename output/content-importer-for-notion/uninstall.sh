#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_importer_for_notion_style_p'
wp option delete 'content_importer_for_notion_style_h1'
wp option delete 'content_importer_for_notion_style_h2'
wp option delete 'content_importer_for_notion_style_h3'
wp option delete 'content_importer_for_notion_style_li'
wp option delete 'content_importer_for_notion_style_ul'
wp option delete 'content_importer_for_notion_style_quote'
wp option delete 'content_importer_for_notion_style_hr'
wp option delete 'content_importer_for_notion_style_table'
wp option delete 'content_importer_for_notion_style_row'
wp option delete 'content_importer_for_notion_image_size'
wp option delete 'content_importer_for_notion_style_img'
wp option delete 'content_importer_for_notion_column_tag'
wp option delete 'content_importer_for_notion_style_column_div_wrapper'
wp option delete 'content_importer_for_notion_style_column_table'
wp option delete 'content_importer_for_notion_style_column_row'
wp option delete 'content_importer_for_notion_style_column_div'
wp option delete 'content_importer_for_notion_style_column_col'
wp option delete 'content_importer_for_notion_style_col'
wp option delete 'content_importer_for_notion_api_key'
wp option delete 'content_importer_for_notion_database_url'
wp option delete 'content_importer_for_notion_custom_css'

# Clear Cron Jobs
wp cron event delete 'content_importer_for_notion_cron_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_importer_for_notion_cron_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_importer_for_notion_cron_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_importer_for_notion_cron_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_importer_for_notion_cron_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notion_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notion_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notion_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notion_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notion_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notion_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notion_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notion_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cron_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cron_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cron_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cron_interval'"
