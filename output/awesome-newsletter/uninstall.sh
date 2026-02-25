#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aw_title'
wp option delete 'aw_placeholder'
wp option delete 'aw_incorrect'
wp option delete 'aw_already_exist'
wp option delete 'aw_register_success'
wp option delete 'aw_header_name'
wp option delete 'aw_header_email'

