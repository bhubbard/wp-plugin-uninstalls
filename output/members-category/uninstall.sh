#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sabaohmemcat_%'"
wp option delete 'sabaohmemcat_filtercontent'
wp option delete 'sabaohmemcat_filterreplace'

