#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frontis_interaction_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_interactionEditorTimestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_interactionEditorTimestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_interactionEditorTimestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_interactionEditorTimestamp'"
