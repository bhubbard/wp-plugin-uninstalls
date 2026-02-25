#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hclpage'
wp option delete 'error_msg_database_bproductiv_lite_version'
wp option delete 'tasks_database_bproductiv_lite_version'
wp option delete 'calendar_database_bproductiv_lite_version'
wp option delete 'user_info_database_bproductiv_lite_version'
wp option delete 'bproductiv_delete_data'
wp option delete 'bproductiv_time_zone'
wp option delete 'bproductiv_date_format'
wp option delete 'bproductiv_super_admin'
wp option delete 'bproductiv_default_email'

