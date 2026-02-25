#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmptpkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmptpkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmptpkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmptpkey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmptp_exclude_post_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmptp_exclude_post_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmptp_exclude_post_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmptp_exclude_post_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmptp_exclude_term_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmptp_exclude_term_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmptp_exclude_term_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmptp_exclude_term_option'"
