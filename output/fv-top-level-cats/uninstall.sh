#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fv_top_level_categories_rewrite_rules_flush'
wp option delete 'rewrite_rules'
wp option delete 'fv_top_level_cats'

