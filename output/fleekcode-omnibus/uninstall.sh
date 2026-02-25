#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fleekcode_omnibus_settings'
wp option delete 'fleekcode_omnibus_enabled'
wp option delete 'fleekcode_omnibus_text'
wp option delete 'fleekcode_omnibus_display_location'
wp option delete 'fleekcode_omnibus_price_position'
wp option delete 'fleekcode_omnibus_days'
wp option delete 'fleekcode_omnibus_min_price_display_mode'
wp option delete 'fleekcode_omnibus_display_method'
wp option delete 'fleekcode_omnibus_version'
wp option delete 'fleekcode_statistics_consent'
wp option delete 'fleekcode_statistics_consent_time'
wp option delete 'fleekcode_statistics_last_sent'

# Delete Transients
wp transient delete 'fleekcode_omnibus_updated_variations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fleekcode_hide_review_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fleekcode_hide_review_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fleekcode_hide_review_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fleekcode_hide_review_banner'"
