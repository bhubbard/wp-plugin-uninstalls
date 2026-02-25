#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_product_cat'
wp option delete 'HD_BCS_db_version'
wp option delete 'hd_bcs_options'

