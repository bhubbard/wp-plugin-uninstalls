#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'goolytics_web_property_id'
wp option delete 'goolytics_anonymize_ip'
wp option delete 'goolytics_usercentrics_support'

