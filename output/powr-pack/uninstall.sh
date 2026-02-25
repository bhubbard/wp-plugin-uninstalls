#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'powr_token'
wp option delete 'powr_powr_pack_plugin_do_activation_redirect'
wp option delete 'powr_install_time'

