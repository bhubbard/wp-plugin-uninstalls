#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_yandexmetrika'
wp option delete 'metrika_counter'
wp option delete 'metrika_admintracking'
wp option delete 'metrika_position'

