#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'anti_block_settings'
wp option delete 'anti_block_deferred_admin_notices'

