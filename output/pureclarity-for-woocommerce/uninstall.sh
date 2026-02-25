#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pureclarity_db_version'
wp option delete 'pureclarity_mode'
wp option delete 'pureclarity_accesskey'
wp option delete 'pureclarity_secretkey'
wp option delete 'pureclarity_region'
wp option delete 'pureclarity_nightly_feed_enabled'
wp option delete 'pureclarity_deltas_enabled'
wp option delete 'pureclarity_bmz_debug'
wp option delete 'pureclarity_add_bmz_homepage'
wp option delete 'pureclarity_add_bmz_searchpage'
wp option delete 'pureclarity_add_bmz_categorypage'
wp option delete 'pureclarity_add_bmz_productpage'
wp option delete 'pureclarity_add_bmz_basketpage'
wp option delete 'pureclarity_add_bmz_checkoutpage'
wp option delete 'pureclarity_category_feed_required'
wp option delete 'pureclarity_feed_debug_logging'
wp option delete 'pureclarity_product_feed_exclude_oos'
wp option delete 'pureclarity_env_subheading'
wp option delete 'pureclarity_feeds_subheading'
wp option delete 'pureclarity_zones_subheading'
wp option delete 'pureclarity_brandfeed_run'
wp option delete 'pureclarity_catfeed_run'
wp option delete 'pureclarity_delta_running'
wp option delete 'pureclarity_orderfeed_run'
wp option delete 'pureclarity_prodfeed_run'
wp option delete 'pureclarity_product_deltas'
wp option delete 'pureclarity_user_deltas'
wp option delete 'pureclarity_userfeed_run'

# Clear Cron Jobs
wp cron event delete 'pureclarity_requested_feeds_cron'
wp cron event delete 'pureclarity_nightly_feeds_cron'
wp cron event delete 'pureclarity_check_signup_status_cron'
wp cron event delete 'pureclarity_scheduled_deltas_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
