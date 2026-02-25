#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpss_settings_options'
wp option delete 'wpss_db_advanced_info'
wp option delete 'wpss_donate_notice'

# Delete Transients
wp transient delete 'wpss_server_location'
wp transient delete 'wpss_cpu_count'
wp transient delete 'wpss_cpu_core_count'
wp transient delete 'wpss_server_os'
wp transient delete 'wpss_db_software'
wp transient delete 'wpss_db_version'
wp transient delete 'wpss_db_max_connection'
wp transient delete 'wpss_db_max_packet_size'
wp transient delete 'wpss_db_disk_usage'
wp transient delete 'wpss_db_index_disk_usage'
wp transient delete 'wpss_php_max_upload_size'
wp transient delete 'wpss_php_max_post_size'
wp transient delete 'wpss-donate-notice'
wp transient delete 'wpss_total_ram'

