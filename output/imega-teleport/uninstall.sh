#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imegateleport_error'
wp option delete 'imegateleport-settings-fullname'
wp option delete 'imegateleport-settings-kod'
wp option delete 'imegateleport-settings-postinstall'
wp option delete 'imegateleport-settings-article'
wp option delete 'imegateleport-settings-fulldesc'
wp option delete 'imegateleport-settings-warehouse-active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'imegateleport-settings-%'"
wp option delete 'imegateleport_stat_groups'
wp option delete 'imegateleport_stat_groups_replace'
wp option delete 'imegateleport_stat_goods'
wp option delete 'imegateleport_stat_goods_replace'
wp option delete 'imegateleport_stat_date'
wp option delete 'imegateleport-settings-max-body-size'
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_version'
wp option delete 'imegateleport_progress'
wp option delete 'imegateleport_complete'
wp option delete 'imegateleport_files'
wp option delete 'imegateleport-settings-warehouse'
wp option delete 'imegateleport-settings-zip'
wp option delete 'imegateleport_query'

