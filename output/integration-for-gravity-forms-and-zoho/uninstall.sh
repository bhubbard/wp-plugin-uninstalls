#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'igzf_zoho_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'igzf_zoho_fields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zoho_crm_module_data%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-reqfields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'igzf_data_form_%'"
wp option delete 'zoho_users_list'
wp option delete 'igzf_zoho_datacenter'
wp option delete 'igzf_zoho_client_id'
wp option delete 'igzf_zoho_client_secret'
wp option delete 'igzf_zoho_redirection_url'
wp option delete 'igzf_zoho_domain'
wp option delete 'igzf_zoho'
wp option delete 'ignbk_zohobooks_token'
wp option delete 'gf_zoho_notification_send_to'
wp option delete 'gf_zoho_notification_subject'
wp option delete 'zoho_module_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'igzf_zoho_action_%'"
wp option delete 'igzf_zoho_uninstall'

