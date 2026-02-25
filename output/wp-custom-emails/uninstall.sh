#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtbp_ce_settings'
wp option delete 'adminhash'
wp option delete 'site_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_new_email'"

