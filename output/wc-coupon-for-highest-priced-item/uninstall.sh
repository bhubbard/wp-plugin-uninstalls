#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mb-mc-coupon-disable-kofi'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_multiple_discounted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_multiple_discounted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_multiple_discounted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_multiple_discounted'"
