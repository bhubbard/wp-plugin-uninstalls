#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contactme_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'contactme_%'"

