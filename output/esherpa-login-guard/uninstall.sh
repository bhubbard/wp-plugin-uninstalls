#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esherpa_login_guard_max_attempts'
wp option delete 'esherpa_login_guard_base_minutes'
wp option delete 'esherpa_login_guard_protected_usernames'
wp option delete 'esherpa_login_guard_disable_xmlrpc'
wp option delete 'esherpa_login_guard_xmlrpc_fake_users'
wp option delete 'esherpa_login_guard_disable_rest_users'
wp option delete 'esherpa_login_guard_block_author_archive'
wp option delete 'esherpa_login_guard_cleanup_days'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_esherpa_attempts_%' OR option_name LIKE '_site_transient_esherpa_attempts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_esherpa_lockout_%' OR option_name LIKE '_site_transient_esherpa_lockout_%'"

# Clear Cron Jobs
wp cron event delete 'esherpa_login_guard_cleanup_event'

