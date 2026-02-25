#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm_api_key'
wp option delete 'sm_list_id'
wp option delete 'sm_single_opt_in'

