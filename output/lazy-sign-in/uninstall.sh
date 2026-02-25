#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsi_extra_fields'
wp option delete 'lsi_login_heading_text'
wp option delete 'lsi_signup_heading_text'
wp option delete 'lsi_login_redirect_link'
wp option delete 'lsi_signup_link'
wp option delete 'lsi_signup_redirect_link'
wp option delete 'lsi_login_link'
wp option delete 'lsi_terms_condition_link'
wp option delete 'lsi_signup_role'
wp option delete 'lsi_generate_username'
wp option delete 'lsi_generate_password'
wp option delete 'lsi_send_user_thankyou'

