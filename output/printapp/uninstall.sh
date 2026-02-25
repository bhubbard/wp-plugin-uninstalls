#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'print_app_domain_key'
wp option delete 'print_app_secret_key'
wp option delete 'print_app_cust_download_link'

