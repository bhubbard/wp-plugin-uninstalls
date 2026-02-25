#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'obi_popup_anyway_url'
wp option delete 'obi_popup_anyway_time'
wp option delete 'obi_popup_anyway_cookie'

