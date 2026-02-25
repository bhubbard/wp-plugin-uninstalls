#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtse-enable'
wp option delete 'rtse-enable-pages'
wp option delete 'rtse-widget-settings'
wp option delete 'rtse-widget-content'
wp option delete 'rtse-thankyou-widget-content'
wp option delete 'rtse-widget-content-logo'

