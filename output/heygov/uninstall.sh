#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heygov_id'
wp option delete 'heygov_features'
wp option delete 'heygov_btn_text'
wp option delete 'heygov_btn_position'
wp option delete 'heygov_location_required'
wp option delete 'heygov_banner'
wp option delete 'heygov_banner_bg_color'
wp option delete 'heygov_banner_img_big'
wp option delete 'heygov_banner_img_small'
wp option delete 'heygov_api_key'

# Delete Transients
wp transient delete 'heygov-venues'
wp transient delete 'forms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_venue-%' OR option_name LIKE '_site_transient_venue-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'heygov_venues'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'heygov_venues'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'heygov_venues'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'heygov_venues'"
