#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_token'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mail-integration-365-oauth2-auth-url' OR option_name LIKE '_site_transient_%mail-integration-365-oauth2-auth-url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mail-integration-365-oauth2-state' OR option_name LIKE '_site_transient_%mail-integration-365-oauth2-state'"

