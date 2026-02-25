#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safeshop_option_name'
wp option delete 'safeshop_status'
wp option delete 'safeshop_client_id'
wp option delete 'safeshop_client_secret'

