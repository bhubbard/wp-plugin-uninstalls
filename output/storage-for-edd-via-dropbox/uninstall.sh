#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbxe_rewrite_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dbxe_oauth_state_%' OR option_name LIKE '_site_transient_dbxe_oauth_state_%'"

