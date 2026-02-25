#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rapidmail_consumer_key'
wp option delete 'rapidmail_secret_key'
wp option delete 'rapidmail_connector'
wp option delete 'rapidmail_connector_newsletter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rapidmail_newsletter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rapidmail_newsletter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rapidmail_newsletter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rapidmail_newsletter'"
