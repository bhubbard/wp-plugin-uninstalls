#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_never_expire_activation_time'
wp option delete 'gf_never_expire_plugin_notices_dismissed'
wp option delete 'gf_never_expire_load_position'

