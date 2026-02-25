#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'surbma_premium_wp_google_analytics_fields'
wp option delete 'surbma_premium_wp_social_fields'
wp option delete 'surbma_premium_wp_google_tag_manager_fields'
wp option delete 'surbma_premium_wp_extra_fields'

