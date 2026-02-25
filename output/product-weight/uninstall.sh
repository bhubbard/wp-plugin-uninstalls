#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'test_db_version'
wp option delete 'woocommerce_weight_unit'

