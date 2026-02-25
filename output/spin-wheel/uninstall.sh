#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swp_settings'
wp option delete 'bdt_biggopti_dismissals'
wp option delete 'swp_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_swp_otp_%' OR option_name LIKE '_site_transient_swp_otp_%'"

# Clear Cron Jobs
wp cron event delete 'swp_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swp_wheel_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swp_wheel_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swp_wheel_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swp_wheel_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swp_wheel_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swp_wheel_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swp_wheel_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swp_wheel_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swp_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swp_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swp_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swp_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swp_prizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swp_prizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swp_prizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swp_prizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swp_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swp_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swp_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swp_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swp_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swp_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swp_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swp_form_settings'"
