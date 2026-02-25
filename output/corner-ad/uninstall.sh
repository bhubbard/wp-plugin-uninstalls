#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CORNER_AD_PLUGIN_VERSION'
wp option delete 'corner_ad_analytics'
wp option delete 'corner_ad_analytics_tracking_id'
wp option delete 'corner_ad_default_ad'
wp option delete 'corner_ad_random_ad'
wp option delete 'corner_ad_context'
wp option delete 'corner_ad_posttypes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

