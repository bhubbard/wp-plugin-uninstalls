#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bwa_version'
wp option delete 'bwa_option_send_confirmation_email'
wp option delete 'bwa_option_check_if_user_exists'
wp option delete 'bwa_option_extend_if_user_exists'
wp option delete 'bwa_option_update_user_data'
wp option delete 'bwa_option_destination_email'
wp option delete 'bwa_options_email_include_password'
wp option delete 'rmt_option_create_login_link_existing_users'
wp option delete 'rmt_option_page_change_password'
wp option delete 'rmt_option_create_login_link_new_users'

