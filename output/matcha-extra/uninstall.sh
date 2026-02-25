#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'matcha_extra_activated_notice'
wp transient delete 'matcha_wishlist_table_checked'

