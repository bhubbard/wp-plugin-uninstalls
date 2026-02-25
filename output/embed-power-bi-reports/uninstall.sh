#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_epbr_admin_email'
wp option delete 'mo_epbr_admin_password'
wp option delete 'mo_epbr_registration_status'
wp option delete 'mo_epbr_verify_customer'
wp option delete 'mo_epbr_add_sso_button_wp'
wp option delete 'mo_epbr_admin_phone'
wp option delete 'mo_epbr_admin_customer_key'
wp option delete 'mo_epbr_add_filters_pane'
wp option delete 'mo_epbr_add_page_navigation'
wp option delete 'mo_epbr_notice_message'
wp option delete 'mo_epbr_power_bi_url'
wp option delete 'mo_epbr_admin_api_key'
wp option delete 'mo_epbr_customer_token'

