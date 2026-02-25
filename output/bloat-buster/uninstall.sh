#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bbuster_disable_emoji'
wp option delete '_bbuster_disable_fse_global_styles'
wp option delete '_bbuster_remove_rsd_link'
wp option delete '_bbuster_remove_shortlink'
wp option delete '_bbuster_disable_embed'
wp option delete '_bbuster_disable_xmlrpc'
wp option delete '_bbuster_hide_wp_version'
wp option delete '_bbuster_disable_heartbeat'
wp option delete '_bbuster_dequeue_dashicon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_bbuster_%'"

# Delete Transients
wp transient delete '_import_success'

