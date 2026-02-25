#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apa_cli_logo_file'
wp option delete 'apa_cli_logo_url'
wp option delete 'apa_cli_login_background_color'
wp option delete 'apa_cli_show_server_ip'
wp option delete 'apa_cli_show_server_hostname'

