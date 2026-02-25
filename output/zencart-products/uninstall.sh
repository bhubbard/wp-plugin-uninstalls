#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zenfpd_dbuser'
wp option delete 'zenfpd_dbpwd'
wp option delete 'zenfpd_dbname'
wp option delete 'zenfpd_dbhost'
wp option delete 'zenfpd_prefix'
wp option delete 'zenfpd_image_width'
wp option delete 'zenfpd_image_height'
wp option delete 'zenfpd_store_url'
wp option delete 'zenfpd_prod_img_folder'
wp option delete 'zenfpd_new_product_days'

