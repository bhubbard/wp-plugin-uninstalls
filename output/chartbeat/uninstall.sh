#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chartbeat_userid'
wp option delete 'chartbeat_enable_newsbeat'
wp option delete 'chartbeat_apikey'
wp option delete 'chartbeat_trackadmins'
wp option delete 'chartbeat_enable_headline_testing'
wp option delete 'chartbeat_widgetconfig'

