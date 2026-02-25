#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'external_db_type'
wp option delete 'external_host'
wp option delete 'external_db_port'
wp option delete 'external_db'
wp option delete 'external_db_user'
wp option delete 'external_db_pw'
wp option delete 'external_db_table'
wp option delete 'external_db_namefield'
wp option delete 'external_db_pwfield'
wp option delete 'external_db_first_name'
wp option delete 'external_db_last_name'
wp option delete 'external_db_user_url'
wp option delete 'external_db_user_email'
wp option delete 'external_db_description'
wp option delete 'external_db_aim'
wp option delete 'external_db_yim'
wp option delete 'external_db_jabber'
wp option delete 'external_db_enc'
wp option delete 'external_db_other_enc'
wp option delete 'external_db_error_msg'
wp option delete 'external_db_role_bool'
wp option delete 'external_db_role'
wp option delete 'external_db_role_value'
wp option delete 'external_db_site_url'

