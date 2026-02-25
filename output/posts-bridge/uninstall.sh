#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posts-bridge-jwt-secret'
wp option delete 'posts-bridge_general'
wp option delete 'posts-bridge_wp'
wp option delete 'posts-bridge_wp-rest'
wp option delete 'posts-bridge_rest-api'
wp option delete 'posts-bridge_rest'
wp option delete 'http-bridge_general'
wp option delete 'posts-bridge_http'
wp option delete '_posts_bridge_detach_queue'

