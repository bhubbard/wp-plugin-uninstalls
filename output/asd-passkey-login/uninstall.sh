#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asd_passkey_activation_notice'
wp option delete 'asd_p4ssk3y_admin_login_form_style'
wp option delete 'asd_p4ssk3y_key1'
wp option delete 'asd_p4ssk3y_webpush_public_key'
wp option delete 'asd_p4ssk3y_membership'
wp option delete 'asd_p4ssk3y_admin_password_confirmation'
wp option delete 'asd_p4ssk3y_key2'
wp option delete 'asd_p4ssk3y_web_id'
wp option delete 'asd_p4ssk3y_api_server'
wp option delete 'asd_p4ssk3y_eauth_url'
wp option delete 'asd_p4ssk3y_fedcm_url'
wp option delete 'asd_web_id'
wp option delete 'asd_google_client_id'
wp option delete 'asd_webpush_public_key'

