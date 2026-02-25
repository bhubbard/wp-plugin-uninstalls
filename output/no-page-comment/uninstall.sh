#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sta_npc_has_ecc'
wp option delete 'sta_npc_ecc_notif'
wp option delete 'sta_npc_version'
wp option delete 'sta_npc_admin_options_name'
wp option delete 'sta_npc_options'
wp option delete 'sta_npc_activation'

