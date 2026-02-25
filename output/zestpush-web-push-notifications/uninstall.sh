#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_plugin_option'
wp option delete 'zest_status'
wp option delete 'zest_plan'
wp option delete 'zest_metastatus'
wp option delete 'zest_segmentstatus'
wp option delete 'zest_serviceworker'
wp option delete 'zest_init_status'
wp option delete 'activate_zest'
wp option delete 'zest_active_api'
wp option delete 'zest_user_id'
wp option delete 'zest_site_id'
wp option delete 'zest_endpoint'
wp option delete 'zest_domain'
wp option delete 'zestpush_push_response'

