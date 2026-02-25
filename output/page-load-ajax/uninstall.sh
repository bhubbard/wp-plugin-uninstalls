#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pla_title'
wp option delete 'pla_content'
wp option delete 'rewrite_rules'
wp option delete 'pla_type'
wp option delete 'pla_menu'
wp option delete 'pla_update'

