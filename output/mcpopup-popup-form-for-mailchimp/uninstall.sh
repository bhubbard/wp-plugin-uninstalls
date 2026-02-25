#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcpup_settings_reset'
wp option delete 'mcpup_c_time'
wp option delete 'mcpup_h_title'
wp option delete 'mcpup_para'
wp option delete 'mcpup_promise'
wp option delete 'mcpup_fname_text'
wp option delete 'mcpup_lname_text'
wp option delete 'mcpup_email_text'
wp option delete 'mcpup_submit_text'
wp option delete 'mcpup_fname'
wp option delete 'mcpup_lname'
wp option delete 'mcpup_e_users'
wp option delete 'mcpup_api_key'
wp option delete 'mcpup_list_id'

