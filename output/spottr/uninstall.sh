#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spottr_token'
wp option delete 'spottr_public_keys'
wp option delete 'spottr_userid'
wp option delete 'spottr_pkt'
wp option delete 'spottr_content_imported'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spottr_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spottr_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spottr_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spottr_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spottr_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spottr_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spottr_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spottr_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spottr_term_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spottr_term_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spottr_term_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spottr_term_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spottr_term_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spottr_term_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spottr_term_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spottr_term_image_url'"
