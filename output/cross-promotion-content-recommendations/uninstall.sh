#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'engageya_params_layout_type_id'
wp option delete 'engageya_params_opt'
wp option delete 'engageya_params_token'
wp option delete 'engageya_params_user_id'

