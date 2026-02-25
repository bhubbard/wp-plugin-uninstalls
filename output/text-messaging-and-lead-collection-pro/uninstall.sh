#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmlcp_livecomm_bearer_token'
wp option delete 'tmlcp_livecomm_secret_detail'
wp option delete 'tmlcp_livecomm_user_detail'
wp option delete 'tmlcp_contact_forms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmlcp_form_mapping_%'"
wp option delete 'livecomm_default_phone_number'
wp option delete 'livecomm_default_contact_list'
wp option delete 'tmlcp_enable_plugin'
wp option delete 'tmlcp_enable_floating_plugin'

