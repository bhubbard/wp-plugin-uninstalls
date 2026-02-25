#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bitffzc_erase_all'
wp option delete 'bitffzc_db_version'
wp option delete 'bitffzc_installed'
wp option delete 'bitffzc_version'
wp option delete 'bitffzc_routes'

