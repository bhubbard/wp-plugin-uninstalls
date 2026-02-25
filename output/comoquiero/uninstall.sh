#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qcart_key'
wp option delete 'qcart_supermarket'
wp option delete 'qcart_brands'

