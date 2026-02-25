#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'bliz_hash'
wp option delete 'bliz_domain'

# Delete Transients
wp transient delete 'bliz_hash_transient'
wp transient delete 'bliz_domain_transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'needJetpackMessage_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'needJetpackMessage_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'needJetpackMessage_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'needJetpackMessage_dismissed'"
