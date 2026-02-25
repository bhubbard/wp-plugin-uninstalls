#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sitemap_post_list'
wp option delete 'sitemap_cat_list'
wp option delete 'sitemap_hide_post'
wp option delete 'sitemap_hide_cat'
wp option delete 'cst_settings_arr'
wp option delete 'cst_admin_css_setting'
wp option delete 'cst_sitemap_column_setting'

