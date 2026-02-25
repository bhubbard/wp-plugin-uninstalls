#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wqm_vcf_qrcode_att_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wqm_vcf_qrcode_att_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wqm_vcf_qrcode_att_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wqm_vcf_qrcode_att_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wqm_is_static_qrcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wqm_is_static_qrcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wqm_is_static_qrcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wqm_is_static_qrcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wqm_is_static_vcfqrcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wqm_is_static_vcfqrcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wqm_is_static_vcfqrcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wqm_is_static_vcfqrcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
