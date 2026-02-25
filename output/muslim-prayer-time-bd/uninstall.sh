#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mptbd_general'
wp option delete 'mptbd_timecon'
wp option delete 'mptbd_review_pt'
wp option delete 'mptbd_activation_time'
wp option delete 'mptbd_plugin_version'

