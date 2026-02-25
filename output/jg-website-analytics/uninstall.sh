#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jgwa_inc_loggedIn'
wp option delete 'avea_display_annotations'
wp option delete 'jgwa_website_analytics_date'
wp option delete 'jgwa_version'
wp option delete 'jgwa_website_analytics_date_custom'

# Delete Transients
wp transient delete 'jgwa_notice_message'

