#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_ver'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_countries'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_ips'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_block_countries'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_block_ips'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_redirects'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bypass_roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_integration'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_actions_notices'"

# Delete Transients
wp transient delete 'rcil-debug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rcil-test-%' OR option_name LIKE '_site_transient_rcil-test-%'"
wp transient delete 'rcil-geo-method'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcil-user-lockout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcil-user-lockout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcil-user-lockout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcil-user-lockout'"
