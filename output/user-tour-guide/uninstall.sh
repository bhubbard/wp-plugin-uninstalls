#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'utg_tour_option'
wp option delete 'start_immidiately'
wp option delete 'auto_start_for_new_user'
wp option delete 'show_begin_tour'
wp option delete 'show_dots'
wp option delete 'show_close_button'
wp option delete 'show_prev_button'
wp option delete 'show_next_button'
wp option delete 'show_step_progress'
wp option delete 'enable_keyboard_control'
wp option delete 'exit_on_escape'
wp option delete 'exit_on_click_outside'
wp option delete 'utgk_plugin_activation_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'utg_admin_tour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'utg_admin_tour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'utg_admin_tour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'utg_admin_tour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'utgk_plugin_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'utgk_plugin_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'utgk_plugin_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'utgk_plugin_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'utgk_plugin_review_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'utgk_plugin_review_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'utgk_plugin_review_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'utgk_plugin_review_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'utgk_plugin_review_later_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'utgk_plugin_review_later_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'utgk_plugin_review_later_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'utgk_plugin_review_later_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'complete_or_skip_tour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'complete_or_skip_tour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'complete_or_skip_tour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'complete_or_skip_tour'"
