#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'booking_version_num'
wp option delete 'booking_simulate_login_as_user'
wp option delete 'booking_date_format'
wp option delete 'booking_time_format'
wp option delete 'booking_feedback_03'
wp option delete 'booking_feedback_03_rating'
wp option delete 'booking_is_use_captcha'

# Delete Transients
wp transient delete '_booking_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
