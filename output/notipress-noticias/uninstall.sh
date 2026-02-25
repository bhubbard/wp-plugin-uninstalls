#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ntpmx_new_content'
wp option delete 'ntpmx_api'
wp option delete 'ntpmx_rich_text'
wp option delete 'ntpmx_links'
wp option delete 'ntpmx_source'
wp option delete 'ntpmx_show_rows'
wp option delete 'ntpmx_clean_rows_in_days'
wp option delete 'ntpmx_date_activation'
wp option delete 'ntpmx_version'
wp option delete 'ntpmx_sku'
wp option delete 'ntpmx_product'
wp option delete 'ntpmx_date_install'
wp option delete 'ntpmx_date_update'
wp option delete 'ntpmx_minutes'
wp option delete 'ntpmx_qty'
wp option delete 'ntpmx_customer_id'
wp option delete 'ntpmx_sku_name'
wp option delete 'ntpmx_last_check'

# Clear Cron Jobs
wp cron event delete 'ntpmx_cron'

