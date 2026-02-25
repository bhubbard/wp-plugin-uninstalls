#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_%'"
wp option delete 'radio_button_for_taxonomies_options'

