#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yektanetaffiliate_version'
wp option delete 'yektanetaffiliate_db_version'
wp option delete 'yektanetaffiliate_settings'
wp option delete 'redirect_after_activation_option'
wp option delete 'YEKTANETAFFILIATE_DB_VERSION'
wp option delete 'YEKTANETAFFILIATE_VERSION'

