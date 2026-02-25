#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'debug_bar_rewrite_rules_installed'
wp option delete 'debug_bar_rewrite_rules_filters_list'
wp option delete 'rewrite_rules'

