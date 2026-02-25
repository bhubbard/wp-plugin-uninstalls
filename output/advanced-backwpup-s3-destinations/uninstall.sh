#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advanced_backwpup_s3_destinations'
wp option delete 'advanced_backwpup_s3_destinations_append'

