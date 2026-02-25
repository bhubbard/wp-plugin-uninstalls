#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiev_activated_Plugin'
wp option delete 'diev_view_type'
wp option delete 'diev_excluded_tax_label'
wp option delete 'diev_included_tax_label'
wp option delete 'diev_font_size'
wp option delete 'diev_font_weight'
wp option delete 'diev_font_color'
wp option delete 'diev_shop_page'
wp option delete 'diev_archive_page'
wp option delete 'diev_single_page'

