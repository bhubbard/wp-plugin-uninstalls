#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'darc_nh_dashboard'
wp option delete 'darc_nh_adresse'
wp option delete 'darc_nh_port'
wp option delete 'darc_nh_account'
wp option delete 'darc_nh_key'
wp option delete 'darc_nh_currency'
wp option delete 'darc_nh_priceperiode'
wp option delete 'darc_nh_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'darc_nh_daid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'darc_nh_daid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'darc_nh_daid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'darc_nh_daid'"
