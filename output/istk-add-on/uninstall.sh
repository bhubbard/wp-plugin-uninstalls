#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'istk_add_on_portfolio_data_description'
wp option delete 'istk_add_on_portfolio_category_display_footer'
wp option delete 'istk_add_on_portfolio_category_display_footer_in_front'
wp option delete 'istk_add_on_portfolio_category_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'istk_add_on_category_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'istk_add_on_category_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'istk_add_on_category_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'istk_add_on_category_image_id'"
