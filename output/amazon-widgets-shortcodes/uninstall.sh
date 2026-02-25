#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awshortcode_region'
wp option delete 'awshortcode_tracking_id'
wp option delete 'awshortcode_inline_documentation'
wp option delete 'awshortcode_align'
wp option delete 'awshortcode_feed'
wp option delete 'awshortcode_strict_standards'
wp option delete 'awshortcode_context_links'
wp option delete 'awshortcode_product_preview'
wp option delete 'awshortcode_disabled_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'awshortcode_%'"
wp option delete 'awshortcode_tracking_image'

