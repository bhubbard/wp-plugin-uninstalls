#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clarity_project_id'
wp option delete 'clarity_wordpress_site_id'
wp option delete 'clarity_is_latest_plugin_version'
wp option delete 'clarity_is_agent_enabled'
wp option delete 'clarity_activation_redirect'
wp option delete 'clarity_collect_batch'

