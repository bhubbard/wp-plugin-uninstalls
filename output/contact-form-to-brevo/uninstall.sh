#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfb_psd_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfb_psd_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfb_psd_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfb_psd_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfb_psd_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfb_psd_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfb_psd_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfb_psd_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfb_psd_update_existing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfb_psd_update_existing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfb_psd_update_existing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfb_psd_update_existing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfb_psd_credentials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfb_psd_credentials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfb_psd_credentials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfb_psd_credentials'"
