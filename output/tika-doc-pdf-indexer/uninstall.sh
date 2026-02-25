#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tdpi_java_location'
wp option delete 'tdpi_tika_jar_location'
wp option delete 'tika_wp_content'
wp option delete 'tdpi_supported_ext'
wp option delete 'tdpi_index_attachments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'tdpi_enable_tdpi_cpt'

