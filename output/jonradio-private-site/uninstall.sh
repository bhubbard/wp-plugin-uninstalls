#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jr_ps_log'
wp option delete 'jr_ps_debug_mode'
wp option delete 'jr_ps_spam_guard_log'
wp option delete 'jr_ps_settings'
wp option delete 'jr_ps_internal_settings'
wp option delete 'jr_ps_first_run_time'
wp option delete 'jr_ps_activated'
wp option delete 'jr_ps_licenses'
wp option delete 'jr_ps_donate_log'
wp option delete 'jr_ps_robots_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
