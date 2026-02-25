#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xas_chat_name'
wp option delete 'xas_chat_pass'
wp option delete 'xas_list_member'
wp option delete 'xas_mainowner_title'
wp option delete 'xas_owner_title'
wp option delete 'xas_mod_title'
wp option delete 'xas_member_title'
wp option delete 'xas_rank_title'
wp option delete 'xas_name_title'
wp option delete 'xas_user_title'
wp option delete 'xas_main_title'

