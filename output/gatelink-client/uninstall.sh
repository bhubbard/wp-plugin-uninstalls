#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gatelink_used_nonces'

# Delete Transients
wp transient delete 'gatelink_client_nonce_cleanup_last_run'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gatelink_client_nonce_%' OR option_name LIKE '_site_transient_gatelink_client_nonce_%'"

