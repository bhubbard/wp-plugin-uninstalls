#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcb_flush_rewrite_rules'
wp option delete 'Category_Prefix'

