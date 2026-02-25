#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss_just_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_%'"
wp option delete 'ss_version'
wp option delete 'ss_shopsite_url'
wp option delete 'ss_config_type'
wp option delete 'ss_media_url'
wp option delete 'ss_config_dump'
wp option delete 'ss_clientid'
wp option delete 'ss_secretkey'
wp option delete 'ss_code'
wp option delete 'ss_authorizationurl'
wp option delete 'ss_identifier'
wp option delete 'ss_remember_search'
wp option delete 'ss_remembered_search_string'

