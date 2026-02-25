#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_post_status_post_types'
wp option delete 'wp_post_status_groups'
wp option delete 'wp_post_status_rules'
wp option delete 'wp_post_status_email'

