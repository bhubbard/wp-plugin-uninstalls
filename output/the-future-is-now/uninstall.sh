#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'futurenow_show_admin_as_published'
wp option delete 'futurenow_show_future_in_archives'
wp option delete 'futurenow_show_future_in_calendar'
wp option delete 'futurenow_post_types'

