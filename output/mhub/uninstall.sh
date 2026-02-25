#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mhub_do_activation_redirect'
wp option delete 'mhub_wp_target_url'

