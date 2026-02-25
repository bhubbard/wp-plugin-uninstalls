#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixengine_lazy_loading_enabled'
wp option delete 'pixengine_responsive_enabled'
wp option delete 'pixengine_picture_element'
wp option delete 'pixengine_quality'
wp option delete 'pixengine_max_width'
wp option delete 'pixengine_output_format'
wp option delete 'pixengine_avif_quality'
wp option delete 'pixengine_lazy_loading_exclude_first'
wp option delete 'pixengine_cache_enabled'
wp option delete 'pixengine_cache_max_age'
wp option delete 'pixengine_newsletter_dismissed'
wp option delete 'pixengine_usage_data'

# Clear Cron Jobs
wp cron event delete 'pixengine_monthly_reset'

