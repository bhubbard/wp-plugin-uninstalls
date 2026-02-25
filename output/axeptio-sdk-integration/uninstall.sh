#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xpwp_sdk_active'
wp option delete 'xpwp_client_id'
wp option delete 'xpwp_version'
wp option delete 'axeptio_versions'
wp option delete 'axeptio/sdk_proxy_key'
wp option delete 'axeptio/need_flush'
wp option delete 'axeptio_plugin_activated'
wp option delete 'axeptio_settings'
wp option delete 'axeptio/version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'axeptio_disable_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'axeptio_disable_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'axeptio_disable_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'axeptio_disable_notice'"
