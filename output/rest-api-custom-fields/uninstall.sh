#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'integromat_api_options_%'"
wp option delete 'integromat_api_options_comment'
wp option delete 'integromat_api_options_post'
wp option delete 'integromat_api_options_term'
wp option delete 'integromat_api_options_user'

