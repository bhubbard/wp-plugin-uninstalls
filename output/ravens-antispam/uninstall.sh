#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_own_template_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_template_code'"
wp option delete 'ras_always_visible'
wp option delete 'ras_own_template_code'
wp option delete 'ras_template_code'

