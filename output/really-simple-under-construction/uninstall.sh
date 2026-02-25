#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsuc-enable'
wp option delete 'rsuc-enable-homepage'
wp option delete 'rsuc-ip'
wp option delete 'rsuc-secret-word'
wp option delete 'rsuc-cookie-time'
wp option delete 'rsuc-html'

