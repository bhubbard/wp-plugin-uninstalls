#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mn_title'
wp option delete 'mn_placeholder'
wp option delete 'mn_incorrect'
wp option delete 'mn_already_exist'
wp option delete 'mn_register_success'
wp option delete 'mn_header_name'
wp option delete 'mn_header_email'

