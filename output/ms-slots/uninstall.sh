#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ms_total_slots'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ms_slot_remarks%'"
wp option delete 'ms_slots_is_debug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ms_slot%'"

