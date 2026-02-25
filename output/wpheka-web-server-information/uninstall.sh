#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpheka_web_server_db_advanced_info'
wp option delete 'wpheka_web_server_info_version'

# Delete Transients
wp transient delete 'wpheka_web_server_db_software'
wp transient delete 'wpheka_web_server_db_version'
wp transient delete 'wpheka_web_server_db_max_connection'
wp transient delete 'wpheka_web_server_db_max_packet_size'
wp transient delete 'wpheka_web_server_db_disk_usage'
wp transient delete 'wpheka_web_server_db_index_disk_usage'
wp transient delete 'wpheka_web_server_os'
wp transient delete 'wpheka_web_server_location'

