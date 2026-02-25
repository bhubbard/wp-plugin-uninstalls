#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'
wp option delete 'yutu_version'

