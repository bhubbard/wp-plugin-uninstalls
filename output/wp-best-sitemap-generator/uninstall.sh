#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbs_secret_update_option'
wp option delete 'wpbs_include_post_type_post'
wp option delete 'wpbs_include_post_type_page'

