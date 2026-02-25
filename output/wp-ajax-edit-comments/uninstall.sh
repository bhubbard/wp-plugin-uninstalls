#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajax-edit-comments_security_key_count'
wp option delete 'wordpress_api_key'
wp option delete 'aec_dependency_upload_dir'
wp option delete 'WPAjaxEditAuthoruserOptions'
wp option delete 'WPAjaxEditAuthoruser_options'
wp option delete 'WPAjaxEditComments20'

