#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajdg_matomo_siteid'
wp option delete 'ajdg_matomo_siteurl'
wp option delete 'ajdg_matomo_active'
wp option delete 'ajdg_matomo_track_feed_clicks'
wp option delete 'ajdg_matomo_track_error_pages'
wp option delete 'ajdg_matomo_track_incognito'
wp option delete 'ajdg_matomo_heartbeat_enable'
wp option delete 'ajdg_matomo_wc_downloads'
wp option delete 'ajdg_matomo_track_feed_impressions'
wp option delete 'ajdg_matomo_high_accuracy'
wp option delete 'ajdg_matomo_hide_review'
wp option delete 'ajdg_activate_matomo-analytics'

# Delete Transients
wp transient delete 'ajdg_update_matomo-analytics'

