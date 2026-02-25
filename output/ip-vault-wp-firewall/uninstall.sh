#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipv_count_blocked'
wp option delete 'ipv_log_keep_days'
wp option delete 'ipv_modus'
wp option delete 'ipv_request_includes'
wp option delete 'ipv_request_excludes'
wp option delete 'ipv_auth_slug'
wp option delete 'ipv_gdpr_ips'
wp option delete 'ipv_use_asn'
wp option delete 'ipv_home_path'
wp option delete 'ipv_whitelist'
wp option delete 'ipv_auth_page_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ipv_ip_%' OR option_name LIKE '_site_transient_ipv_ip_%'"

# Clear Cron Jobs
wp cron event delete 'ipv_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
