#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feedback_farm_projectId'
wp option delete 'feedback_farm_selected_menu'
wp option delete 'feedback_farm_end_image_url'
wp option delete 'feedback_farm_identifier'
wp option delete 'feedback_farm_localization'
wp option delete 'feedback_farm_page_name'
wp option delete 'feedback_farm_theme'
wp option delete 'feedback_farm_types'

