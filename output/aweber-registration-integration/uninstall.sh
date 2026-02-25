#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awr_installed'
wp option delete 'awr_form_id'
wp option delete 'awr_list_name'
wp option delete 'awr_disabled'
wp option delete 'awr_opt_in'
wp option delete 'awr_unit_name'

