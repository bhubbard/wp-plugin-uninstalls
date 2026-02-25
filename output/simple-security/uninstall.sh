#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'users_page_access_log_per_page'
wp option delete 'simple-security-ip-blacklist'
wp option delete 'simple-security-settings'
wp option delete 'simple_security_db_version'
wp option delete 'simple_security_plugin'
wp option delete 'simple_security'
wp option delete 'simple_security_installed'
wp option delete 'simple_security_ip_blacklist'

# Delete Transients
wp transient delete 'simple_security_nag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
