#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emediafinderdb_cdn_prefix'
wp option delete 'emediafinderdb_entermediakey'
wp option delete 'emediafinderdb_collectionid'
wp option delete 'emediafinderdb_enabled_users'
wp option delete 'emediafinderdb_adminkey'
wp option delete 'emediafinderdb_main_server'
wp option delete 'emediafinderdb-publish_options'
wp option delete 'emediafinderdb_email'

