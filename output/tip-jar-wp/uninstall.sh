#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tip_jar_wp_wizard_status'
wp option delete 'tip_jar_wp_settings'
wp option delete 'tjwp_scsr'
wp option delete 'sendgrid_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'tip_jar_wp_just_activated'
wp option delete 'tip_jar_wp_stripe_country_code'
wp option delete 'tip_jar_wp_stripe_available_currencies'
wp option delete 'tip_jar_wp_stripe_product_id'

# Delete Transients
wp transient delete 'tip_jar_wp_mail_health_check_token'
wp transient delete 'tip_jar_wp_mail_health_check_success_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tip_jar_wp_login_code_%' OR option_name LIKE '_site_transient_tip_jar_wp_login_code_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tip_jar_wp_login_code_requests_%' OR option_name LIKE '_site_transient_tip_jar_wp_login_code_requests_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tjwp_file_download_%' OR option_name LIKE '_site_transient_tjwp_file_download_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_mode' OR option_name LIKE '_site_transient_%_mode'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tip_jar_wp_login_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tip_jar_wp_login_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tip_jar_wp_login_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tip_jar_wp_login_attempts'"
