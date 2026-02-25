#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable-image'
wp option delete 'enable-products'
wp option delete 'post-per-page'

