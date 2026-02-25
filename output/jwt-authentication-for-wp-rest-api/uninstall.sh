#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwt_auth_options'
wp option delete 'jwt_auth_dismissed_notices'
wp option delete 'woocommerce_version'
wp option delete 'jwt_auth_install_date'
wp option delete 'jwt_auth_tokens_created'

# Clear Cron Jobs
wp cron event delete 'jwt_auth_share_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwt_auth_survey_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwt_auth_survey_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwt_auth_survey_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwt_auth_survey_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwt_auth_survey_dismissal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwt_auth_survey_dismissal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwt_auth_survey_dismissal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwt_auth_survey_dismissal'"
