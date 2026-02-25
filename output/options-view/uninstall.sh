#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'options-view'
wp option delete 'opv_per_page'
wp option delete 'opv_current_logs'
wp option delete 'opv_filter_user'
wp option delete 'optionsview_search_text'

