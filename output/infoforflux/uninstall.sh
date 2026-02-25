#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'infoforflux_name'
wp option delete 'infoforflux_expire_block'
wp option delete 'infoforflux_operator_port'
wp option delete 'infoforflux_theme'
wp option delete 'infoforflux_renew_reminder'
wp option delete 'infoforflux_renew_reminder_days'
wp option delete 'infoforflux_wp_repo'
wp option delete 'infoforflux_mysql_repo'
wp option delete 'infoforflux_mysql_nologbin'
wp option delete 'infoforflux_operator_repo'
wp option delete 'infoforflux_block_height'

# Delete Transients
wp transient delete 'infoforflux_expiration_notice_dismissed'

