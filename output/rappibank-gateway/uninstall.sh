#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rppbr_api_id'
wp option delete 'rppbr_api_key'
wp option delete 'woocommerce_version'
wp option delete 'rppbr_activation_redirect'

