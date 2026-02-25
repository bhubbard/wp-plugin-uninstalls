#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_slack_post_hook'
wp option delete 'wc_slack_default_channel'

