#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authyo_otp_mf_settings'
wp option delete 'authyo_otp_mf_form_settings'
wp option delete 'authyo_otp_mf_country_list'
wp option delete 'authyo_otp_mf_country_list_updated_at'
wp option delete 'authyo_mf_email_subscription_dismissed'
wp option delete 'authyo_mf_email_subscription_completed'
wp option delete 'authyo_otp_mf_entry_file_index'

# Delete Transients
wp transient delete 'authyo_mf_show_email_subscription'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_authyo_otp_mf_verified_%' OR option_name LIKE '_site_transient_authyo_otp_mf_verified_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%:email' OR option_name LIKE '_site_transient_%:email'"

