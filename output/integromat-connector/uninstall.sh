#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iwc-logging-enabled'
wp option delete 'iwc_api_permissions_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'iwc_permission_%'"
wp option delete 'iwc_strict_file_validation'
wp option delete 'iwc_allowed_file_extensions'
wp option delete 'iwc_log_encryption_key'
wp option delete 'iwc_max_payload_size'
wp option delete 'iwc_rate_limit_enabled'
wp option delete 'iwc_rate_limit_requests'
wp option delete 'iwc_payload_limit_enabled'
wp option delete 'iwc_sanitize_post_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'integromat_api_options_%'"
wp option delete 'iwc_plugin_version'
wp option delete 'iwc_log_security_events'
wp option delete 'integromat_api_options_taxonomy'
wp option delete 'integromat_api_options_comment'
wp option delete 'integromat_api_options_post'
wp option delete 'integromat_api_options_term'
wp option delete 'integromat_api_options_user'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
