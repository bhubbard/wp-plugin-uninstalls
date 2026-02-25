#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imgpro_cdn_batched_cache_key'
wp option delete 'imgpro_cdn_version'
wp option delete 'imgpro_cdn_settings'

# Delete Transients
wp transient delete 'imgpro_cdn_subscription_pending'
wp transient delete 'imgpro_cdn_pending_payment'
wp transient delete 'imgpro_cdn_payment_pending_recovery'
wp transient delete 'imgpro_cdn_site_data'
wp transient delete 'imgpro_cdn_tiers'
wp transient delete 'imgpro_cdn_last_sync'

