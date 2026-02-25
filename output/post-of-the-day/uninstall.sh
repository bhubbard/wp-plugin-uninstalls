#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'potd_categories'
wp option delete 'potd_amount'
wp option delete 'potd_interval'

