#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'trustio_customer_notes_nmbr_of_customer_notes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'trustio_customer_notes_customer_note_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

