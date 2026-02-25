#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cs_remove_category_base_rewrite_rules_flush'
wp option delete 'rewrite_rules'

