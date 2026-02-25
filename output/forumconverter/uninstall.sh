#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fc_src_hostname'
wp option delete 'fc_src_databasename'
wp option delete 'fc_src_username'
wp option delete 'fc_src_password'
wp option delete 'fc_src_type'
wp option delete 'fc_src_version'
wp option delete 'fc_src_prefix'
wp option delete 'fc_src_upload_path'
wp option delete 'fc_src_avatar_path'
wp option delete 'fc_dst_type'
wp option delete 'fc_dst_version'
wp option delete 'fc_dst_use_bbcode_lite'
wp option delete 'fc_dst_hostname'
wp option delete 'fc_dst_databasename'
wp option delete 'fc_dst_username'
wp option delete 'fc_dst_password'
wp option delete 'fc_dst_prefix'
wp option delete 'fc_op_method'
wp option delete 'fc_dst_upload_path'

