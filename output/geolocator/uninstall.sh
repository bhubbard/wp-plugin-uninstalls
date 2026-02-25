#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geolocator_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_geolocator_hide_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_geolocator_hide_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_geolocator_hide_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_geolocator_hide_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_geolocator_redirect_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_geolocator_redirect_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_geolocator_redirect_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_geolocator_redirect_to'"
