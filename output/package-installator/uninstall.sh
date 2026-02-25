#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpkginst_ssh_host'
wp option delete 'wpkginst_ssh_username'
wp option delete 'wpkginst_ssh_port'
wp option delete 'wpkginst_ssh_auth_type'
wp option delete 'wpkginst_ssh_private_key'
wp option delete 'wpkginst_ssh_last_error'
wp option delete 'wpkginst_ssh_password'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpkginst_progress_%' OR option_name LIKE '_site_transient_wpkginst_progress_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpkginst_output_%' OR option_name LIKE '_site_transient_wpkginst_output_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpkginst_installed_%' OR option_name LIKE '_site_transient_wpkginst_installed_%'"

