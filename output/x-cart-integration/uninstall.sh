#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xcart_image_box_size'
wp option delete 'xcart_store_url'
wp option delete 'xcart_template'
wp option delete 'xcart_sso_key'
wp option delete 'xcart_store_page_id'

