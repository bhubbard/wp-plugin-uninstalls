#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'responder_pojo_responder_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'responder_pojo_responder_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'responder_pojo_responder_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'responder_pojo_responder_values'"
