#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'essential_blocks_version'
wp option delete 'eb_admin_menu_notice'
wp option delete 'eb_admin_promotion'
wp option delete '_wpdeveloper_plugin_pointer_priority'
wp option delete 'essential_blocks_quick_setup_shown'
wp option delete 'essential_blocks_user_type'
wp option delete 'eb_settings'
wp option delete 'essential_all_blocks'
wp option delete 'essential_quick_toolbar_allowed_blocks'
wp option delete 'eb_write_with_ai'
wp option delete 'eb_global_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpins_block_notice'
wp option delete '_eb_reusable_block_ids'
wp option delete 'eb_opt_migration'

# Delete Transients
wp transient delete 'essential_block_maybe_whatsnew_redirect'
wp transient delete 'essential_block_whats_new_notice'
wp transient delete 'wpnotice_priority_time_expired'
wp transient delete 'eb_openverse_token'

# Clear Cron Jobs
wp cron event delete 'eb_cleanup_completed_job'
wp cron event delete 'eb_process_ai_job'
wp cron event delete 'eb_cleanup_ai_jobs'
wp cron event delete 'eb_cleanup_stuck_ai_jobs'
wp cron event delete 'eb_pattern_update_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eb_block_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eb_block_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eb_block_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eb_block_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eb_reusable_block_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eb_reusable_block_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eb_reusable_block_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eb_reusable_block_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate_element_display_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate_element_display_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate_element_display_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate_element_display_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate_element_exclude_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate_element_exclude_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate_element_exclude_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate_element_exclude_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate_element_user_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate_element_user_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate_element_user_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate_element_user_conditions'"
