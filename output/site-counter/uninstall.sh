#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sitecounter_start'
wp option delete 'sitecounter_cookies'
wp option delete 'sitecounter_help'
wp option delete 'sitecounter_visit_day'

