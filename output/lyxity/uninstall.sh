#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lyxity_api_key'
wp option delete 'lyxity_days'
wp option delete 'lyxity_wp_api_url'
wp option delete 'lyxity_wp_username'
wp option delete 'lyxity_wp_password'
wp option delete 'lyxity_article_status'
wp option delete 'lyxity_article_length'
wp option delete 'lyxity_default_language'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_lyxity_async_%' OR option_name LIKE '_site_transient_lyxity_async_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
