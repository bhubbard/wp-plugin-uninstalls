#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'links_recently_updated_prepend'
wp option delete 'links_updated_date_format'
wp option delete 'links_recently_updated_append'
wp option delete 'simplysociallink-options'

