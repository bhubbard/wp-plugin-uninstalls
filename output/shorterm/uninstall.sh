#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shorterm_db_version'

# Delete Transients
wp transient delete 'shorterm_all_links'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_shorterm_link_%' OR option_name LIKE '_site_transient_shorterm_link_%'"

