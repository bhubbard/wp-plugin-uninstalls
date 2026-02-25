#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'goods_catalog_yml_field1'
wp option delete 'gcYmlCours'
wp option delete 'gcYmlCPA'
wp option delete 'gcYmlCron'

# Clear Cron Jobs
wp cron event delete 'yml_goods_catalog_refresh'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gc_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gc_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gc_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gc_price'"
