#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultimate_portfolio_form_data'
wp option delete 'ultimate_portfolio_default_image_id'

# Delete Transients
wp transient delete 'ultimate_portfolio_plugin_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultimate_portfolio_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultimate_portfolio_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultimate_portfolio_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultimate_portfolio_shortcodes'"
