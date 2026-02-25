#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'analytics_simple_cookie_control'
wp option delete 'customizer_simple_cookie_control'

