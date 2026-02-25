#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blm_options'
wp option delete 'blm_options_wpml_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blm_options_wpml_%'"

