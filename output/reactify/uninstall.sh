#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reactify_reaction_title'
wp option delete 'reactify_reaction_title_enable'
wp option delete 'reactify_selected_reaction_type'
wp option delete 'reactify_custom_emojis'
wp option delete 'reactify_reaction_title_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reactify_disable_reactions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reactify_disable_reactions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reactify_disable_reactions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reactify_disable_reactions'"
