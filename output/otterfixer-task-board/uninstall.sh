#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'of_tb_mode'
wp option delete 'of_tb_allow_assign'
wp option delete 'of_tb_enable_notices'
wp option delete 'of_tb_categories'
wp option delete 'of_tb_widget_limit'
wp option delete 'of_tb_delete_data_on_uninstall'
wp option delete 'of_tb_shared_tasks'
wp option delete 'of_tb_shared_templates'
wp option delete 'of_tb_shared_log'

