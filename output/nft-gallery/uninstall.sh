#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nftgallery-api'
wp option delete 'nftgallery-type'
wp option delete 'nftgallery-limit'
wp option delete 'nftgallery-style'
wp option delete 'nftgallery-id'

