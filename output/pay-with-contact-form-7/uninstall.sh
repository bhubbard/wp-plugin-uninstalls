#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcms_cf7pp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcmscf7_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcmscf7_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcmscf7_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcmscf7_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcmscf7_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcmscf7_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcmscf7_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcmscf7_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcmscf7_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcmscf7_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcmscf7_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcmscf7_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcmscf7_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcmscf7_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcmscf7_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcmscf7_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcmscf7_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcmscf7_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcmscf7_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcmscf7_email'"
