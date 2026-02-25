#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themerain_custom_fonts_counter'
wp option delete 'themerain_custom_fonts'
wp option delete 'themerain_adobe_fonts'
wp option delete 'themerain_adobe_fonts_id'
wp option delete 'themerain_portfolio_slug'

