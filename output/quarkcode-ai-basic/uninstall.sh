#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quarkcode_enable_gallery'
wp option delete 'quarkcode_max_images_session'
wp option delete 'quarkcode_enable_continuous_editing'
wp option delete 'quarkcode_primary_color'
wp option delete 'quarkcode_secondary_color'
wp option delete 'quarkcode_button_color'
wp option delete 'quarkcode_text_color'
wp option delete 'quarkcode_background_style'
wp option delete 'quarkcode_api_key'
wp option delete 'quarkcode_rate_limit_hour'
wp option delete 'quarkcode_rate_limit_day'
wp option delete 'quarkcode_rate_limit_month'
wp option delete 'quarkcode_allowed_roles'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_quarkcode_rate_hour_%' OR option_name LIKE '_site_transient_quarkcode_rate_hour_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quarkcode_dismissed_premium_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quarkcode_dismissed_premium_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quarkcode_dismissed_premium_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quarkcode_dismissed_premium_notice'"
