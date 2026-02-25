#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sasm-options-role'
wp option delete 'sasm-encrypted-data'
wp option delete 'sasm_enable_logs'

