#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgs_version'
wp option delete 'wpgs_version_upgraded_from'
wp option delete 'wpgs_remove_gallery_page'
wp option delete 'wpgs_update_language_options'
wp option delete 'wpgs_update_help_options'
wp option delete 'wpgs_doing_upgrade'
wp option delete 'wpgs_completed_upgrades'
wp option delete 'create_page'
wp option delete 'wpgs_wpgraphicstudio_install'
wp option delete '_wp_session_list'
wp option delete 'wpgs_wpgraphicstudio_logo_url'
wp option delete 'wpgs_wpgraphicstudio_nav_hex'
wp option delete 'wpgs_wpgraphicstudio_belcher_box_url'
wp option delete 'wpgs_wpgraphicstudio_buttons_url'
wp option delete 'wpgs_wpgraphicstudio_cta_boxes_url'
wp option delete 'wpgs_wpgraphicstudio_web_boxes_url'
wp option delete 'wpgs_wpgraphicstudio_headlines_url'
wp option delete 'wpgs_wpgraphicstudio_per_gallery'
wp option delete 'wpgs_wpgraphicstudio_per_members'
wp option delete 'wpgs_wpgraphicstudio_delete_files'
wp option delete 'wpgs_wpgraphicstudio_email_graphics'
wp option delete 'wpgs_wpgraphicstudio_remove_settings'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete '_wpgs_activation_redirect'
wp transient delete 'wpgs_check_protection_files'

# Clear Cron Jobs
wp cron event delete 'wpgs_weekly_cron'
wp cron event delete 'wpgs_daily_cron'
wp cron event delete 'wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EmailSent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EmailSent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EmailSent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EmailSent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ReSent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ReSent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ReSent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ReSent'"
