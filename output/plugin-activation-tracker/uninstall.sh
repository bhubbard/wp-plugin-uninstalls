#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pat_activated_plugins_gwl'
wp option delete 'pat_display_relative_date_gwl'
wp option delete 'pat_display_after_days_remove_record_gwl'

