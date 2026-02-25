#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opwp_allow_external_pages'
wp option delete 'opwp_allow_category_pages'
wp option delete 'opwp_allow_tag_pages'
wp option delete 'opwp_allow_author_pages'
wp option delete 'opwp_custom_rules'

