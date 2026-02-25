#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ihs_otp_form_selector'
wp option delete 'ihs_otp_submit_btn-selector'
wp option delete 'ihs_otp_mobile_input_required'
wp option delete 'ihs_otp_mobile_input_name'
wp option delete 'ihs_otp_login_form_selector'
wp option delete 'ihs_otp_country_code'
wp option delete 'ihs_otp_msg_template'
wp option delete 'ihs_otp_auth_key'
wp option delete 'ihs_otp_sender_id'
wp option delete 'ihs_otp_mob_meta_key'
wp option delete 'ihs_otp_reset_template'
wp option delete 'ihs_otp_mob_country_code'

