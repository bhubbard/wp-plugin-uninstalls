#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'juridicos_form_mapping_%'"
wp option delete 'juridicos_status_default'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'juridicos_last_submission_%'"
wp option delete 'juridicos_form'
wp option delete 'juridicos_settings'

