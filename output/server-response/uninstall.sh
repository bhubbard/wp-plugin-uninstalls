#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'remove_wp_json'
wp option delete 'remove_rest_output_link_header'
wp option delete 'remove_wp_shortlink_header'
wp option delete 'create_expires'

