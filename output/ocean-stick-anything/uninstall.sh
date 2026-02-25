#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'osa_stick_elements'
wp option delete 'osa_stick_offset'
wp option delete 'osa_unstick'
wp option delete 'osa_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'osa_%'"

