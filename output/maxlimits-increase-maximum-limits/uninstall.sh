#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maxlimits_tracking_pending'
wp option delete 'maxlimits_allow_tracking'
wp option delete 'maxlimits_just_activated'
wp option delete 'maxlimits_insights_consent'
wp option delete 'maxlimits_install_event_sent'
wp option delete 'woocommerce_default_country'
wp option delete 'maxlimits_version_tracked'

# Delete Transients
wp transient delete 'maxlimits_insights_notice_dismissed'
wp transient delete 'maxlimits_shop_notice_data'

