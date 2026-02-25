#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoseo_api_key'
wp option delete 'autoseo_post_category'
wp option delete 'autoseo_author_id'
wp option delete 'autoseo_debug_mode'
wp option delete 'autoseo_pending_auto_verification'
wp option delete 'autoseo_db_version'
wp option delete 'autoseo_show_setup_wizard'
wp option delete 'autoseo_api_key_set_time'
wp option delete 'autoseo_auto_verified_at'
wp option delete 'autoseo_auto_publish'
wp option delete 'autoseo_last_sync_time'

# Delete Transients
wp transient delete 'autoseo_notification_dismissed'

# Clear Cron Jobs
wp cron event delete 'autoseo_auto_sync'
wp cron event delete 'autoseo_sync_articles'
wp cron event delete 'autoseo_publish_scheduled_article'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_article_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_article_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_article_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_article_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_infographic_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_infographic_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_infographic_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_infographic_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_content_markdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_content_markdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_content_markdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_content_markdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_hero_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_hero_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_hero_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_hero_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_infographic_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_infographic_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_infographic_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_infographic_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_infographic_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_infographic_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_infographic_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_infographic_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_wordpress_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_wordpress_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_wordpress_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_wordpress_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_meta_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoseo_managed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoseo_managed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoseo_managed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoseo_managed'"
