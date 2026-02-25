#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'roam_update_token'
wp option delete 'roam_graph_content'
wp option delete 'roam_graph_name'
wp option delete 'roam_graph_update'

