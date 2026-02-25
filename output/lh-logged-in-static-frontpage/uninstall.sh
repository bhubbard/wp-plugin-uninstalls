#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lh_logged_in_static_show_on_front'
wp option delete 'lh_logged_in_static_frontpage_page_id'

