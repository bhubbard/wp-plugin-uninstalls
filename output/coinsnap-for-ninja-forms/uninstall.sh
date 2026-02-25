#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ninja_forms_coinsnap'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ninja_forms_settings_coinsnap_webhook_%'"

