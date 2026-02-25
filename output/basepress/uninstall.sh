#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basepress_run_wizard'
wp option delete 'basepress_settings'
wp option delete 'basepress_regex_word_boundary'
wp option delete 'basepress_icons_sets'
wp option delete 'sidebars_widgets'
wp option delete 'basepress_ver'
wp option delete 'basepress_db_ver'
wp option delete 'basepress_plan'
wp option delete 'widget_basepress_products_widget'
wp option delete 'widget_basepress_sections_widget'
wp option delete 'widget_basepress_related_articles_widget'
wp option delete 'widget_basepress_popular_articles_widget'
wp option delete 'widget_basepress_toc_widget'
wp option delete 'widget_basepress_tag_cloud'
wp option delete 'widget_basepress_nav_widget'
wp option delete 'knowledgebase_cat_children'
wp option delete 'basepress_modern_theme'
wp option delete 'basepress_default_theme'
wp option delete 'basepress_zen_theme'
wp option delete 'basepress_restriction_presets'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'basepress_flush_rules'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basepress_post_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basepress_post_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basepress_post_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basepress_post_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basepress_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basepress_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basepress_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basepress_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sections_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sections_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sections_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sections_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basepress_template_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basepress_template_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basepress_template_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basepress_template_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basepress_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basepress_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basepress_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basepress_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basepress_toc_toggle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basepress_toc_toggle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basepress_toc_toggle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basepress_toc_toggle'"
