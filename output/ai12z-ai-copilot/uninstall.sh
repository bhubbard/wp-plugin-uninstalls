#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai12z_control_version'
wp option delete 'ai12z_version'
wp option delete 'ai12z_api_key'
wp option delete 'ai12z_connector_id'
wp option delete 'ai12z_project_id'

