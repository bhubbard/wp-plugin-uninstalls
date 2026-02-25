#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bitcf7zc_db_version'
wp option delete 'bitcf7zc_installed'
wp option delete 'bitcf7zc_version'
wp option delete 'bitcf7zc_erase_all'
wp option delete 'bitcf7zc_routes'

