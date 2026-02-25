#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webappmanifest_content'
wp option delete 'wpswmanager_registrations'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpservefile_files_%' OR option_name LIKE '_site_transient_wpservefile_files_%'"

