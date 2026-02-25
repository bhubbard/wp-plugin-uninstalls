#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_trigger_github_last_triggered_timestamp'
wp option delete 'ga_option_token'
wp option delete 'ga_option_username'
wp option delete 'ga_option_repo'
wp option delete 'ga_option_workflow'

