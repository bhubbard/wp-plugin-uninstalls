#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ws4agpt_manager'
wp option delete 'ws4agpt_settings'
wp option delete 'ws4agpt_aeS25_wsfa_wsfa'
wp option delete 'ws4agpt_auto_seo_pro_active'
wp option delete 'ws4agpt_promo_heading'
wp option delete 'ws4agpt_promo_subtext'
wp option delete 'ws4agpt_promo_image'
wp option delete 'ws4agpt_promo_link'
wp option delete 'ws4agpt_version'

# Clear Cron Jobs
wp cron event delete 'ws4agpt_auto_add_article_event'
wp cron event delete 'ws4agpt_do_background_task'
wp cron event delete 'ws4agpt_generate_post_data_task'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'article_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'article_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'article_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'article_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'density'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'density'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'density'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'density'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_wp_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_wp_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_wp_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_wp_post'"
