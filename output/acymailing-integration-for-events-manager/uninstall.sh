#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_ms_mainblog_locations'
wp option delete 'dbem_locations_page'
wp option delete 'dbem_ms_global_locations_links'
wp option delete 'dbem_ms_locations_slug'
wp option delete 'dbem_attributes_enabled'
wp option delete 'dbem_placeholders_custom'

