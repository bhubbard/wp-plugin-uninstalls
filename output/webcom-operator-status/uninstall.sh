#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webcom_operator_status_custom_css'
wp option delete 'webcom_operator_status_api_token'
wp option delete 'webcom_operator_status_hide_no_alias'
wp option delete 'webcom_operator_status_online_image'
wp option delete 'webcom_operator_status_pause_image'
wp option delete 'webcom_operator_status_calling_image'
wp option delete 'webcom_operator_status_offline_image'
wp option delete 'webcom_operator_status_enable_whitelist'
wp option delete 'webcom_operator_status_whitelist'
wp option delete 'webcom_operator_status_with_login'
wp option delete 'webcom_operator_status_with_logout'
wp option delete 'webcom_operator_status_with_unreachable'
wp option delete 'webcom_operator_status_group_name'
wp option delete 'webcom_operator_status_operator_sort'
wp option delete 'webcom_operator_status_priority'
wp option delete 'webcom_operator_status_with_name'
wp option delete 'webcom_operator_status_with_status'

