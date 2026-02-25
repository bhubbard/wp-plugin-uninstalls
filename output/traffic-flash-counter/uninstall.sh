#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ip_already_exists'"
wp option delete 'counter_tfc_name'

