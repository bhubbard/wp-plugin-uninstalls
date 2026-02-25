#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpah_config_convert_404_to_200'
wp option delete 'wpah_config_wp_admin_new_url'
wp option delete 'wpah_config_syslog'
wp option delete 'wpah_config_apikey'
wp option delete 'wpah_config_block_brute_force'
wp option delete 'wpah_config_block_version'
wp option delete 'wpah_config_block_fingerprint'
wp option delete 'wpah_config_block_rpc'
wp option delete 'wpah_config_add_security_header'
wp option delete 'wpah_config_block_directory_listing'
wp option delete 'wpah_config_block_proxy'
wp option delete 'wpah_config_block_tor'
wp option delete 'wpah_config_block_injection'
wp option delete 'wpah_config_block_scanner'
wp option delete 'wpah_config_add_footer'

