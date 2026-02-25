#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rdf_tools_%'"
wp option delete 'rdf_tools_endpoint_read_key'
wp option delete 'rdf_tools_endpoint_write_key'
wp option delete 'rdf_tools_endpoint_src_file'

# Clear Cron Jobs
wp cron event delete 'lh_tools_load_endpoint_hourly'

