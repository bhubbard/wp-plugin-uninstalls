#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ext_db_type'
wp option delete 'ext_db_mdb2_path'
wp option delete 'ext_host'
wp option delete 'ext_db_port'
wp option delete 'ext_db'
wp option delete 'ext_table'
wp option delete 'ext_access_type'
wp option delete 'ext_db_user'
wp option delete 'ext_db_pw'
wp option delete 'ext_db_other_enc'
wp option delete 'ext_db_site_url'
wp option delete 'ext_db_error_msg'

