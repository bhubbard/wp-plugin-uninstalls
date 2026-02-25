#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdg_specific_version_name'
wp option delete 'wpdg_download_url'
wp option delete 'wpdg_edit_download_url'

