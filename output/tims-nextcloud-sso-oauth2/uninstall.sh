#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tims_nso_login_type'
wp option delete 'tims_nso_debug_log'
wp option delete 'tims_persistent_data_type'
wp option delete 'tims_nso_address'
wp option delete 'tims_nso_client_id'
wp option delete 'tims_nso_client_secret'
wp option delete 'tims_nso_match'
wp option delete 'tims_nso_create_account'
wp option delete 'tims_nso_default_role'
wp option delete 'tims_nso_group_link'
wp option delete 'tims_nso_default_group_link_role'
wp option delete 'tims_nso_redirect_url'
wp option delete 'tims_nso_login_button'
wp option delete 'tims_nso_login_button_text'

