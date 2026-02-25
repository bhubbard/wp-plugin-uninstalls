#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'urr_activation_redirect'
wp option delete 'ultimate_reviews_rocket_setting_options'
wp option delete 'ultimate_reviews_rocket_enable_options'
wp option delete 'ultimate_reviews_rocket_social_media_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'ultimate_reviews_rocket_options'
wp option delete 'new_admin_email'
wp option delete 'urr_social_options'

# Delete Transients
wp transient delete 'urr-admin-notice-activation'

