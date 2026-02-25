#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'melibuPlugin_get_syntaxhighlighter_shema'
wp option delete 'melibuPlugin_get_syntaxhighlighter_css'
wp option delete 'melibuPlugin_get_syntaxhighlighter_regexp'
wp option delete 'melibuPlugin_get_syntaxhighlighter_regexp_settings'
wp option delete 'melibuPlugin_get_syntaxhighlighter_options'
wp option delete 'melibuPlugin_get_syntaxhighlighter_colors'
wp option delete 'melibuPlugin_get_syntaxhighlighter_colors_activate'
wp option delete 'melibuPlugin_syntaxhighlighter_get_syntax_copy'
wp option delete 'melibu-plugin-syntax-version'
wp option delete 'melibu-plugin-syntax-db-version'
wp option delete 'melibu_plugin_get_syntaxhighlighter_regexp_setting'
wp option delete 'melibu-plugin-syntax-logo-get'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'melibu_syntax_post_type_%'"
wp option delete 'melibuPlugin_get_syntaxhighlihter_shema'
wp option delete 'mb-author-box-get-setting-group'

# Delete Transients
wp transient delete 'melibu-plugin-syntax-page-activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'melibu_syntax_post_current'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'melibu_syntax_post_current'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'melibu_syntax_post_current'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'melibu_syntax_post_current'"
