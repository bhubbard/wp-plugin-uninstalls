#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickgoogleanalytics_ua'
wp option delete 'quickgoogleanalytics_g'
wp option delete 'quickgoogleanalytics_select'
wp option delete 'quickgoogleanalytics_ip'

