#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vkssfl_search_text'
wp option delete 'vkssfl_default_cat'
wp option delete 'vkssfl_excluded_cats'
wp option delete 'vkssfl_clean_excluded_cats'
wp option delete 'vkssfl_cat_text'
wp option delete 'vkssfl_cat_style'

