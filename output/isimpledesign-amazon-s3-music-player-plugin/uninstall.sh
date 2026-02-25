#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'isd-amazon_key'
wp option delete 'isd-amazon_secret_key'
wp option delete 'isd-bucket'
wp option delete 'isd-folder'

