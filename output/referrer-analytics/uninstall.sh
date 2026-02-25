#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'referrer_analytics_options'
wp option delete 'referrer_analytics_db_version'

