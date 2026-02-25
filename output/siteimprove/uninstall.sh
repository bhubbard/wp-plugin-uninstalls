#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siteimprove_prepublish_allowed'
wp option delete 'siteimprove_prepublish_enabled'
wp option delete 'siteimprove_token'
wp option delete 'siteimprove_overlayjs_file'
wp option delete 'siteimprove_disable_new_version'
wp option delete 'siteimprove_api_key'
wp option delete 'siteimprove_public_url'
wp option delete 'siteimprove_ignore_path_segments'
wp option delete 'siteimprove_api_username'
wp option delete 'siteimprove_dev_mode'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_siteimprove_url_%' OR option_name LIKE '_site_transient_siteimprove_url_%'"

