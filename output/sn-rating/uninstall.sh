#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advanced_rating_setting'
wp option delete 'advanced_rating_settings'
wp option delete 'rating_theme_settings'
wp option delete 'rating_db_version'

