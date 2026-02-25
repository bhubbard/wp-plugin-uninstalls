#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lorybot_options'
wp option delete 'lorybot_server_url'
wp option delete 'lorybot_version'
wp option delete 'lorybot_do_activation_redirect'

