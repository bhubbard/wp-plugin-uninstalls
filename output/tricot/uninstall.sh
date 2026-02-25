#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tricot_force_default_lang_prefix'
wp option delete 'tricot_debug_level'
wp option delete 'tricot_crawl_delay'
wp option delete 'tricot_transtation_capture'
wp option delete 'tricot_language_switcher_options'
wp option delete 'tricot_license_key'
wp option delete 'tricot_api_key'
wp option delete 'tricot_automatic_options'
wp option delete 'tricot_active_languages'
wp option delete 'tricot_wizard_max_step'
wp option delete 'tricot_crawler_current'
wp option delete 'tricot_crawler_total'
wp option delete 'tricot_crawler_running'
wp option delete 'tricot_crawler_urls'
wp option delete 'tricot_crawler_seo'
wp option delete 'tricot_crawler_date'
wp option delete 'tricot_registered_domain'
wp option delete 'tricot_db_version'
wp option delete 'tricot_plan'
wp option delete 'tricot_credits'
wp option delete 'tricot_license_status'
wp option delete 'tricot_advanced_settings'
wp option delete 'tricot_encode_hash'

# Clear Cron Jobs
wp cron event delete 'tricot_cron_indexation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_tricot_display_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_tricot_display_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_tricot_display_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_tricot_display_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_tricot_menu_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_tricot_menu_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_tricot_menu_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_tricot_menu_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_tricot_hide_current'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_tricot_hide_current'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_tricot_hide_current'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_tricot_hide_current'"
