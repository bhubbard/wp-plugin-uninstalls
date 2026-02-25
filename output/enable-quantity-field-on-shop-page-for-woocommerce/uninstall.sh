#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'istwqfs_qty_field_enable'
wp option delete 'istwqfs_qty_label_enable'
wp option delete 'istwqfs_quantity_label'
wp option delete 'istwqfs_qty_label_font_color'
wp option delete 'istwqfs_qty_label_font_weight'
wp option delete 'istwqfs_qty_label_font_size'
wp option delete 'istwqfs_product_added_message'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%istwqfserror' OR option_name LIKE '_site_transient_%istwqfserror'"

