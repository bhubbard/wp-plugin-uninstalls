#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmk_portfolio_templates'
wp option delete 'wpmk_portfolio_current_templates'
wp option delete 'wpmk_portfolio_enable_filter'
wp option delete 'wpmk_portfolio_filter_sort'
wp option delete 'wpmk_portfolio_template_css'
wp option delete 'wpmk_portfolio_animate_status'
wp option delete 'wpmk_portfolio_current_animate'
wp option delete 'wpmk_portfolio_current_animate_delay'
wp option delete 'wpmk_portfolio_current_animate_speed'
wp option delete 'wpmk_portfolio_animate'
wp option delete 'wpmk_portfolio_animate_delay'
wp option delete 'wpmk_portfolio_animate_speed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmk_portfolio_project'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmk_portfolio_project'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmk_portfolio_project'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmk_portfolio_project'"
