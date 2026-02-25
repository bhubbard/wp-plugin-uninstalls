#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'ecomm-reels_rate_us'
wp transient delete 'ecomm-reels_never_show_notice'

