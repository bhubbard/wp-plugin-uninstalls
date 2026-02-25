#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfelr_cf_health'
wp option delete 'cfelr_sample_link_created'
wp option delete 'cfelr_plugin_version'
wp option delete 'cfelr_edge_enabled'
wp option delete 'cfelr_reconcile_log'
wp option delete 'cfelr_settings'
wp option delete 'cfelr_cf_token_encrypted'
wp option delete 'cfelr_last_publish'
wp option delete 'cfelr_cf_route_id'

# Delete Transients
wp transient delete 'cfelr_form_errors'
wp transient delete 'cfelr_form_data'
wp transient delete 'cfelr_import_error'
wp transient delete 'cfelr_import_results'
wp transient delete 'cfelr_edge_publish_debounce'

# Clear Cron Jobs
wp cron event delete 'cfelr_reconcile'

