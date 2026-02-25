#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kbtam_content_updated'
wp option delete 'kbtam_activation_date'
wp option delete 'kbtam_show_rating'
wp option delete 'kbtam_black_friday_dismissed'
wp option delete 'widget_kantbtrue_about_me'

