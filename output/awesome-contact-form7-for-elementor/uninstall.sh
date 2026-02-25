#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_close_date'"
wp option delete 'aep_ac7_notice'

