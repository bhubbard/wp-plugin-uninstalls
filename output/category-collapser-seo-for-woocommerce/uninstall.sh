#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccollapse_truncate_mode'
wp option delete 'ccollapse_truncate_amount'
wp option delete 'ccollapse_truncate_speed'
wp option delete 'ccollapse_show_more_text'
wp option delete 'ccollapse_hide_text'

