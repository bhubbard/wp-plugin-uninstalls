#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailpoet_bbpress_subscribe_too'
wp option delete 'mailpoet_bbpress_addon_version'
wp option delete 'mailpoet_bbpress_addon_db_version'
wp option delete '_mailpoet_bbpress_addon_needs_update'
wp option delete '_bbp_mailpoet_lists'
wp option delete '_bbp_enable_mailpoet_checkbox_on_registration'
wp option delete '_bbp_mailpoet_checkbox_label'
wp option delete '_bbp_precheck_mailpoet_checkbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbpress_user_subscribe_to_mailpoet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbpress_user_subscribe_to_mailpoet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbpress_user_subscribe_to_mailpoet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbpress_user_subscribe_to_mailpoet'"
