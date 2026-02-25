#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'church_tithe_wp_wizard_status'
wp option delete 'church_tithe_wp_settings'
wp option delete 'ctwp_scsr'
wp option delete 'sendgrid_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'ctwp_threshold_reset'
wp option delete 'church_tithe_wp_just_activated'
wp option delete 'church_tithe_wp_stripe_country_code'
wp option delete 'church_tithe_wp_stripe_available_currencies'
wp option delete 'church_tithe_wp_stripe_product_id'

# Delete Transients
wp transient delete 'church_tithe_wp_mail_health_check_token'
wp transient delete 'church_tithe_wp_mail_health_check_success_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_church_tithe_wp_login_code_%' OR option_name LIKE '_site_transient_church_tithe_wp_login_code_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_church_tithe_wp_login_code_requests_%' OR option_name LIKE '_site_transient_church_tithe_wp_login_code_requests_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_mode' OR option_name LIKE '_site_transient_%_mode'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'church_tithe_wp_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'church_tithe_wp_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'church_tithe_wp_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'church_tithe_wp_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'church_tithe_wp_login_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'church_tithe_wp_login_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'church_tithe_wp_login_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'church_tithe_wp_login_attempts'"
