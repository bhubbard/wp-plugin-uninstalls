#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pausepage_enabled'
wp option delete 'pausepage_page_id'

