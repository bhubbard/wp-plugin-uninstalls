#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'block_protocol_options'
wp option delete 'block_protocol_view_count'
wp option delete 'block_protocol_db_migration_version'

