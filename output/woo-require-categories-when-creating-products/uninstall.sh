#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_required_taxonomies_post_types'
wp option delete 'woocommerce_required_taxonomies_taxonomies'
wp option delete 'woocommerce_required_taxonomies_error_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_required_taxonomies_%'"

