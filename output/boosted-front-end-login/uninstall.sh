#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boosted_frontend_login_lost_password_page_id'
wp option delete 'boosted_frontend_login_registration_page_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_boosted_frontend_login_login_error_%' OR option_name LIKE '_site_transient_boosted_frontend_login_login_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_boosted_frontend_login_lost_password_error_%' OR option_name LIKE '_site_transient_boosted_frontend_login_lost_password_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_boosted_frontend_login_lost_password_message_%' OR option_name LIKE '_site_transient_boosted_frontend_login_lost_password_message_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_boosted_frontend_login_registration_error_%' OR option_name LIKE '_site_transient_boosted_frontend_login_registration_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_boosted_frontend_login_registration_message_%' OR option_name LIKE '_site_transient_boosted_frontend_login_registration_message_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_boosted_frontend_login_verification_message_%' OR option_name LIKE '_site_transient_boosted_frontend_login_verification_message_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_boosted_frontend_login_verification_error_%' OR option_name LIKE '_site_transient_boosted_frontend_login_verification_error_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_verification_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_verification_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_verification_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_verification_key'"
