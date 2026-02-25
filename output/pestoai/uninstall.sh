#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pestoai_%'"
wp option delete 'pestoai_console_url'

# Delete Transients
wp transient delete 'pestoai_activation_notice'
wp transient delete 'pestoai_activation_fail_notice'

