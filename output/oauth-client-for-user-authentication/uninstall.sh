#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user_sso'
wp option delete 'oc_clientscope'
wp option delete 'oc_client_authorization'
wp option delete 'oc_appname'
wp option delete 'oc_apptype'
wp option delete 'settings_saved'
wp option delete 'test_configuration'
wp option delete 'test_data_format'
wp option delete 'oc_uname'
wp option delete 'oc_uemail'
wp option delete 'oc_clientid'
wp option delete 'oc_client_request_in_body'
wp option delete 'oc_client_token_endpoint'
wp option delete 'oc_clientsecret'
wp option delete 'oc_client_userinfo_endpoint'
wp option delete 'oc_selectedserver'
wp option delete 'oc_client_request_in_header'
wp option delete 'saved_attribute_mapping'
wp option delete 'restrictWPUserCreation'
wp option delete 'oc_attributes_names_received'
wp option delete 'ADgroups'
wp option delete 'reasonToRestrictWPUser'

# Delete Transients
wp transient delete 'update_core'

