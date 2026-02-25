#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adroll_adv_eid'
wp option delete 'adroll_pixel_eid'
wp option delete 'adroll_do_activation_redirect'
wp option delete 'admin_notice_success'
wp option delete 'admin_notice_warning'
wp option delete 'adroll_do_activation'
wp option delete 'adroll_do_deactivation'
wp option delete 'adroll_final_attempt_date'
wp option delete 'adroll_initial_setup_date'
wp option delete 'adroll_last_attempted_date'
wp option delete 'adroll_pixel_inject_attempts'
wp option delete 'adroll_plugin_silenced'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'adroll_pixel_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'adroll_pixel_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'adroll_pixel_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'adroll_pixel_%'"
