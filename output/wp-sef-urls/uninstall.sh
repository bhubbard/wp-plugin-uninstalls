#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_sefurls_date_structure'
wp option delete 'wp_sefurls_author_structure'
wp option delete 'wp_sefurls_page_structure'
wp option delete 'wp_sefurls_category_slug'

