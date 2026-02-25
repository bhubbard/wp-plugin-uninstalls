#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ndu_today_date_format'
wp option delete 'ndu_convert_post_date'
wp option delete 'ndu_date_format_for_home'
wp option delete 'ndu_date_format'

