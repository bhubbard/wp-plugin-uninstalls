#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fms_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fms_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fms_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fms_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fms_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fms_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fms_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fms_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_epb_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_epb_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_epb_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_epb_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epb_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epb_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epb_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epb_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fmsr_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fmsr_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fmsr_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fmsr_form_id'"
