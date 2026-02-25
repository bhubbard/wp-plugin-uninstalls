#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpforms_status'
wp option delete 'cf7ic-ajax'
wp option delete 'cf7ic_plugin_do_activation_redirect'
wp option delete 'cf7ic_timestamp'

